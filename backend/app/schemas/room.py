from pydantic import BaseModel

class RoomBase(BaseModel):
    code: str
    building: str
    floor: int
    name: str

class Room(RoomBase):
    id: int

    class Config:
        orm_mode = True
