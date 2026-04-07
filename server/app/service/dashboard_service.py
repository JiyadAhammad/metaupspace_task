from fastapi import HTTPException

from app.db.supabase_client import supabase
from app.schema.dashboard_schema import (
    HOLIDAYS,
    DashboardData,
    EmployeeDetails,
)
from app.service.auth_service import get_user_from_db


async def get_leave_details(user_id: str) -> int:
    response = (
        supabase.table("leave_applications")
        .select("*")
        .eq("user_id", user_id)
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

        total_leaves = await get_leave_details(user_id=user_id)

        print(total_leaves)

        LEAVE_DETAILS = {
            "total_leaves": 24,
            "leaves_taken": total_leaves,
            "leaves_available": 24 - total_leaves,
        }

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
            leave_details=LEAVE_DETAILS,
            holidays=HOLIDAYS,
            employee_details=employee,
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
