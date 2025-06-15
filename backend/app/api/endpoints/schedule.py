from fastapi import APIRouter, Depends
from ..dependencies import get_current_user
from ...schemas import Schedule, Lesson

router = APIRouter()

@router.get('/schedule/{user_id}', response_model=Schedule)
def get_schedule(user_id: int, current_user=Depends(get_current_user)):
    # TODO: integrate with MISIS schedule API
    lessons = [
        Lesson(time="10:00", room_code="A-101", title="Math"),
        Lesson(time="12:00", room_code="B-202", title="Physics"),
    ]
    return Schedule(user_id=user_id, lessons=lessons)
