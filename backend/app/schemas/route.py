from pydantic import BaseModel
from typing import List

class Route(BaseModel):
    start_code: str
    end_code: str
    points: List[str]

    class Config:
        orm_mode = True
