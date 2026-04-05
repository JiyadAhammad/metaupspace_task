from typing import List

from fastapi import APIRouter, Depends

from app.schema.base_response import SuccessResponse
from app.schema.dashboard_schema import DashboardData
from app.service.dashboard_service import get_dashboard_data
from app.core.dependencies import get_current_user


router = APIRouter()


@router.get("/", response_model=SuccessResponse[DashboardData])
async def get_dashboard(
    user=Depends(get_current_user),
):

    dashboard_data = await get_dashboard_data(user_id=user.id)
    return SuccessResponse(
        message="Holidays fetched successfully",
        data=dashboard_data,
    )
