class DashboardResult {
  DashboardResult({required this.dashboardEntity, required this.message});

  final DashboardEntity dashboardEntity;
  final String message;
}

class DashboardEntity {
  DashboardEntity({
    required this.leaveDetails,
    required this.holidays,
    required this.attendance,
    required this.employee,
  });
  final LeaveDetailsEntity leaveDetails;
  final List<HolidayEntity> holidays;
  final AttendanceSummaryEntity attendance;
  final EmployeeEntity employee;
}

class LeaveDetailsEntity {
  LeaveDetailsEntity({
    required this.totalLeaves,
    required this.leavesTaken,
    required this.leavesAvailable,
  });
  final int totalLeaves;
  final int leavesTaken;
  final int leavesAvailable;
}

class HolidayEntity {
  HolidayEntity({
    required this.id,
    required this.name,
    required this.date,
    required this.type,
  });
  final String id;
  final String name;
  final DateTime date;
  final String type;
}

class AttendanceSummaryEntity {
  AttendanceSummaryEntity({
    required this.presentDays,
    required this.absentDays,
    required this.totalWorkingDays,
    required this.averageWorkingHours,
  });
  final int presentDays;
  final int absentDays;
  final int totalWorkingDays;
  final double averageWorkingHours;
}

class EmployeeEntity {
  EmployeeEntity({
    required this.userId,
    required this.isActiveUser,
    required this.email,
    required this.fullName,
    required this.department,
    required this.role,
    required this.manager,
    required this.joiningDate,
    required this.device,
    required this.createdAt,
    required this.updatedAt,
  });
  final String userId;
  final bool isActiveUser;
  final String email;
  final String fullName;
  final String department;
  final String role;
  final String manager;
  final DateTime joiningDate;
  final String device;
  final DateTime createdAt;
  final DateTime updatedAt;
}
