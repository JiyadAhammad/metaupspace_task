import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_response.freezed.dart';
part 'dashboard_response.g.dart';

@freezed
abstract class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    @JsonKey(name: 'leave_details') required LeaveDetails leaveDetails,
    required List<Holiday> holidays,
    required AttendanceSummary attendance,
    @JsonKey(name: 'employee_details') required EmployeeDetails employeeDetails,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@freezed
abstract class LeaveDetails with _$LeaveDetails {
  const factory LeaveDetails({
    @JsonKey(name: 'total_leaves') required int totalLeaves,
    @JsonKey(name: 'leaves_taken') required int leavesTaken,
    @JsonKey(name: 'leaves_available') required int leavesAvailable,
  }) = _LeaveDetails;

  factory LeaveDetails.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailsFromJson(json);
}

@freezed
abstract class Holiday with _$Holiday {
  const factory Holiday({
    required String id,
    required String name,
    required DateTime date,
    required String type,
  }) = _Holiday;

  factory Holiday.fromJson(Map<String, dynamic> json) =>
      _$HolidayFromJson(json);
}

@freezed
abstract class AttendanceSummary with _$AttendanceSummary {
  const factory AttendanceSummary({
    @JsonKey(name: 'present_days') required int presentDays,
    @JsonKey(name: 'absent_days') required int absentDays,
    @JsonKey(name: 'total_working_days') required int totalWorkingDays,
    @JsonKey(name: 'average_working_hours') required double averageWorkingHours,
  }) = _AttendanceSummary;

  factory AttendanceSummary.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSummaryFromJson(json);
}

@freezed
abstract class EmployeeDetails with _$EmployeeDetails {
  const factory EmployeeDetails({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_active_user') required bool isActiveUser,
    required String email,
    @JsonKey(name: 'full_name') required String fullName,
    required String department,
    required String role,
    required String manager,
    @JsonKey(name: 'joining_date') required DateTime joiningDate,
    required String device,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _EmployeeDetails;

  factory EmployeeDetails.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDetailsFromJson(json);
}
