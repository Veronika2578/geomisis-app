from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from ...core.database import get_db
from ...models import Room
from ...schemas import Room as RoomSchema

router = APIRouter()

@router.get('/search', response_model=list[RoomSchema])
def search_rooms(q: str, db: Session = Depends(get_db)):
    return db.query(Room).filter(Room.code.contains(q) | Room.name.contains(q)).all()
