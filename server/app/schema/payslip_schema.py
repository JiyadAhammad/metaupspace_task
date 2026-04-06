from pydantic import BaseModel

from typing import List, Optional


class PaySlipItem(BaseModel):
    id: int
    month: str
    total_salary: float
    status: str


class PaySlipResponse(BaseModel):
    role: str
    base_salary: float
    user_id: str
    joining_date: str
    payslips: Optional[List[PaySlipItem]]


ROLE_SALARIES = {
    "Software Engineer": 8000.0,
    "QA Engineer": 6000.0,
    "DevOps Engineer": 8500.0,
    "UI/UX Designer": 7000.0,
    "Motion Graphic Designer": 7500.0,
    "Graphic Designer": 6000.0,
    "HR Manager": 7000.0,
    "IT Recruiter": 5000.0,
    "Operations Coordinator": 4500.0,
}
