# Объявления

## Быстрый сценарий для фронта

Обычный публичный сценарий поиска объявлений такой:

1. Получить список городов:

```http
GET /api/locations/cities
```

2. Получить справочники фильтров:

```http
GET /api/ads/filters
```

3. Если нужен поиск по адресу, получить подсказки:

```http
GET /api/locations/suggest?query=ленина
```

4. Запросить список объявлений:

```http
GET /api/ads?...фильтры...
```

Все эти ручки публичные. Токен не нужен.

## Источник правды

Swagger и этот файл должны описывать один и тот же контракт.

- Swagger показывает точную форму ручек, query params и request/response DTO.
- Этот файл объясняет, как фронту использовать ручки в реальном сценарии приложения.
- Если Swagger и `ADS.md` расходятся, сначала сверяем фактический backend-контракт, потом обновляем документацию.

## Публичные ручки

Публичны без авторизации:

- `GET /api/ads`
- `GET /api/ads/filters`
- `GET /api/ads/tags`
- `GET /api/locations/cities`
- `GET /api/locations/suggest`

Создание объявления требует токен:

```http
POST /api/ads
Authorization: Bearer access-token
```

Owner-экран тоже требует токен:

```http
GET /api/my/ads
Authorization: Bearer access-token
```

Избранное тоже требует токен:

```http
POST /api/ads/{ad_id}/favorite
DELETE /api/ads/{ad_id}/favorite
GET /api/my/favorite-ads
Authorization: Bearer access-token
```

## Получить города

```http
GET /api/locations/cities
```

Ответ:

```json
[
  {
    "id": 1,
    "title": "Омск",
    "fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
    "region": "Омская область"
  },
  {
    "id": 2,
    "title": "Новосибирск",
    "fias_id": "c2deb16a-0330-4f05-821f-1d09c93331e6",
    "region": "Новосибирская область"
  }
]
```

Для поиска объявлений фронт берёт `fias_id` выбранного города и отправляет его как `city_fias_id`.

Пример:

```http
GET /api/ads?city_fias_id=140e31da-27bf-4519-9ea0-6185d681d44e
```

## Получить подсказки адреса

```http
GET /api/locations/suggest?query=ленина
```

Ручка нужна для autocomplete при выборе адреса.

Ответ:

```json
[
  {
    "value": "Омск, улица Ленина, 10",
    "unrestricted_value": "644099, Омская область, г Омск, ул Ленина, д 10",
    "country": "Россия",
    "region": "Омская область",
    "city": "г Омск",
    "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
    "district": "Центральный",
    "street": "ул Ленина",
    "street_fias_id": "demo-street-fias-lenina",
    "house": "10",
    "house_fias_id": "demo-house-fias-lenina-10",
    "geo_lat": 54.9893,
    "geo_lon": 73.3682
  }
]
```

Фронт показывает пользователю `value`, а после выбора адреса отправляет при создании объявления весь объект целиком в `address_details`.

Если задан `DADATA_API_KEY`, backend возвращает реальные подсказки DaData. Если ключ не задан, backend возвращает демо-подсказки.

## Получить фильтры для списка объявлений

```http
GET /api/ads/filters
```

Эта ручка нужна, чтобы фронт понял, какие `id` отправлять в `GET /api/ads`.

Ответ:

```json
{
  "rent_goal": [
    { "id": 1, "title": "Аренда" },
    { "id": 2, "title": "Обмен" }
  ],
  "property_type": [
    { "id": 30, "title": "Квартира" },
    { "id": 31, "title": "Апартаменты" },
    { "id": 32, "title": "Комната" },
    { "id": 34, "title": "Дом" },
    { "id": 35, "title": "Коттедж" },
    { "id": 36, "title": "Таунхаус" }
  ],
  "rooms_count": [
    { "id": 40, "title": "Студия" },
    { "id": 41, "title": "1" },
    { "id": 42, "title": "2" },
    { "id": 43, "title": "3" },
    { "id": 44, "title": "4" },
    { "id": 46, "title": "5+" }
  ],
  "rent_duration": [
    { "id": 3, "title": "Долгосрочная" },
    { "id": 4, "title": "Посуточно" }
  ]
}
```

Важно:

- `rooms_count.id = 46` в фильтре означает `5+` и на backend ищет объявления с `5` и `6+`.
- `rent_duration` в этой ручке для публичного списка фактически соответствует `rent_period`.

## Получить справочники для формы создания

```http
GET /api/ads/tags
```

Эта ручка нужна для формы создания объявления. Она шире, чем `GET /api/ads/filters`.

В ответе приходят группы:

- `rent_goal`
- `rent_period`
- `who_can_rent`
- `premises_type`
- `property_type`
- `rooms_count`
- `layout`
- `renovation`
- `elevators`
- `balconies`
- `furniture`
- `amenities`
- `bathroom`
- `appliances`
- `stove`
- `currency`
- `prepayment`
- `rent_duration`
- `rent_conditions`
- `contact_method`
- `cities`
- `districts`

Пример сокращённого ответа:

```json
{
  "rent_goal": [
    { "id": 1, "title": "Аренда" },
    { "id": 2, "title": "Обмен" }
  ],
  "property_type": [
    { "id": 30, "title": "Квартира" },
    { "id": 31, "title": "Апартаменты" }
  ],
  "cities": [
    { "id": 1, "title": "Омск" }
  ],
  "districts": [
    { "id": 1, "city_id": 1, "title": "Центральный" },
    { "id": 2, "city_id": 1, "title": "Советский" }
  ]
}
```

## Получить список объявлений

```http
GET /api/ads
```

Авторизация не нужна. Если передать Bearer token, backend дополнительно посчитает `is_favorite` для текущего пользователя. Без токена `is_favorite` всегда будет `false`.

### Query params

Пагинация:

- `limit=20`
- `offset=0`

Сортировка:

- `sort_by=popularity|price|publish_date`
- `sort_order=asc|desc`

Фильтры:

- `city_id=1`
- `goal_id=1`
- `city_fias_id=140e31da-27bf-4519-9ea0-6185d681d44e`
- `street_fias_id=demo-street-fias-lenina`
- `house_fias_id=demo-house-fias-lenina-10`
- `property_type_ids=30,31`
- `rooms_count_ids=41,42`
- `min_price=30000`
- `max_price=80000`
- `rent_duration_id=161`
- `district=Центральный`
- `address_query=ленина`

Примеры:

```http
GET /api/ads?sort_by=price&sort_order=asc
GET /api/ads?sort_by=price&sort_order=desc
GET /api/ads?sort_by=publish_date&sort_order=desc
GET /api/ads?sort_by=popularity&sort_order=desc
GET /api/ads?city_fias_id=140e31da-27bf-4519-9ea0-6185d681d44e&property_type_ids=30,31&min_price=30000&max_price=80000
GET /api/ads?district=Центральный&rooms_count_ids=42,46
```

Правила:

- все фильтры необязательны;
- если параметр не передан или равен `0`, backend его не применяет;
- сортировка применяется в SQL до `limit` и `offset`;
- `popularity` сейчас считается по `total_viewers`, то есть по просмотрам.

### Как работают адресные фильтры

- `city_fias_id`, `street_fias_id`, `house_fias_id` — точные фильтры по DaData-полям.
- `district` — точный фильтр по району без учёта регистра.
- `address_query` — запасной текстовый поиск по `address`, `unrestricted_address`, `city`, `district`, `street`, `house`.

### Ответ

```json
{
  "total_count": 87,
  "items": [
    {
      "id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
      "image_urls": [
        "https://example.com/image.jpg"
      ],
      "is_favorite": false,
      "price": "45 000",
      "rooms_count": "2",
      "area": "54.5",
      "floor": 7,
      "total_floor": 16,
      "address": "Омск, улица Ленина, 10"
    }
  ]
}
```

## Получить мои объявления

```http
GET /api/my/ads
Authorization: Bearer access-token
```

Ручка нужна для owner-экрана: она возвращает только объявления текущего пользователя.

Query params:

- `status=active`
- `status=on_moderation`
- `status=archived`

Если `status` не передан, backend возвращает все поддерживаемые статусы в порядке:

```text
active -> on_moderation -> archived
```

Внутри статуса более актуальные объявления идут выше.

Примеры:

```http
GET /api/my/ads
GET /api/my/ads?status=active
GET /api/my/ads?status=archived
```

Ответ:

```json
[
  {
    "id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
    "title": "Уютная квартира рядом с центром",
    "price": "45 000",
    "address": "Омск, улица Ленина, 10",
    "image_urls": [
      "https://example.com/image.jpg"
    ],
    "publish_date": "2026-04-15T10:00:00Z",
    "total_viewers": "148",
    "status": "active",
    "application_status": "pending",
    "created_at": "2026-04-15T10:00:00Z",
    "updated_at": "2026-04-15T12:00:00Z",
    "main_phone": "+79507973860"
  }
]
```

`application_status` показывает состояние заявок по объявлению для owner-экрана:

- `pending` - есть хотя бы одна новая заявка;
- `accepted` - новых заявок нет, но есть принятая заявка;
- `rejected` - были только отклоненные заявки;
- `null` - заявок по объявлению нет.

## Избранные объявления

Этот flow относится только к обычным активным объявлениям аренды из `/api/ads`.

Не входит в этот flow:

- избранные группы;
- matching;
- smart-search;
- заявки.

### Добавить в избранное

```http
POST /api/ads/{ad_id}/favorite
Authorization: Bearer access-token
```

Успешный ответ:

```json
{
  "ad_id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
  "is_favorite": true
}
```

Повторный `POST` идемпотентный: дубль не создается, backend снова вернет успешный ответ с `is_favorite: true`.

### Удалить из избранного

```http
DELETE /api/ads/{ad_id}/favorite
Authorization: Bearer access-token
```

Успешный ответ:

```json
{
  "ad_id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
  "is_favorite": false
}
```

Повторный `DELETE` идемпотентный: если объявления уже нет в избранном, backend все равно вернет успешный ответ с `is_favorite: false`.

### Получить мои избранные объявления

```http
GET /api/my/favorite-ads
Authorization: Bearer access-token
```

Ответ использует тот же формат краткой карточки, что и `GET /api/ads`:

```json
{
  "total_count": 1,
  "items": [
    {
      "id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
      "image_urls": [
        "https://example.com/image.jpg"
      ],
      "is_favorite": true,
      "price": "45 000",
      "rooms_count": "2",
      "area": "54.5",
      "floor": 7,
      "total_floor": 16,
      "address": "Омск, улица Ленина, 10"
    }
  ]
}
```

В `GET /api/my/favorite-ads` все элементы всегда приходят с `is_favorite: true`.

Если объявление не существует, неактивно или является внутренней квартирой группы (`GROUP_APARTMENT`), add/remove вернут стандартную ошибку backend.

## Создать объявление

```http
POST /api/ads
Authorization: Bearer access-token
```

Request body:

```json
{
  "address_details": {
    "value": "Омск, улица Ленина, 10",
    "unrestricted_value": "644099, Омская область, г Омск, ул Ленина, д 10",
    "country": "Россия",
    "region": "Омская область",
    "city": "г Омск",
    "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
    "district": "Центральный",
    "street": "ул Ленина",
    "street_fias_id": "demo-street-fias-lenina",
    "house": "10",
    "house_fias_id": "demo-house-fias-lenina-10",
    "geo_lat": 54.9893,
    "geo_lon": 73.3682
  },
  "rent_goal_id": 1,
  "rent_period_id": 3,
  "who_can_rent_ids": [10, 13],
  "premises_type_id": 20,
  "property_type_id": 30,
  "rooms_count_id": 42,
  "layout_id": 51,
  "renovation_id": 62,
  "elevators_id": 70,
  "balconies_id": 80,
  "furniture_id": 90,
  "amenities_ids": [100, 103],
  "bathroom_ids": [111],
  "appliances_ids": [120, 122, 123],
  "stove_id": 131,
  "currency_id": 140,
  "prepayment_id": 151,
  "rent_duration_id": 161,
  "rent_conditions_ids": [170, 171],
  "contact_method_id": 180,
  "selected_currency": {
    "code": "RUB",
    "symbol": "RUB"
  },
  "cost": 45000,
  "deposit": 45000,
  "apartment_area": 54.5,
  "floor": 7,
  "total_floors": 16,
  "apartment_number": 42,
  "title": "Уютная квартира рядом с центром",
  "description": "Светлая квартира, рядом остановка и магазины.",
  "image_urls": ["https://example.com/image.jpg"],
  "main_phone": "+79507973860",
  "additional_number": "+79507973861"
}
```

Успешный ответ:

```json
{
  "id": "0a0b62e8-d9ce-4a7b-821b-dab4afca9f97",
  "status": "ACTIVE",
  "created_at": "2026-04-14T16:20:00Z"
}
```

### Важно по адресу

Для новой логики фронту лучше передавать только `address_details`.

Поля:

- `city_id`
- `district`
- `address`

можно считать legacy-полями для обратной совместимости. Backend умеет работать без них, если пришёл нормальный `address_details`.

### Важно по валидации

Если фронт отправит id тега, которого нет в справочниках `GET /api/ads/tags`, backend вернёт `400 Bad Request`.

## Заявки по объявлениям

Этот flow относится только к обычным объявлениям аренды из `/api/ads`. Заявки в группы живут отдельно через `POST /api/groups/{group_id}/apply`.

Все ручки ниже требуют Bearer token.

### Отправить заявку на объявление

```http
POST /api/ads/{ad_id}/apply
Authorization: Bearer access-token
```

Успешный ответ:

```json
{
  "id": "00000000-0000-0000-0000-000000001001",
  "ad_id": "00000000-0000-0000-0000-000000002001",
  "status": "pending",
  "created_at": "2026-05-15T00:00:00Z"
}
```

Важные ошибки:

- `404 Not Found` — объявление не найдено, не активно или это не обычное rental-объявление.
- `409 Conflict` — пользователь уже отправлял заявку на это объявление.
- `409 Conflict` — владелец объявления пытается отправить заявку сам себе.

### Получить входящие заявки собственника

```http
GET /api/my/ad-applications
GET /api/my/ad-applications?status=pending
GET /api/my/ad-applications?status=accepted
GET /api/my/ad-applications?status=rejected
```

Ответ — простой массив для экрана списка:

```json
[
  {
    "id": "00000000-0000-0000-0000-000000001001",
    "status": "pending",
    "created_at": "2026-05-15T00:00:00Z",
    "tenant": {
      "id": "00000000-0000-0000-0000-000000003001",
      "first_name": "Алексей",
      "last_name": "Петров",
      "age": 25,
      "gender": "male",
      "city": "Омск",
      "photo": "https://example.com/avatar.jpg"
    },
    "ad": {
      "id": "00000000-0000-0000-0000-000000002001",
      "title": "Уютная квартира рядом с центром",
      "price": "45 000",
      "rooms_count": "2",
      "area": "54.5",
      "floor": 7,
      "total_floor": 16,
      "address": "Омск, улица Ленина, 10",
      "image_urls": ["https://example.com/image.jpg"]
    }
  }
]
```

В списке телефон арендатора не отдается.

### Получить детальную заявку

```http
GET /api/my/ad-applications/{application_id}
```

Ответ:

```json
{
  "id": "00000000-0000-0000-0000-000000001001",
  "status": "pending",
  "created_at": "2026-05-15T00:00:00Z",
  "updated_at": "2026-05-15T00:00:00Z",
  "tenant": {
    "id": "00000000-0000-0000-0000-000000003001",
    "first_name": "Алексей",
    "last_name": "Петров",
    "age": 25,
    "gender": "male",
    "city": "Омск",
    "photo": "https://example.com/avatar.jpg"
  },
  "ad": {
    "id": "00000000-0000-0000-0000-000000002001",
    "title": "Уютная квартира рядом с центром",
    "price": "45 000",
    "rooms_count": "2",
    "area": "54.5",
    "floor": 7,
    "total_floor": 16,
    "address": "Омск, улица Ленина, 10",
    "image_urls": ["https://example.com/image.jpg"]
  },
  "tenant_profile": {
    "about": "Спокойный и ответственный арендатор",
    "preferences": {
      "communication": [11],
      "sleep": [20],
      "employment": [30],
      "bad_habits": [30],
      "guests": [50],
      "noise_level": [60],
      "cleaning": [70],
      "pets": [80],
      "pets_attitude": [90]
    }
  }
}
```

Телефон появляется только после принятия заявки:

```json
{
  "tenant": {
    "id": "00000000-0000-0000-0000-000000003001",
    "first_name": "Алексей",
    "phone": "+79507973860"
  }
}
```

### Принять или отклонить заявку

```http
POST /api/my/ad-applications/{application_id}/accept
POST /api/my/ad-applications/{application_id}/reject
```

Обе ручки возвращают обновленную детальную заявку.

Статусы:

- `pending` — заявка создана и ждет решения собственника.
- `accepted` — собственник принял заявку; в detail можно показать телефон арендатора.
- `rejected` — собственник отклонил заявку; телефон не раскрывается.

Если заявка уже `accepted` или `rejected`, повторное принятие/отклонение вернет `409 Conflict`.
