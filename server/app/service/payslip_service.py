from fastapi import HTTPException

from app.schema.payslip_schema import ROLE_SALARIES, PaySlipResponse
from app.service.auth_service import get_user_from_db

from datetime import datetime


def generate_payslips(joining_date: datetime, salary: float):
    now = datetime.utcnow()

    # If joined in current month → return None
    if joining_date.year == now.year and joining_date.month == now.month:
        return None

    payslips = []
    current = joining_date.replace(day=1)

    id_counter = 1

    while (current.year < now.year) or (
        current.year == now.year and current.month < now.month
    ):
        payslips.append(
            {
                "id": id_counter,
                "month": current.strftime("%B"),
                "total_salary": salary,
                "status": "Paid",
            }
        )

        id_counter += 1

        # Move to next month
        if current.month == 12:
            current = current.replace(year=current.year + 1, month=1)
        else:
            current = current.replace(month=current.month + 1)

    return payslips


async def get_payslip_data(
    user_id: str,
):

    try:

        # Fetch from users table
        user = get_user_from_db(user_id=user_id)
        joining_date_str = user["joining_date"]

        # Convert to datetime (handles "2026-04-01 00:00:00+00")
        joining_date = datetime.fromisoformat(joining_date_str.replace("Z", "+00:00"))
        role = user["role"]
        salary = ROLE_SALARIES.get(role, 0.0)

        payslips = generate_payslips(joining_date, salary)

        return PaySlipResponse(
            role=role,
            user_id=user_id,
            base_salary=salary,
            joining_date=joining_date_str,
            payslips=payslips,
        )

    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
