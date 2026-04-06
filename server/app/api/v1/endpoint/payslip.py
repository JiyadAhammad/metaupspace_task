from fastapi import APIRouter, Depends

from app.schema.base_response import SuccessResponse
from app.schema.payslip_schema import PaySlipResponse
from app.core.dependencies import get_current_user
from app.service.payslip_service import get_payslip_data


router = APIRouter()


@router.get("/", response_model=SuccessResponse[PaySlipResponse])
async def get_payslip(
    user=Depends(get_current_user),
):

    payslip_data = await get_payslip_data(user_id=user.id)
    return SuccessResponse(
        message="Payslip fetched successfully",
        data=payslip_data,
    )
