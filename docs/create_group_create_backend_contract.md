# Create Group Backend Contract

## Endpoint

`POST /groups`

Тело запроса должно быть вложенным и разделено на 3 части:

- `group`
- `apartment`
- `preferences`

## Request Body

```json
{
  "group": {
    "title": "Тихий уголок в центре",
    "description": "Ищем соседей для спокойной квартиры.",
    "desired_gender": "male",
    "min_age": 18,
    "max_age": 30,
    "max_participants_count": 3,
    "children_allowed": false,
    "partner_allowed": false,
    "pets_allowed": true,
    "smoking_allowed": false
  },
  "apartment": {
    "address_details": {
      "value": "Омск, улица Красный путь, 101к1",
      "unrestrictedValue": "Омск, улица Красный путь, 101к1",
      "cityFiasId": "omsk"
    },
    "property_type_id": 90,
    "rooms_count_id": 100,
    "furniture_id": 110,
    "amenities_ids": [120, 121],
    "bathroom_ids": [130],
    "appliances_ids": [140, 141],
    "currency_id": 150,
    "selected_currency": "rub",
    "price_per_person": 15000,
    "rent_duration_id": 180,
    "apartment_area": 54,
    "floor": 6,
    "total_floors": 10,
    "apartment_number": 12,
    "title": "Тихий уголок в центре",
    "description": "Ищем соседей для спокойной квартиры.",
    "image_urls": [
      "https://example.com/image-1.jpg"
    ]
  },
  "preferences": {
    "communication_id": 10,
    "sleep_id": 20,
    "bad_habits_id": 30,
    "guests_id": 40,
    "noise_level_id": 50,
    "cleaning_id": 60,
    "pets_id": 70,
    "pets_attitude_id": 80
  }
}
```

## What Frontend Sends Now

Фронт уже переведён на nested body, но он может заполнить только подмножество backend-полей.

Сейчас из клиента реально приходят:

- `group.title`
- `group.description`
- `group.desired_gender`
- `group.min_age`
- `group.max_age`
- `group.max_participants_count`
- `group.children_allowed`
- `group.partner_allowed`
- `group.pets_allowed`
- `group.smoking_allowed`
- `apartment.address_details.value`
- `apartment.address_details.unrestrictedValue`
- `apartment.address_details.cityFiasId`
- `apartment.property_type_id`
- `apartment.rooms_count_id`
- `apartment.furniture_id`
- `apartment.amenities_ids`
- `apartment.bathroom_ids`
- `apartment.appliances_ids`
- `apartment.currency_id`
- `apartment.selected_currency`
- `apartment.price_per_person`
- `apartment.rent_duration_id`
- `apartment.apartment_area`
- `apartment.floor`
- `apartment.total_floors`
- `apartment.apartment_number`
- `apartment.title`
- `apartment.description`
- `apartment.image_urls`
- `preferences.communication_id`
- `preferences.sleep_id`
- `preferences.bad_habits_id`
- `preferences.guests_id`
- `preferences.noise_level_id`
- `preferences.cleaning_id`
- `preferences.pets_id`
- `preferences.pets_attitude_id`

## What Is Still Wrong

### 1. `address_details` is incomplete

Сейчас во фронте нет полноценной структуры адреса. Клиент хранит только:

- `displayTitle`
- `selectedCityId`
- `cityFiasId`

Поэтому поля ниже пока не собираются и не отправляются:

- `country`
- `region`
- `city`
- `district`
- `street`
- `streetFiasId`
- `house`
- `houseFiasId`
- `geoLat`
- `geoLon`

Если бэку критичен полный `address_details`, фронту нужен отдельный state не только со строкой адреса, но и со всей DTO от address suggestion.

### 2. `desired_gender` is a semantic mismatch

Во фронте хранится `lookingForGenderId`, а не строковое значение. Сейчас маппинг жёстко такой:

- `1 -> male`
- `2 -> female`
- `3 -> any`

Это временное решение. Надёжнее, если backend будет принимать `looking_for_gender_id`, либо options endpoint будет возвращать и `id`, и `code`.

### 3. `max_participants_count` does not match current frontend meaning

Во фронте поле называется `participantsCount`, и UI показывает количество людей в группе "включая вас".

Это не обязательно то же самое, что:

- максимальная вместимость группы
- текущее количество участников
- количество свободных мест

Нужно зафиксировать точную семантику на бэке.

### 4. `apartment_number` type mismatch

Во фронте `apartmentNumber` хранится как `String`, а в backend-модели сейчас ожидается `number`.

Если пользователь введёт:

- `12A`
- `кв 7`
- `7/1`

клиент не сможет корректно отправить это как integer.

Рекомендуемый вариант:

- либо сделать `apartment_number: string`
- либо ввести отдельные правила валидации только для integer

### 5. `selected_currency` should not be an arbitrary object

В текущем backend примере `selected_currency` выглядит как произвольный объект с `additionalProp`.
Это плохой контракт.

Рекомендуется одно из двух:

- `selected_currency: "rub"`
- или объект фиксированной формы, например `{ "code": "rub", "symbol": "₽" }`

Сейчас фронт отправляет строковый enum.

### 6. `title` and `description` are duplicated

Во фронте есть только одна пара полей:

- `title`
- `description`

Но backend-модель просит их и в `group`, и в `apartment`.

Сейчас клиент дублирует эти значения в обе секции. Если это не нужно, лучше оставить их в одном месте.

### 7. A lot of apartment fields do not exist in create-group UI

Сейчас в create-group форме нет полей для:

- `rent_goal_id`
- `rent_period_id`
- `who_can_rent_ids`
- `premises_type_id`
- `layout_id`
- `renovation_id`
- `elevators_id`
- `balconies_id`
- `stove_id`
- `prepayment_id`
- `rent_conditions_ids`
- `contact_method_id`
- `price_per_month`
- `deposit`
- `main_phone`
- `additional_number`

Если они обязательны на бэке, create-group экран сейчас не сможет их собрать.

### 8. `employment_id` exists in frontend form model, but not in request

Во фронтовой модели есть `employmentId`, и options endpoint уже содержит `employment`, но в текущем create-group UI этот выбор не используется.

Нужно решить:

- либо добавить `employment` на экран и в `preferences`
- либо убрать его из фронтовой формы и backend options

## Recommended Backend Decisions

1. Зафиксировать, что именно означает `max_participants_count`.
2. Привести `desired_gender` к стабильному enum-коду, а не к title.
3. Привести `selected_currency` к строковому enum или фиксированному объекту.
4. Решить, нужен ли полный `address_details`, или на первом этапе достаточно `value + cityFiasId`.
5. Убрать из обязательных полей всё, чего нет в текущем `create_group` UI.
