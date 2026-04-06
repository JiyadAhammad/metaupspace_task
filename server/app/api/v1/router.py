from fastapi import APIRouter

from .endpoint import auth, dashboard, payslip, leave_application


api_router = APIRouter()

# /api/v1/auth/
api_router.include_router(auth.router, prefix="/auth", tags=["Auth"])
api_router.include_router(
    dashboard.router, prefix="/dashboard", tags=["Employee Dashboard"]
)
api_router.include_router(payslip.router, prefix="/payslip", tags=["Employee Payslip"])
api_router.include_router(
    leave_application.router, prefix="/leave", tags=["Employee Leave Application"]
)
