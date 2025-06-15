from fastapi import APIRouter

router = APIRouter()

@router.post('/token')
def login():
    # TODO: real authentication
    return {"access_token": "fake-token", "token_type": "bearer"}
