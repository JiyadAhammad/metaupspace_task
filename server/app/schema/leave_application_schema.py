from datetime import datetime

from pydantic import BaseModel


class LeaveApplicationRequest(BaseModel):
    type: str
    reason: str
    start_date: datetime
    end_date: datetime


class LeaveApplicationResponse(BaseModel):
    id: str
    user_id: str
    type: str
    reason: str
    start_date: datetime
    end_date: datetime
    status: bool
    created_at: datetime
