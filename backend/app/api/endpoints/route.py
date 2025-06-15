from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from ...core.database import get_db
from ...models import Route
from ...schemas import Route as RouteSchema

router = APIRouter()

@router.get('/route', response_model=RouteSchema)
def get_route(
    from_: str = Query(..., alias="from"),
    to: str = Query(..., alias="to"),
    db: Session = Depends(get_db),
):
    route = db.query(Route).filter(Route.start_code==from_, Route.end_code==to).first()
    if not route:
        raise HTTPException(status_code=404, detail="Route not found")
    points = route.points.split(',') if route.points else []
    return RouteSchema(start_code=route.start_code, end_code=route.end_code, points=points)
