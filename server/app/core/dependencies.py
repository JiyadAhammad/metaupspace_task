from fastapi import Depends, HTTPException

from app.db.supabase_client import supabase
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials

security = HTTPBearer()


def get_current_user(
    credentials: HTTPAuthorizationCredentials = Depends(security),
):
    if credentials is None:
        raise HTTPException(status_code=401, detail="Authorization header missing")

    try:
        token = credentials.credentials

        response = supabase.auth.get_user(token)

        if not response or not response.user:
            raise HTTPException(status_code=401, detail="Invalid or expired token")

        return response.user

    except Exception:
        raise HTTPException(status_code=401, detail="Invalid or expired token")
