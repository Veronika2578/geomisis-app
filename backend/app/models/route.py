from sqlalchemy import Column, Integer, String
from ..core.database import Base

class Route(Base):
    __tablename__ = 'routes'

    id = Column(Integer, primary_key=True, index=True)
    start_code = Column(String, index=True)
    end_code = Column(String, index=True)
    points = Column(String)  # comma separated coordinates placeholder
