from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    database_url: str = "sqlite:///./geomisis.db"
    secret_key: str = "CHANGE_ME"  # TODO: use secure key

settings = Settings()
