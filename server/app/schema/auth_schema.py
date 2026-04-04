from typing import Literal
from pydantic import BaseModel, EmailStr
from datetime import datetime


class LoginRequest(BaseModel):
    email: str
    password: str


class RegisterRequest(BaseModel):
    full_name: str
    email: EmailStr
    password: str
    department: str
    role: str
    manager: str
    joining_date: datetime
    device: Literal["android", "ios"]


class RefreshTokenRequest(BaseModel):
    refresh_token: str


class AuthResponse(BaseModel):
    user_id: str
    is_active_user: bool
    email: str
    full_name: str
    department: str
    role: str
    manager: str
    joining_date: datetime
    device: str
    access_token: str
    refresh_token: str
    created_at: datetime
    updated_at: datetime


class RefreshTokenResponse(BaseModel):
    access_token: str
    refresh_token: str
    expires_at: datetime
