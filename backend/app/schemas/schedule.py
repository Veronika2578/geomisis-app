from pydantic import BaseModel
from typing import List

class Lesson(BaseModel):
    time: str
    room_code: str
    title: str

class Schedule(BaseModel):
    user_id: int
    lessons: List[Lesson]
