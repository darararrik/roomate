# Review presentation layer

Дата: 2026-05-05

Scope: `lib/app`, `lib/widgets`, `lib/screens`, `lib/notifier`, `lib/di/feature`. Дополнительно отмечены data/domain блокеры, которые напрямую ломают presentation-флоу.

## TL;DR

1. Самые срочные места: auth и create-ad. Сейчас там есть fire-and-forget запросы, прямые repository-вызовы и переходы дальше без проверки результата.
2. Use case-слой уже начат нормально, но apartments/create-ad/auth/status все еще обходят его из presentation.
3. Локации пока неполные: города подтягиваются, но улицы в live возвращают пустой список, а в UI все еще есть hardcoded `omsk`.
4. Часть UI выглядит рабочей, но реально не влияет на backend: некоторые поля фильтра пока не мапятся в query.
5. Есть прототипные/моковые экраны и hardcoded русский текст, которые лучше либо удалить, либо пометить как legacy, либо довести до l10n.

## Где нужны use cases

| Приоритет | Место | Сейчас | Что добавить | Зачем |
|---|---|---|---|---|
| P0 | `lib/app/auth/notifier/auth_notifier.dart:51` | `openEnterCodeScreen()` дергает `authRepositoryProvider.signInByPhone()` без `await` и сразу открывает экран кода. | `RequestSmsCodeUseCase` | Навигация на ввод кода должна быть только после успешного ответа. Ошибка запроса SMS сейчас теряется. |
| P0 | `lib/app/auth/notifier/auth_notifier.dart:57` | `verifySms()` напрямую вызывает `authRepositoryProvider.verifySms()`. | `VerifySmsUseCase` | Вся логика результата авторизации должна быть тестируемой: новый пользователь, старый пользователь, ошибки, сохранение статуса. |
| P0 | `lib/app/auth/notifier/sms_notifier_provider.dart:33` | Resend timer вызывает `verifySms()`, а не повторную отправку SMS. | Использовать `RequestSmsCodeUseCase` в resend-флоу | Сейчас повторная отправка кода фактически неверная операция. |
| P0 | `lib/app/create_ad/notifier/create_ad_flow/create_ad_flow_notifier.dart:53` | `_submitForm()` не await-ится, после этого сразу `tabsRouter.setActiveIndex(step + 1)`. | `CreateAdUseCase` + async submit state | Экран успеха может открыться даже если объявление не создалось. |
| P0 | `lib/app/create_ad/notifier/ad_form/ad_form_notifier.dart:148` | `createAd()` напрямую вызывает repository и не возвращает ошибку. | `CreateAdUseCase` с `Either<RemoteException, ApartamentModel/void>` | UI должен уметь показать ошибку, оставить пользователя на confirmation step и не потерять форму. |
| P1 | `lib/app/spash/state/app_status_notifier.dart:1` | Presentation импортит `data/data.dart`, читает `TokenService` и `AppStatusStorageService`. | `ResolveAppStatusUseCase`, `MarkLoggedOutUseCase`, `MarkFormCompletedUseCase`, `MarkProfileCompletedUseCase` | Presentation не должен знать про token/storage. Это app/domain orchestration. |
| P1 | `lib/app/apartments/notifier/apartaments_notifier.dart:10` | Notifier напрямую читает `IApartamentsRepository`. | `FetchApartmentsUseCase` | Единая точка для query defaults, ошибок, будущей пагинации/сортировки. |
| P1 | `lib/app/overview/notifier/home_notifier.dart:13` | Home напрямую читает apartments repository и сам делает `take(5)`. | `FetchRecentApartmentsUseCase` или `FetchApartmentsUseCase(limit: 5)` | Recent list - отдельный сценарий, не UI-деталь. |
| P1 | `lib/app/apartments/notifier/apartament_filter_notifier.dart:9` | `filtersProvider` напрямую вызывает `fetchFilters()`. | `FetchApartmentFiltersUseCase` | Каталог фильтров переиспользуется, должен идти через domain use case. |
| P1 | `lib/app/create_ad/notifier/ad_form/ad_form_notifier.dart:10` | `getAdFormOptionsProvider` напрямую вызывает `fetchAdFormOptions()`. | `FetchAdFormOptionsUseCase` | Это каталог формы объявления, такой же reusable сценарий как filters/cities. |
| P1 | `lib/di/feature/location_providers.dart:16` | `cityStreetsProvider` напрямую читает `locationRepositoryProvider`. | `FetchCityStreetsUseCase` | По аналогии с `FetchCitiesUseCase`; потом туда ляжет city id/search query/cache policy. |
| P2 | `lib/app/favorites/state/favorites_notifier.dart:8` | Favorites живут только в памяти. | `FetchFavoritesUseCase`, `ToggleFavoriteApartmentUseCase` | Нужно, если избранное должно сохраняться между сессиями или жить на backend. |
| P2 | `lib/app/create_profile/state/create_profile_notifier.dart:50` | Создание профиля фактически `globalProfile.updateProfile()`. | Отдельный use case не обязателен; можно оставить `UpdateProfileUseCase` | Если backend даст отдельный `/profile/create`, тогда нужен `CreateProfileUseCase`. Сейчас отдельный use case будет лишним. |
| P2 | `lib/app/user_preferences/notifier/user_pref_notifier.dart:104` | Preferences сохраняются через `globalProfileProvider.notifier.updateProfile()`. | Отдельный use case не обязателен; текущий `UpdateProfileUseCase` подходит | Отдельный `SavePreferencesUseCase` нужен только если backend даст отдельный контракт/endpoint. |

## Use cases, которые я бы завел сейчас

```text
domain/lib/use_case/request_sms_code_use_case.dart
domain/lib/use_case/verify_sms_use_case.dart
domain/lib/use_case/resolve_app_status_use_case.dart
domain/lib/use_case/mark_app_status_use_case.dart
domain/lib/use_case/fetch_apartments_use_case.dart
domain/lib/use_case/fetch_recent_apartments_use_case.dart
domain/lib/use_case/fetch_apartment_filters_use_case.dart
domain/lib/use_case/fetch_ad_form_options_use_case.dart
domain/lib/use_case/create_ad_use_case.dart
domain/lib/use_case/fetch_city_streets_use_case.dart
```

DI:

```text
lib/di/use_case/auth_use_case_providers.dart
lib/di/use_case/startup_use_case_providers.dart
lib/di/use_case/apartments_use_case_providers.dart
lib/di/use_case/create_ad_use_case_providers.dart
lib/di/use_case/location_use_case_providers.dart
```

Не надо делать use case для чистого UI: открыть bottom sheet, переключить chip, локально подсветить radio, перейти на экран. Это остается в notifier/widget.

## Архитектурные замечания

### 1. Cross-notifier calls

Сейчас есть вызовы notifier из notifier:

- `ApartamentFilterNotifier.apply()` вызывает `apartamentsProvider.notifier.fetchWithFilter()` (`lib/app/apartments/notifier/apartament_filter_notifier.dart:89`).
- `AuthNotifier` дергает `appStatusProvider` и `globalProfileProvider` (`lib/app/auth/notifier/auth_notifier.dart:63`, `:66`, `:67`).
- `CreateProfileNotifier` и `UserPrefNotifier` сохраняют через `globalProfileProvider`.

Это не всегда ошибка. Для app-flow orchestration это допустимо. Но если один notifier становится бизнес-API для другого, лучше поднять операцию в use case или отдельный coordinator. Особенно это касается filters -> apartments: список объявлений логичнее получать через `FetchApartmentsUseCase(filter)`, а не заставлять фильтр знать про apartments notifier.

### 2. Presentation знает про data layer

`AppStatusNotifier` импортит `package:data/data.dart` и работает с `TokenService`/`AppStatusStorageService` напрямую. Это главный слойный leak. Я бы вынес это первым после auth/create-ad.

### 3. Use case provider без `keepAlive`

Для use case provider обычный `Provider` без `keepAlive` нормален. Это фабрика легкого объекта. `keepAlive` нужен там, где кешируем результат запроса (`citiesProvider`, `filtersProvider`, `preferenceTagsCatalogProvider`) или shared singleton.

## Что не реализовано / что поправить

### P0

- `AuthNotifier.openEnterCodeScreen()` не await-ит `signInByPhone()` и не обрабатывает ошибку (`lib/app/auth/notifier/auth_notifier.dart:51`). Пользователь уйдет на ввод кода даже если SMS не отправилась.
- `SmsNotifier.resetTimer()` вызывает `verifySms()`, а должен заново запросить SMS (`lib/app/auth/notifier/sms_notifier_provider.dart:33`).
- Create-ad submit не await-ится (`lib/app/create_ad/notifier/create_ad_flow/create_ad_flow_notifier.dart:53`) и `createAd()` не возвращает ошибку (`lib/app/create_ad/notifier/ad_form/ad_form_notifier.dart:148`).
- `IApartamentsRepository.createAd()` возвращает `Future<void>`, поэтому UI не получает `RemoteException`. Лучше `Future<Either<RemoteException, void>>` или result-модель.

### P1

- Live-улицы не реализованы: `LocationRemoteDataSource.getStreetsForCity()` возвращает пустой список (`data/lib/datasources/remote/location_remote_datasource.dart:14`). Поэтому picker улиц в live сейчас пустой.
- Mock города не реализованы: `LocationCatalogMockDataSource.fetchCities()` кидает `UnimplementedError` (`data/lib/datasources/mocks/location_catalog_mock_datasource.dart:23`). При `kUseMocks = true` bottom sheet городов упадет.
- `LocationScreen` hardcodes `cityStreetsProvider('omsk')`, а search controller не влияет на список (`lib/screens/location_screen.dart:18`, `:23`).
- `OverviewScreen` в error state передает `stack`, а не `error`: `ErrorView(error: stack)` (`lib/app/overview/screens/overview_screen.dart:96`).
- `ProfileRepository.deleteProfile()` и `doVerification()` не реализованы (`data/lib/repository/profile_repository.dart:20`, `:26`).
- Часть фильтров в UI пока не доходит до backend: `districtIds`, `locationTitle`, `childrenAllowed`, `petsAllowed`. Это ок как временная договоренность, но визуально пользователь думает, что фильтр применился.

### P2

- Favorites хранятся только в memory provider. После перезапуска приложения они пропадут.
- `MainAppBar` и `RegionBottomSheet` используют fallback `Москва` строкой (`lib/widgets/app_bars/main_app_bar.dart:23`, `lib/widgets/sheets/region_bottom_sheet.dart:11`). Лучше единый default city provider/config + l10n title.
- В `profile_screen.dart` есть hardcoded строки: `Не выбран`, `Не выбраны`, `Сохраняем...`, `Редактирование этого пункта будет добавлено позже`. Их лучше вынести в l10n.
- В `create_profile_notifier.dart` validation messages hardcoded: `Имя обязательно`, `Фамилия обязательна`, `Введите корректный возраст...`. Это l10n.
- `lib/screens/auth_edit_*`, `about_group_screen.dart`, `chats_screen.dart`, `trait_bottom_sheet.dart`, `neighbour_card.dart` выглядят как legacy/prototype с mock-текстами. Их лучше либо удалить, либо явно вынести в sandbox/demo, чтобы они не воспринимались как production flow.
- `CreateAdMapper` помечен `@BackendOnly` и использует `OmskStreetsMockJson`. Это временный контракт data-layer, его надо убрать после нормальной backend-ручки создания объявления.
- `getAdFormOptionsProvider.requireValue` в шагах create-ad безопасен только пока все шаги всегда рендерятся внутри `CreateAdScreen` с guard на loading. Если шаг открыть отдельно, будет runtime exception.

## Рекомендуемый порядок работ

1. Auth: `RequestSmsCodeUseCase`, `VerifySmsUseCase`, await запроса SMS, правильный resend.
2. Create-ad: `CreateAdUseCase`, result/error model, async submit state, не переходить на finish при ошибке.
3. Apartments: `FetchApartmentsUseCase`, `FetchRecentApartmentsUseCase`, `FetchApartmentFiltersUseCase`, `FetchAdFormOptionsUseCase`.
4. App status/session: убрать `data` import из `AppStatusNotifier`, вынести token/storage orchestration.
5. Location: `FetchCityStreetsUseCase`, live endpoint улиц, city id/key вместо hardcoded `omsk`, локальный поиск улиц.
6. Дочистить l10n и legacy/mock screens.
7. После backend-готовности домапить оставшиеся фильтры в query и добавить invalidation/refetch после create-ad/favorite/city changes.

