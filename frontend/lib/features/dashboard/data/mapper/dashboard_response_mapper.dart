// DashboardResponse → DashboardEntity
import '../../domain/entity/dashboard_entity.dart';
import '../model/response_model/dashboard_response.dart';

extension DashboardResponseMapper on DashboardResponse {
  DashboardEntity toEntity() {
    return DashboardEntity(
      leaveDetails: leaveDetails.toEntity(),
      holidays: holidays.map((Holiday e) => e.toEntity()).toList(),
      attendance: attendance.toEntity(),
      employee: employeeDetails.toEntity(),
    );
  }
}

extension LeaveDetailsMapper on LeaveDetails {
  LeaveDetailsEntity toEntity() {
    return LeaveDetailsEntity(
      totalLeaves: totalLeaves,
      leavesTaken: leavesTaken,
      leavesAvailable: leavesAvailable,
    );
  }
}

extension HolidayMapper on Holiday {
  HolidayEntity toEntity() {
    return HolidayEntity(id: id, name: name, date: date, type: type);
  }
}

extension AttendanceMapper on AttendanceSummary {
  AttendanceSummaryEntity toEntity() {
    return AttendanceSummaryEntity(
      presentDays: presentDays,
      absentDays: absentDays,
      totalWorkingDays: totalWorkingDays,
      averageWorkingHours: averageWorkingHours,
    );
  }
}

extension EmployeeMapper on EmployeeDetails {
  EmployeeEntity toEntity() {
    return EmployeeEntity(
      userId: userId,
      isActiveUser: isActiveUser,
      email: email,
      fullName: fullName,
      department: department,
      role: role,
      manager: manager,
      joiningDate: joiningDate,
      device: device,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
