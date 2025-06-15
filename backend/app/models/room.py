from sqlalchemy import Column, Integer, String
from ..core.database import Base

class Room(Base):
    __tablename__ = 'rooms'

    id = Column(Integer, primary_key=True, index=True)
    code = Column(String, unique=True, index=True)
    building = Column(String)
    floor = Column(Integer)
    name = Column(String)
