from fastapi import HTTPException

from app.schema.leave_application_schema import (
    LeaveApplicationRequest,
    LeaveApplicationResponse,
)
from app.service.auth_service import get_user_from_db
from app.db.supabase_client import supabase


async def create_leave_application(user_id: str, payload: LeaveApplicationRequest):
    try:
        user = get_user_from_db(user_id=user_id)

        response = (
            supabase.table("leave_applications")
            .insert(
                {
                    "user_id": user_id,
                    "type": payload.type,
                    "reason": payload.reason,
                    "start_date": payload.start_date.isoformat(),
                    "end_date": payload.end_date.isoformat(),
                }
            )
            .execute()
        )

        new_application = response.data[0]

        return LeaveApplicationResponse(
            id=new_application["id"],
            user_id=user_id,
            type=new_application["type"],
            reason=new_application["reason"],
            start_date=new_application["start_date"],
            end_date=new_application["end_date"],
            status=new_application["status"],
            created_at=new_application["created_at"],
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


async def get_all_leave_application(user_id: str):
    try:
        response = (
            supabase.table("leave_applications")
            .select("*")
            .eq("user_id", user_id)
            .execute()
        )

        if not response.data:
            return []

        application = [
            LeaveApplicationResponse(
                id=item["id"],
                user_id=user_id,
                type=item["type"],
                reason=item["reason"],
                start_date=item["start_date"],
                end_date=item["end_date"],
                status=item["status"],
                created_at=item["created_at"],
            )
            for item in response.data
        ]

        return application

    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(status_code=500, detail=e)
