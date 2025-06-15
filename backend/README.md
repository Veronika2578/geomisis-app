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
