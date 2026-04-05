from fastapi import HTTPException

from app.db.supabase_client import supabase
from app.schema.dashboard_schema import (
    ATTENDANCE,
    HOLIDAYS,
    LEAVE_DETAILS,
    DashboardData,
    EmployeeDetails,
)


def get_user_from_db(user_id: str):
    response = supabase.table("users").select("*").eq("id", user_id).single().execute()

    if not response.data:
        raise HTTPException(status_code=404, detail="User not found")

    return response.data


async def get_dashboard_data(
    user_id: str,
):

    try:

        # Fetch from users table
        user = get_user_from_db(user_id=user_id)

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
            attendance=ATTENDANCE,
            employee_details=employee,
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
