from fastapi import APIRouter, status

from app.schema.auth_schema import (
    AuthResponse,
    LoginRequest,
    RefreshTokenRequest,
    RefreshTokenResponse,
    RegisterRequest,
)
from app.schema.base_response import SuccessResponse
from app.service.auth_service import login_user, refresh_token_user, register_user

router = APIRouter()

# """
# | Endpoint       | Status |
# | -------------- | ------ |
# | register       | 201    |
# | login          | 200    |
# | logout         | 204    |
# | update profile | 200    |
# | delete account | 204    |

# """


@router.post(
    "/login",
    response_model=SuccessResponse[AuthResponse],
    status_code=status.HTTP_200_OK,
)
async def login(data: LoginRequest):
    user = await login_user(data)

    return SuccessResponse(message="Logged in Successfully", data=user)


@router.post(
    "/register",
    response_model=SuccessResponse[AuthResponse],
    status_code=status.HTTP_201_CREATED,
)
async def register(data: RegisterRequest):
    user = await register_user(data)
    return SuccessResponse(message="Employee Created Successfully", data=user)


@router.post(
    "/refresh-token",
    response_model=SuccessResponse[RefreshTokenResponse],
    status_code=status.HTTP_201_CREATED,
)
async def refresh_token(data: RefreshTokenRequest):
    user = await refresh_token_user(data)
    return SuccessResponse(message="Token refreshed successfully", data=user)
