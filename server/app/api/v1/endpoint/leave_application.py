from typing import List

from fastapi import APIRouter, Depends, status

from app.schema.base_response import SuccessResponse
from app.service.leave_application_service import (
    create_leave_application,
    get_all_leave_application,
)
from app.core.dependencies import get_current_user
from app.schema.leave_application_schema import (
    LeaveApplicationRequest,
    LeaveApplicationResponse,
)


router = APIRouter()


@router.post(
    "/apply",
    response_model=SuccessResponse[LeaveApplicationResponse],
    status_code=status.HTTP_201_CREATED,
)
async def apply_leave(
    data: LeaveApplicationRequest,
    user=Depends(get_current_user),
):
    new_leave_application = await create_leave_application(
        user_id=user.id, payload=data
    )

    return SuccessResponse(
        message="Leave Application Submitted", data=new_leave_application
    )


@router.get("/", response_model=SuccessResponse[List[LeaveApplicationResponse]])
async def get_leave_application(
    user=Depends(get_current_user),
):
    all_application = await get_all_leave_application(user_id=user.id)

    return SuccessResponse(message="Leave application retrieved", data=all_application)
