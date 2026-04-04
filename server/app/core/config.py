import os
from pydantic_settings import BaseSettings


class Settings(BaseSettings):

    ENV: str = "dev"
    API_PORT: int = 8000

    SUPABASE_URL: str
    SUPABASE_KEY: str
    SUPABASE_SERVICE_ROLE_KEY: str

    class Config:
        env_file = f".env.{os.getenv('ENV', 'dev')}"
        env_file_encoding = "utf-8"


settings = Settings()
