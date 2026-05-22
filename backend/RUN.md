# Запуск проекта

## Backend-разработчик

Поднять только PostgreSQL:

```bash
docker compose up -d
```

Запустить backend из IntelliJ IDEA или командой:

```bash
mvnw.cmd spring-boot:run
```

Backend:

```text
http://localhost:8080
```

Swagger:

```text
http://localhost:8080/swagger-ui.html
```

## Frontend-разработчик

Поднять PostgreSQL и backend одной командой:

```bash
docker compose -f docker-compose.full.yml up --build
```

Backend:

```text
http://localhost:8080
```

Swagger:

```text
http://localhost:8080/swagger-ui.html
```

Посмотреть логи backend:

```bash
docker logs roommate-backend
```

## Мок-данные

При старте backend добавляет в базу демо-пользователя, профиль и объявления из:

```text
src/main/resources/data.sql
```

## DaData

Для реальных подсказок адреса можно передать ключ DaData:

```text
DADATA_API_KEY=ваш_ключ
```

Если ключ не задан, `GET /api/locations/suggest` возвращает демо-подсказки, чтобы фронт мог разрабатывать autocomplete без внешнего сервиса.
