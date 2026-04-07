// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) =>
    _DashboardResponse(
      leaveDetails: LeaveDetails.fromJson(
        json['leave_details'] as Map<String, dynamic>,
      ),
      holidays: (json['holidays'] as List<dynamic>)
          .map((e) => Holiday.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendance: AttendanceSummary.fromJson(
        json['attendance'] as Map<String, dynamic>,
      ),
      employeeDetails: EmployeeDetails.fromJson(
        json['employee_details'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DashboardResponseToJson(_DashboardResponse instance) =>
    <String, dynamic>{
      'leave_details': instance.leaveDetails,
      'holidays': instance.holidays,
      'attendance': instance.attendance,
      'employee_details': instance.employeeDetails,
    };

_LeaveDetails _$LeaveDetailsFromJson(Map<String, dynamic> json) =>
    _LeaveDetails(
      totalLeaves: (json['total_leaves'] as num).toInt(),
      leavesTaken: (json['leaves_taken'] as num).toInt(),
      leavesAvailable: (json['leaves_available'] as num).toInt(),
    );

Map<String, dynamic> _$LeaveDetailsToJson(_LeaveDetails instance) =>
    <String, dynamic>{
      'total_leaves': instance.totalLeaves,
      'leaves_taken': instance.leavesTaken,
      'leaves_available': instance.leavesAvailable,
    };

_Holiday _$HolidayFromJson(Map<String, dynamic> json) => _Holiday(
  id: json['id'] as String,
  name: json['name'] as String,
  date: DateTime.parse(json['date'] as String),
  type: json['type'] as String,
);

Map<String, dynamic> _$HolidayToJson(_Holiday instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'date': instance.date.toIso8601String(),
  'type': instance.type,
};

_AttendanceSummary _$AttendanceSummaryFromJson(Map<String, dynamic> json) =>
    _AttendanceSummary(
      presentDays: (json['present_days'] as num).toInt(),
      absentDays: (json['absent_days'] as num).toInt(),
      totalWorkingDays: (json['total_working_days'] as num).toInt(),
      averageWorkingHours: (json['average_working_hours'] as num).toDouble(),
    );

Map<String, dynamic> _$AttendanceSummaryToJson(_AttendanceSummary instance) =>
    <String, dynamic>{
      'present_days': instance.presentDays,
      'absent_days': instance.absentDays,
      'total_working_days': instance.totalWorkingDays,
      'average_working_hours': instance.averageWorkingHours,
    };

_EmployeeDetails _$EmployeeDetailsFromJson(Map<String, dynamic> json) =>
    _EmployeeDetails(
      userId: json['user_id'] as String,
      isActiveUser: json['is_active_user'] as bool,
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      department: json['department'] as String,
      role: json['role'] as String,
      manager: json['manager'] as String,
      joiningDate: DateTime.parse(json['joining_date'] as String),
      device: json['device'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$EmployeeDetailsToJson(_EmployeeDetails instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'is_active_user': instance.isActiveUser,
      'email': instance.email,
      'full_name': instance.fullName,
      'department': instance.department,
      'role': instance.role,
      'manager': instance.manager,
      'joining_date': instance.joiningDate.toIso8601String(),
      'device': instance.device,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
