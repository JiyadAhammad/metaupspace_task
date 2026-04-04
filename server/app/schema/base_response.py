from typing import Generic, Optional, TypeVar
from pydantic import BaseModel

T = TypeVar("T")


class SuccessResponse(BaseModel, Generic[T]):
    status: bool = True
    message: str
    data: Optional[T] = None


class ErrorResponse(BaseModel):
    status: bool = False
    message: str
