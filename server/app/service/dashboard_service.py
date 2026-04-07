from datetime import datetime

from fastapi import HTTPException

from app.db.supabase_client import supabase
from app.schema.dashboard_schema import (
    HOLIDAYS,
    AttendanceSummary,
    DashboardData,
    EmployeeDetails,
    LeaveDetails,
)
from app.service.auth_service import get_user_from_db


async def get_leave_details(user_id: str) -> int:
    today = datetime.utcnow()

    start_of_month = datetime(today.year, today.month, 1)
    end_of_month = datetime(today.year, today.month + 1, 1)

    response = (
        supabase.table("leave_applications")
        .select("*")
        .eq("user_id", user_id)
        .gte("start_date", start_of_month.isoformat())
        .lt("start_date", end_of_month.isoformat())
        .execute()
    )
    total_leave_application = len(response.data)
    return total_leave_application


async def get_dashboard_data(
    user_id: str,
):

    try:

        # Fetch from users table
        user = get_user_from_db(user_id=user_id)

        # Monthly leave count
        total_leaves_applied = await get_leave_details(user_id=user_id)

        # Constants
        TOTAL_MONTH_DAYS = 30
        ANNUAL_LEAVE = 24

        # Leave Calculations
        leaves_taken = total_leaves_applied
        leaves_available = max(ANNUAL_LEAVE - leaves_taken, 0)

        leave_details = LeaveDetails(
            total_leaves=ANNUAL_LEAVE,
            leaves_taken=leaves_taken,
            leaves_available=leaves_available,
        )

        # Attendance Calculations
        present_days = TOTAL_MONTH_DAYS - leaves_taken
        absent_days = leaves_taken

        # Total working hours in month
        total_working_hours = present_days * 8

        # Average hours per day (including leaves impact)
        average_working_hours = total_working_hours / TOTAL_MONTH_DAYS

        attendance_details = AttendanceSummary(
            present_days=present_days,
            absent_days=absent_days,
            total_working_days=TOTAL_MONTH_DAYS,
            average_working_hours=round(average_working_hours, 2),
        )

        employee = EmployeeDetails(
            user_id=user_id,
            is_active_user=user["is_active_user"],
            email=user["email"],
            full_name=user["full_name"],
            department=user["department"],
            role=user["role"],
            manager=user["manager"],
            joining_date=user["joining_date"],
            device=user["device"],
            created_at=user["created_at"],
            updated_at=user["updated_at"],
        )

        return DashboardData(
            leave_details=leave_details,
            holidays=HOLIDAYS,
            attendance=attendance_details,
            employee_details=employee,
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
