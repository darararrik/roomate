# Группы

Группы нужны для сценария "Найти соседа": владелец группы описывает квартиру и условия проживания, а другие пользователи потом смогут подбираться к этой группе по совместимости.

## Как устроено

При создании группы backend создает две связанные сущности:

- внутреннюю квартиру в `rental_ads` с `ad_type = GROUP_APARTMENT`;
- группу в `groups`, которая ссылается на эту квартиру через `rental_ad_id`.

Это не привязка к уже опубликованному объявлению собственника. Пользователь, который создает группу, сам заполняет характеристики квартиры в форме создания группы.

Внутренние квартиры групп не попадают в обычные ручки объявлений:

- `GET /api/ads` возвращает только `ad_type = RENTAL`;
- `GET /api/ads/{id}` открывает только `ad_type = RENTAL`;
- `GET /api/ads/my` показывает только обычные объявления пользователя.

## Создать группу

`POST /api/groups`

Нужен Bearer token.

Минимальный смысловой пример тела:

```json
{
  "group": {
    "title": "Тихий уголок в центре",
    "description": "Ищем соседа для уютной квартиры в центре города.",
    "desired_gender": "any",
    "min_age": 20,
    "max_age": 32,
    "max_participants_count": 4,
    "children_allowed": true,
    "partner_allowed": false,
    "pets_allowed": false,
    "smoking_allowed": false
  },
  "apartment": {
    "address_details": {
      "value": "Омск, улица Ленина, 10",
      "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
      "district": "Центральный",
      "street": "ул Ленина",
      "street_fias_id": "demo-street-fias-lenina",
      "house": "10",
      "house_fias_id": "demo-house-fias-lenina-10"
    },
    "rent_goal_id": 1,
    "rent_period_id": 3,
    "premises_type_id": 20,
    "property_type_id": 30,
    "rooms_count_id": 42,
    "price_per_person": 20000,
    "apartment_area": 54.5,
    "floor": 7,
    "total_floors": 16,
    "image_urls": [
      "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=1200&q=80"
    ],
    "main_phone": "+79990000000"
  },
  "preferences": {
    "communication_id": 2,
    "sleep_id": 10,
    "bad_habits_id": 30,
    "guests_id": 40,
    "noise_level_id": 50,
    "cleaning_id": 60,
    "pets_id": 70,
    "pets_attitude_id": 80
  }
}
```

Ответ:

```json
{
  "id": "uuid",
  "status": "active",
  "created_at": "2026-05-13T00:00:00Z"
}
```

## Важные поля

- `group.title` - название карточки группы.
- `group.max_participants_count` - максимальное количество участников, должно быть больше 0.
- `group.desired_gender` - кого ищет группа: `any`, `male`, `female`.
- `apartment.address_details` - нормализованный адрес из `GET /api/locations/suggest`.
- `apartment.price_per_person` - цена на человека, основной формат для поиска соседа.
- `apartment.price_per_month` - запасной вариант, если фронту нужно отправлять общую цену квартиры.
- `preferences.*_id` - параметры атмосферы и совместимости группы. Позже они будут участвовать в базовом и умном мэтчинге.

## Получить список групп

`GET /api/groups`

Публичная ручка, токен не нужен. Используется для экрана `Найти соседа`.

Ответ содержит только краткие карточки:

```json
{
  "total_count": 3,
  "items": [
    {
      "id": "00000000-0000-0000-0000-000000000301",
      "title": "Тихий уголок в центре",
      "description": "Ищем соседа для уютной квартиры в центре города.",
      "match_percent": null,
      "participants_count": 2,
      "max_participants_count": 4,
      "participant_avatars": [
        "https://example.com/avatar.jpg"
      ],
      "price": "20 000 руб/мес.",
      "apartment": {
        "id": "00000000-0000-0000-0000-000000000201",
        "image_urls": [
          "https://example.com/photo.jpg"
        ],
        "rooms_count": "2",
        "area": "54.5",
        "floor": 7,
        "total_floor": 16,
        "address": "Омск, улица Ленина, 10",
        "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
        "district": "Центральный"
      }
    }
  ]
}
```

`match_percent` пока `null`: реальный расчет совместимости будет добавлен отдельной фазой. Это не `0%`, а именно "еще не рассчитано".

Объект квартиры называется `apartment`. Опечатку `apartament` в backend-контракт не добавляем.

### Query params

- `limit` - размер страницы, backend ограничивает `1..100`.
- `offset` - смещение.
- `sort_by` - поле сортировки: `price`, `publish_date`, `group_size`.
- `sort_order` - направление сортировки: `asc`, `desc`.
- `smart_query` - умный запрос обычным языком. Например: `тихо, без животных, не курят`.
- `city_fias_id` - FIAS id города.
- `district` - район.
- `address_query` - текстовый поиск по адресу, городу, району, улице или дому.
- `desired_gender` - кого ищет группа: `any`, `male`, `female`.
- `min_age` - нижняя граница возраста.
- `max_age` - верхняя граница возраста.
- `min_participants_count` - минимум текущих участников.
- `max_participants_count` - максимум текущих участников.
- `property_type_ids` - типы недвижимости через запятую, например `30,31`.
- `rooms_count_ids` - комнаты через запятую, например `41,42`.
- `min_price` - минимальная цена.
- `max_price` - максимальная цена.
- `rent_duration_id` - срок аренды или период аренды.
- `children_allowed` - можно с детьми.
- `partner_allowed` - можно с партнером.
- `pets_allowed` - можно с животными.
- `smoking_allowed` - можно курить.

Пример:

```text
GET /api/groups?city_fias_id=140e31da-27bf-4519-9ea0-6185d681d44e&district=Центральный&property_type_ids=30&rooms_count_ids=42&min_price=10000&max_price=25000&children_allowed=true
GET /api/groups?sort_by=price&sort_order=asc
GET /api/groups?sort_by=price&sort_order=desc
GET /api/groups?sort_by=publish_date&sort_order=desc
GET /api/groups?sort_by=group_size&sort_order=desc
GET /api/groups?address_query=ленина
```

### Умный поиск групп

`smart_query` нужен для экрана, где пользователь пишет обычным языком, что важно учесть при подборе.

Пример:

```text
GET /api/groups?smart_query=тихо,%20без%20животных,%20не%20курят&limit=20&offset=0
```

Как это работает:

- сначала применяются обычные фильтры, например город, район, цена и правила проживания;
- backend получает embedding текста из `smart_query` через OpenAI-compatible ProxyAPI;
- у каждой группы используется сохраненный `search_text` и cached embedding;
- если embedding у группы еще нет, backend пробует пересчитать его при первом smart-поиске;
- группы сортируются по семантической близости до `limit` и `offset`;
- если provider выключен или недоступен, ручка не падает и возвращает обычную выдачу.

Фронту не нужно отправлять отдельный `sort_by=smart`: достаточно передать непустой `smart_query`.

Для локального включения provider:

```text
EMBEDDING_ENABLED=true
EMBEDDING_BASE_URL=https://api.proxyapi.ru/openai/v1
EMBEDDING_API_KEY=ваш_proxyapi_ключ
EMBEDDING_MODEL=text-embedding-3-small
```

Если `smart_query` пустой, backend вообще не обращается к provider и работает как обычный список групп.

## Получить детали группы

`GET /api/groups/{group_id}`

Публичная ручка, токен не нужен. Используется для экрана группы. Возвращает не краткую карточку, а полный набор данных для деталей: группу, квартиру, условия проживания, предпочтения и участников.

Пример ответа:

```json
{
  "id": "00000000-0000-0000-0000-000000000301",
  "title": "Тихий уголок в центре",
  "description": "Ищем соседа для уютной квартиры в центре города.",
  "status": "active",
  "match_percent": null,
  "application_status": null,
  "owner_user_id": "00000000-0000-0000-0000-000000000501",
  "participants_count": 2,
  "max_participants_count": 4,
  "apartment": {
    "id": "00000000-0000-0000-0000-000000000201",
    "title": "Квартира для группы",
    "description": "Описание квартиры",
    "image_urls": ["https://example.com/photo.jpg"],
    "price": "20 000 руб/мес.",
    "rooms_count": "2",
    "area": "54.5",
    "floor": 7,
    "total_floor": 16,
    "address": "Омск, улица Ленина, 10",
    "address_details": {
      "value": "Омск, улица Ленина, 10",
      "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
      "district": "Центральный"
    },
    "layout": "adjacent",
    "renovation": "none",
    "elevator_type": "passenger",
    "furniture_type": "available",
    "balcony_type": "balcony",
    "stove_type": "gas",
    "amenities": ["internet", "bath", "fridge"],
    "deal_goal": "rent",
    "rent_term": "longTerm",
    "prepayment_type": "oneMonth",
    "rental_period": "fromYear",
    "deposit": "20 000 Р",
    "utilities_included": null,
    "property_type_id": 30,
    "rent_period_id": 3,
    "rent_duration_id": 161
  },
  "conditions": {
    "desired_gender": "any",
    "min_age": 20,
    "max_age": 35,
    "children_allowed": true,
    "partner_allowed": false,
    "pets_allowed": false,
    "smoking_allowed": false
  },
  "preferences": {
    "communication": { "id": 2, "title": "Амбиверт" },
    "sleep": { "id": 10, "title": "Жаворонок" },
    "bad_habits": { "id": 30, "title": "Нет" },
    "guests": { "id": 40, "title": "Не привожу" },
    "noise_level": { "id": 50, "title": "Тихий - без шума и громких звуков" },
    "cleaning": { "id": 60, "title": "Каждый день" },
    "pets": { "id": 70, "title": "Нет" },
    "pets_attitude": { "id": 80, "title": "Положительно" }
  },
  "participants": [
    {
      "id": "00000000-0000-0000-0000-000000000701",
      "user_id": "00000000-0000-0000-0000-000000000501",
      "role": "owner",
      "status": "active",
      "first_name": "Алексей",
      "last_name": "Петров",
      "full_name": "Алексей Петров",
      "age": 28,
      "gender": "male",
      "avatar_url": "https://example.com/avatar.jpg"
    }
  ],
  "created_at": "2026-05-14T00:00:00Z",
  "updated_at": "2026-05-14T00:00:00Z"
}
```

`match_percent` пока остается nullable, реальный расчет совместимости будет добавлен отдельно.

`application_status` нужен UI, чтобы понимать, отправлял ли текущий пользователь заявку в группу. Если запрос без токена или заявки нет, вернется `null`. Если заявка уже есть, вернется `pending`; если пользователь уже участник группы, вернется `accepted`.

Важно для фронта: `GET /api/groups/{group_id}` остается публичной ручкой, но персональный `application_status` считается только при наличии `Authorization: Bearer <access_token>`. Если дернуть эту ручку без токена, backend не знает текущего пользователя и вернет `application_status: null`.

В `apartment` для экрана деталей группы уже есть поля для блоков `О доме`, `Удобства` и `Условия сделки`:

- `layout`, `renovation`, `elevator_type`, `furniture_type`, `balcony_type`, `stove_type`;
- `amenities`;
- `rent_term`, `prepayment_type`, `rental_period`, `deposit`;
- `utilities_included` пока `null`, потому что отдельного поля коммунальных услуг в backend еще нет.

## Справочники формы создания группы

`GET /api/groups/tags`

Публичная ручка, токен не нужен. Фронт дергает ее перед экраном создания группы, чтобы получить актуальные id для селектов и чипсов формы.

Ручка возвращает только справочники, которые нужны форме группы:

```json
{
  "looking_for_gender": [
    { "id": 1, "title": "Мужской" },
    { "id": 2, "title": "Женский" },
    { "id": 3, "title": "Любой" }
  ],
  "communication": [
    { "id": 1, "title": "Интроверт" },
    { "id": 2, "title": "Амбиверт" },
    { "id": 3, "title": "Экстраверт" }
  ],
  "property_type": [
    { "id": 30, "title": "Квартира" },
    { "id": 32, "title": "Комната" },
    { "id": 34, "title": "Дом" }
  ],
  "rooms_count": [
    { "id": 41, "title": "1" },
    { "id": 42, "title": "2" },
    { "id": 43, "title": "3" },
    { "id": 44, "title": "4" }
  ],
  "utilities_payment": [
    { "id": 180, "title": "Включены в стоимость" },
    { "id": 181, "title": "Оплачиваются отдельно" }
  ]
}
```

В полном ответе также есть: `sleep`, `employment`, `bad_habits`, `guests`, `noise_level`, `cleaning`, `pets`, `pets_attitude`, `furniture`, `amenities`, `bathroom`, `appliances`, `currency`, `rent_duration`.

Важно:

- `property_type`, `rooms_count`, `furniture`, `amenities`, `bathroom`, `appliances`, `currency`, `rent_duration` используют id из backend-каталога объявлений, поэтому их можно отправлять в `POST /api/groups`.
- `communication`, `sleep`, `bad_habits`, `guests`, `noise_level`, `cleaning`, `pets`, `pets_attitude` используют id из backend-каталога профиля, поэтому их можно отправлять в `preferences`.
- `looking_for_gender` и `utilities_payment` пока являются справочниками формы. `desired_gender` в `POST /api/groups` сейчас принимает строку `any`, `male` или `female`, а отдельного поля коммунальных услуг в модели группы пока нет.

## Получить анкету участника

`GET /api/group-participants/{participant_id}`

Публичная ручка, токен не нужен. Возвращает безопасный профиль участника для экрана `Профиль заявителя`.

Телефон не возвращается. Кнопки `Позвонить` и `Написать` из дизайна требуют отдельного решения по приватности и контактам.

```json
{
  "id": "00000000-0000-0000-0000-000000000701",
  "user_id": "00000000-0000-0000-0000-000000000501",
  "role": "owner",
  "status": "active",
  "first_name": "Алексей",
  "last_name": "Петров",
  "full_name": "Алексей Петров",
  "age": 28,
  "gender": "male",
  "city": "Омск",
  "city_fias_id": "140e31da-27bf-4519-9ea0-6185d681d44e",
  "avatar_url": "https://example.com/avatar.jpg",
  "about": "Люблю тишину и порядок",
  "rating": null,
  "reviews_count": null,
  "target_apartment": {
    "title": "Квартира для группы",
    "price": "20 000 руб/мес.",
    "rooms_count": "2",
    "area": "54.5",
    "floor": 7,
    "total_floor": 16,
    "address": "Омск, улица Ленина, 10"
  },
  "questionnaire": {
    "personal_traits": [
      {
        "key": "communication",
        "title": "Общительность",
        "values": [{ "id": 2, "title": "Амбиверт" }]
      }
    ],
    "household_habits": [
      {
        "key": "noise_level",
        "title": "Уровень шума",
        "values": [{ "id": 50, "title": "Тихий - без шума и громких звуков" }]
      }
    ],
    "pets": [
      {
        "key": "pets",
        "title": "Мои животные",
        "values": [{ "id": 70, "title": "Нет" }]
      }
    ]
  }
}
```

`rating` и `reviews_count` пока nullable, потому что отдельной системы рейтинга в backend еще нет.

## Подать заявку в группу

`POST /api/groups/{group_id}/apply`

Нужен Bearer token.

Создает pending-заявку текущего пользователя в группу:

```json
{
  "id": "00000000-0000-0000-0000-000000000801",
  "group_id": "00000000-0000-0000-0000-000000000301",
  "status": "pending",
  "application_status": "pending",
  "created_at": "2026-05-14T00:00:00Z"
}
```

`application_status` в ответе на успешную подачу заявки сразу равен `pending`, чтобы фронт мог обновить кнопку без дополнительного запроса.

Если пользователь уже подал заявку в эту группу, backend вернет `409 Conflict`.

Если пользователь уже является активным участником группы, backend тоже вернет `409 Conflict`.

## Что пока не реализовано

В дизайне есть owner-flow заявок: `Новые`, `Архив`, `Принять`, `Отклонить`.

В текущей фазе реализована только минимальная подача заявки со стороны арендатора. Принятие, отклонение, архив заявок и перевод заявки в участника группы будут отдельной фазой.
