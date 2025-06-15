from fastapi.security import OAuth2PasswordBearer
from fastapi import Depends, HTTPException, status

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="/token")

# TODO: integrate with real OAuth2 provider

def get_current_user(token: str = Depends(oauth2_scheme)):
    if token != "fake-token":
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Invalid token")
    # returning a fake user
    from ..schemas import User
    return User(id=1, username="demo", full_name="Demo User")
