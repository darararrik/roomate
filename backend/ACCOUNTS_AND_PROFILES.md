# Аккаунты и профили

## Запросить SMS-код

```http
POST /api/auth/sms/request
```

Request body:

```json
{
  "phone": "+79991234567"
}
```

Успешный ответ:

```json
{
  "message": "SMS code was sent",
  "expires_in_seconds": 300
}
```

В dev-режиме правильный код всегда:

```text
0000
```

## Подтвердить SMS-код

```http
POST /api/auth/sms/verify
```

Request body:

```json
{
  "phone": "+79991234567",
  "code": "0000"
}
```

Успешный ответ:

```json
{
  "access_token": "jwt-access-token",
  "refresh_token": "refresh-token",
  "token_type": "Bearer",
  "expires_in_seconds": 1200,
  "user": {
    "id": "b6d3a1ad-2bc4-4e5d-8d68-3f483ce67dd0",
    "phone": "+79991234567",
    "role": "USER",
    "is_new_user": true
  }
}
```

`is_new_user = true` означает, что пользователь создан впервые и frontend может показать анкету профиля.

## Использовать access token

Для защищенных запросов добавлять header:

```http
Authorization: Bearer jwt-access-token
```

В Swagger нажать `Authorize` и вставить:

```text
Bearer jwt-access-token
```

## Обновить токены

```http
POST /api/auth/refresh
```

Request body:

```json
{
  "refresh_token": "refresh-token"
}
```

Ответ такой же, как при `/api/auth/sms/verify`: новый `access_token` и новый `refresh_token`.

## Выйти из аккаунта

```http
POST /api/auth/logout
```

Request body:

```json
{
  "refresh_token": "refresh-token"
}
```

Успешный ответ:

```http
204 No Content
```

## Получить теги для анкеты профиля

```http
GET /api/profile/tags
```

Авторизация не нужна.

Ответ:

```json
{
  "communication": [
    { "id": 1, "title": "Интроверт" },
    { "id": 2, "title": "Амбиверт" },
    { "id": 3, "title": "Экстраверт" }
  ],
  "sleep": [
    { "id": 10, "title": "Жаворонок" },
    { "id": 11, "title": "Сова" },
    { "id": 12, "title": "Без режима" }
  ],
  "employment": [
    { "id": 20, "title": "Студент" },
    { "id": 21, "title": "Офис" },
    { "id": 22, "title": "Удаленка" },
    { "id": 23, "title": "Другое" }
  ],
  "bad_habits": [
    { "id": 30, "title": "Нет" },
    { "id": 31, "title": "Курение" },
    { "id": 32, "title": "Алкоголь" }
  ],
  "guests": [
    { "id": 40, "title": "Не привожу" },
    { "id": 41, "title": "Иногда" },
    { "id": 42, "title": "Часто" }
  ],
  "noise_level": [
    { "id": 50, "title": "Тихий - без шума и громких звуков" },
    { "id": 51, "title": "Средний - иногда музыка или ТВ" },
    { "id": 52, "title": "Активный - музыка, бывают компании" }
  ],
  "cleaning": [
    { "id": 60, "title": "Убираюсь сразу" },
    { "id": 61, "title": "Раз в несколько дней" },
    { "id": 62, "title": "Раз в неделю" }
  ],
  "pets": [
    { "id": 70, "title": "Нет" },
    { "id": 71, "title": "Кошка" },
    { "id": 72, "title": "Собака" },
    { "id": 73, "title": "Другое" }
  ],
  "pets_attitude": [
    { "id": 80, "title": "Положительно" },
    { "id": 81, "title": "Аллергия" },
    { "id": 82, "title": "Против" }
  ]
}
```

## Создать или обновить профиль

```http
PUT /api/profile/me
```

Нужна авторизация:

```http
Authorization: Bearer access-token
```

Request body:

```json
{
  "first_name": "Алексей",
  "last_name": "Иванов",
  "age": 27,
  "gender": "male",
  "city": "Омск",
  "avatar_url": "https://example.com/avatars/demo-user.jpg",
  "is_owner": true,
  "about": "Ищу спокойного соседа, люблю чистоту, кино и путешествия.",
  "preferences": {
    "communication": [2],
    "sleep": [11],
    "employment": [20],
    "bad_habits": [30],
    "guests": [41],
    "noise_level": [50],
    "cleaning": [60],
    "pets": [70],
    "pets_attitude": [80]
  }
}
```

Успешный ответ возвращает профиль в таком же формате.

## Получить свой профиль

```http
GET /api/profile/me
```

Нужна авторизация:

```http
Authorization: Bearer access-token
```

Если пользователь только авторизовался и еще не заполнял профиль, backend вернет пустую анкету:

```json
{
  "id": "uuid-пользователя",
  "first_name": null,
  "last_name": null,
  "phone": "+79507973860",
  "gender": null,
  "age": null,
  "city": null,
  "avatar_url": null,
  "is_verified": true,
  "about": null,
  "preferences": {
    "communication": [],
    "sleep": [],
    "employment": [],
    "bad_habits": [],
    "guests": [],
    "noise_level": [],
    "cleaning": [],
    "pets": [],
    "pets_attitude": []
  },
  "is_owner": null
}
```

Если отправить id предпочтения, которого нет в справочнике профиля, backend вернет `400 Bad Request`.
