# GEOMISIS Backend

> 📌 tech-stack draft  
> • Python 3.11  
> • FastAPI + Pydantic  
> • PostGIS + PgRouting  
> • Redis (кэш маршрутов)  
> • Docker Compose

## Модульная карта
- `geomisis_api/` — REST + WebSocket
- `routing/` — алгоритм A* по этажам
- `auth/` — OAuth2 (Google, МИСИС SSO)

### Запуск в Docker

```bash
docker-compose up --build
```

После старта API будет доступен на `http://localhost:8000/api/v1`.
