from datetime import datetime

from fastapi import HTTPException
from app.db.supabase_client import supabase
from app.schema.auth_schema import (
    AuthResponse,
    LoginRequest,
    RefreshTokenRequest,
    RefreshTokenResponse,
    RegisterRequest,
)


async def login_user(data: LoginRequest):

    try:

        auth_response = supabase.auth.sign_in_with_password(
            {"email": data.email, "password": data.password}
        )

        if auth_response.user is None:
            raise HTTPException(status_code=401, detail="Invalid email or password")

        user_id = auth_response.user.id
        token = auth_response.session.access_token
        refresh_token = auth_response.session.refresh_token

        # get profile info
        profile = (
            supabase.table("users").select("*").eq("id", user_id).single().execute()
        )

        user = profile.data

        return AuthResponse(
            user_id=user_id,
            is_active_user=user["is_active_user"],
            email=user["email"],
            full_name=user["full_name"],
            department=user["department"],
            role=user["role"],
            manager=user["manager"],
            joining_date=user["joining_date"],
            device=user["device"],
            access_token=token,
            refresh_token=refresh_token,
            created_at=user["created_at"],
            updated_at=user["updated_at"],
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


async def register_user(data: RegisterRequest):

    try:

        # hashed_password = hash_password(data.password)

        auth_user = supabase.auth.sign_up(
            {"email": data.email, "password": data.password}
        )

        user_id = auth_user.user.id
        token = auth_user.session.access_token
        refresh_token = auth_user.session.refresh_token

        response = (
            supabase.table("users")
            .insert(
                {
                    "id": user_id,
                    "email": data.email,
                    "full_name": data.full_name,
                    "department": data.department,
                    "role": data.role,
                    "manager": data.manager,
                    "joining_date": data.joining_date.isoformat(),
                    "device": data.device,
                }
            )
            .execute()
        )

        user = response.data[0]

        return AuthResponse(
            user_id=user_id,
            is_active_user=user["is_active_user"],
            email=user["email"],
            full_name=user["full_name"],
            department=user["department"],
            role=user["role"],
            manager=user["manager"],
            joining_date=user["joining_date"],
            device=user["device"],
            access_token=token,
            refresh_token=refresh_token,
            created_at=user["created_at"],
            updated_at=user["updated_at"],
        )

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


async def refresh_token_user(data: RefreshTokenRequest):
    try:
        response = supabase.auth.refresh_session(data.refresh_token)

        if not response or not response.session:
            raise HTTPException(
                status_code=401, detail="Invalid or expired refresh token"
            )

        session = response.session

        return RefreshTokenResponse(
            access_token=session.access_token,
            refresh_token=session.refresh_token,
            expires_at=session.expires_at,
        )

    except HTTPException:
        raise

    except Exception:
        raise HTTPException(status_code=500, detail="Failed to refresh token")
