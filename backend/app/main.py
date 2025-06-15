"""Main entrypoint for GEOMISIS backend."""

from fastapi import FastAPI
from .api import api_router
from .core.database import Base, engine
from .models import Room, Route, User

app = FastAPI(title="GEOMISIS API")
app.include_router(api_router)

# Create tables and insert mock data
Base.metadata.create_all(bind=engine)

from sqlalchemy.orm import Session
session = Session(bind=engine)
if not session.query(Room).first():
    rooms = [
        Room(code="A-101", building="A", floor=1, name="Лекция 101"),
        Room(code="B-202", building="B", floor=2, name="Лаборатория 202"),
    ]
    routes = [
        Route(start_code="A-101", end_code="B-202", points="0,0;1,1;2,2"),
    ]
    session.add_all(rooms + routes)
    session.commit()
session.close()
