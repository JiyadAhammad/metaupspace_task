class ApplyLeaveApplicationResult {
  ApplyLeaveApplicationResult({
    required this.leaveApplicationEntity,
    required this.message,
  });

  final LeaveApplicationEntity leaveApplicationEntity;
  final String message;
}

class GetLeaveApplicationResult {
  GetLeaveApplicationResult({required this.leaveApplications, required this.message});
  final List<LeaveApplicationEntity> leaveApplications;
  final String message;
}

class LeaveApplicationEntity {
  const LeaveApplicationEntity({
    required this.id,
    required this.userId,
    required this.type,
    required this.reason,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.createdAt,
  });
  final String id;
  final String userId;
  final String type;
  final String reason;
  final DateTime startDate;
  final DateTime endDate;
  final bool status;
  final DateTime createdAt;
}
