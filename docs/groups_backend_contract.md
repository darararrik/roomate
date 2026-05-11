# Groups Backend Contract

## Scope

Этот контракт покрывает новый поток:

- список групп
- экран `О группе`
- экран `Участники и условия`
- экран `Анкета участника`
- действие `Подать заявку`

Группа живёт внутри апартамента, поэтому в ответе группы используется вложенный объект `apartament`.

## Endpoints

### 1. Получение списка групп

`GET /groups`

Ответ:

```json
[
  {
    "id": "group_1",
    "title": "Тихий уголок в центре",
    "description": "Ищем соседей для уютной квартиры в центре города.",
    "match_percent": 95,
    "participants_count": 4,
    "max_participants_count": 5,
    "apartament": {
      "id": 101,
      "title": "Тихий уголок в центре",
      "description": "Полное описание группы и квартиры",
      "image_urls": [
        "https://..."
      ],
      "is_verification": true,
      "price": "10 000",
      "rooms_count": "1",
      "area": "39",
      "floor": 3,
      "total_floor": 17,
      "address": "Омск, улица Красный путь, 101к1",
      "city_id": 1,
      "name": "Мария Смирнова",
      "role": "Владелец",
      "publish_date": "2026-02-26T10:00:00Z",
      "total_viewers": "278",
      "layout": "adjacent",
      "renovation": "none",
      "elevator_type": "passenger",
      "furniture_type": null,
      "balcony_type": "balcony",
      "stove_type": "gas",
      "deal_goal": null,
      "rent_term": null,
      "who_to_rent": [],
      "prepayment_type": null,
      "rental_period": "fromYear",
      "deposit": "",
      "amenities": [
        "internet",
        "trashChute",
        "dishes",
        "videoIntercom",
        "concierge",
        "smartHome",
        "shower",
        "bath",
        "fridge",
        "tv",
        "washingMachine",
        "airConditioner",
        "dishwasher"
      ]
    }
  }
]
```

### 2. О группе

`GET /groups/{groupId}`

Ответ: такой же объект, как элемент массива из `GET /groups`.

### 3. Условия и участники группы

`GET /groups/{groupId}/conditions`

Ответ:

```json
{
  "group_id": "group_1",
  "who_group_is_looking_for": [
    "Любой пол",
    "18-25 лет"
  ],
  "living_rules": [
    "👶 Без детей",
    "👫🏻 Без партнера",
    "🐾 Разрешены животные",
    "🚬 Без курения"
  ],
  "apartment_lifestyle": [
    { "title": "Общительность", "value": "Амбиверт" },
    { "title": "Режим сна", "value": "Жаворонок" },
    { "title": "Вредные привычки", "value": "Нет" },
    { "title": "Частота гостей", "value": "Не приводят" }
  ],
  "apartment_atmosphere": [
    { "title": "Уровень шума", "value": "Тихий" },
    { "title": "Уборка", "value": "Каждый день" },
    { "title": "Наличие животных", "value": "Есть кошка" },
    { "title": "Отношение к ним", "value": "Положительно" }
  ],
  "participants_count": 4,
  "max_participants_count": 5,
  "participants": [
    {
      "id": "participant_owner",
      "full_name": "Мария Смирнова",
      "avatar_url": "",
      "is_verified": true,
      "role": "Владелец"
    },
    {
      "id": "participant_1",
      "full_name": "Алексей Петров",
      "avatar_url": "https://...",
      "is_verified": true,
      "role": ""
    }
  ]
}
```

### 4. Профиль участника

`GET /group-participants/{participantId}`

Ответ:

```json
{
  "id": "participant_1",
  "full_name": "Алексей Петров",
  "avatar_url": "https://...",
  "is_verified": true,
  "age": 28,
  "gender": "male",
  "rating": "4.8",
  "reviews_count": 12,
  "personal_qualities": [
    { "title": "Общительность", "value": "Амбиверт" },
    { "title": "Режим сна", "value": "Жаворонок" },
    { "title": "Занятость", "value": "Студент" }
  ],
  "household_habits": [
    { "title": "Уровень шума", "value": "Тихий" },
    { "title": "Уборка", "value": "Каждый день" },
    { "title": "Вредные привычки", "value": "Нет" },
    { "title": "Частота гостей", "value": "Не привожу" }
  ],
  "pets": [
    { "title": "Наличие животных", "value": "Нет" },
    { "title": "Отношение к ним", "value": "Положительно" }
  ]
}
```

### 5. Подать заявку в группу

`POST /groups/{groupId}/apply`

Требует авторизацию.

Тело запроса:

```json
{}
```

Допустимые варианты ответа:

- `200 OK`
- `204 No Content`

Если нужен явный body:

```json
{
  "success": true
}
```

## Поля, которые критичны для приложения

### Group

- `id: string`
- `title: string`
- `description: string`
- `match_percent: int`
- `participants_count: int`
- `max_participants_count: int`
- `apartament: object`

### Apartament inside Group

- `id: int`
- `title: string`
- `description: string`
- `image_urls: string[]`
- `is_verification: bool`
- `price: string`
- `rooms_count: string`
- `area: string`
- `floor: int`
- `total_floor: int`
- `address: string`
- `city_id: int`
- `name: string`
- `role: string`
- `publish_date: ISO-8601 string`
- `total_viewers: string`
- `layout: enum string`
- `renovation: enum string`
- `elevator_type: enum string`
- `furniture_type: enum string | null`
- `balcony_type: enum string`
- `stove_type: enum string`
- `deal_goal: enum string | null`
- `rent_term: enum string | null`
- `who_to_rent: string[]`
- `prepayment_type: enum string | null`
- `rental_period: enum string | null`
- `deposit: string`
- `amenities: string[]`

### Group conditions

- `group_id: string`
- `who_group_is_looking_for: string[]`
- `living_rules: string[]`
- `apartment_lifestyle: { title, value }[]`
- `apartment_atmosphere: { title, value }[]`
- `participants_count: int`
- `max_participants_count: int`
- `participants: Participant[]`

### Group participant short

- `id: string`
- `full_name: string`
- `avatar_url: string`
- `is_verified: bool`
- `role: string`

### Group participant profile

- `id: string`
- `full_name: string`
- `avatar_url: string`
- `is_verified: bool`
- `age: int`
- `gender: string`
- `role: string`
- `rating: string`
- `reviews_count: int`
- `personal_qualities: { title, value }[]`
- `household_habits: { title, value }[]`
- `pets: { title, value }[]`

## Enum values used by app for `apartament`

### `layout`

- `adjacent`
- `isolated`
- `mixed`

### `renovation`

- `none`
- `euro`
- `cosmetic`

### `elevator_type`

- `passenger`
- `cargo`
- `both`

### `balcony_type`

- `balcony`
- `none`
- `loggia`
- `balconyAndLoggia`
- `terrace`

### `furniture_type`

- `available`
- `unavailable`
- `partial`

### `stove_type`

- `gas`
- `electric`

### `deal_goal`

- `rent`
- `exchange`

### `rent_term`

- `longTerm`
- `daily`

### `who_to_rent`

- `onePerson`
- `company`
- `family`
- `students`

### `prepayment_type`

- `none`
- `oneMonth`
- `twoMonths`
- `threeMonths`
- `fourPlusMonths`

### `rental_period`

- `severalMonths`
- `fromYear`

### `amenities`

- `childrenAllowed`
- `petsAllowed`
- `internet`
- `trashChute`
- `dishes`
- `videoIntercom`
- `concierge`
- `smartHome`
- `shower`
- `bath`
- `fridge`
- `tv`
- `washingMachine`
- `airConditioner`
- `dishwasher`

## Notes

- Все read endpoints сейчас можно делать публичными.
- `POST /groups/{groupId}/apply` должен быть авторизованным.
- Для клиента сейчас важно, чтобы даты приходили в ISO-8601.
- Поле называется именно `apartament`, чтобы совпасть с текущей моделью приложения.
