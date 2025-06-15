from fastapi import APIRouter
from .endpoints import search, route, schedule, auth

api_router = APIRouter(prefix="/api/v1")
api_router.include_router(auth.router)
api_router.include_router(search.router)
api_router.include_router(route.router)
api_router.include_router(schedule.router)
