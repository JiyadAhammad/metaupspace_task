from fastapi import APIRouter

from .endpoint import auth


api_router = APIRouter()

# /api/v1/auth/
api_router.include_router(auth.router, prefix="/auth", tags=["Auth"])
