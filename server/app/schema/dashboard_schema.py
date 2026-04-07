from pydantic import BaseModel


from pydantic import BaseModel, Field
from typing import List
from datetime import datetime

from app.schema.auth_schema import AuthResponse


class LeaveDetails(BaseModel):
    total_leaves: int
    leaves_taken: int
    leaves_available: int


class Holiday(BaseModel):
    id: str
    name: str
    date: datetime
    type: str


class EmployeeDetails(BaseModel):
    user_id: str
    is_active_user: bool
    email: str
    full_name: str
    department: str
    role: str
    manager: str
    joining_date: datetime
    device: str
    created_at: datetime
    updated_at: datetime


class DashboardData(BaseModel):
    leave_details: LeaveDetails
    holidays: List[Holiday]
    employee_details: EmployeeDetails


HOLIDAYS = [
    {
        "id": "1",
        "name": "Republic Day",
        "date": "2026-01-26T00:00:00",
        "type": "national",
    },
    {
        "id": "2",
        "name": "Good Friday",
        "date": "2026-04-03T00:00:00",
        "type": "holiday",
    },
    {
        "id": "3",
        "name": "Independence Day",
        "date": "2026-08-15T00:00:00",
        "type": "national",
    },
    {"id": "4", "name": "Diwali", "date": "2026-11-08T00:00:00", "type": "festival"},
    {
        "id": "5",
        "name": "Christmas Day",
        "date": "2026-12-25T00:00:00",
        "type": "holiday",
    },
]
