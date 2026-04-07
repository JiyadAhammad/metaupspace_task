class LeaveApplicationRequestParam {
  const LeaveApplicationRequestParam({
    required this.type,
    required this.reason,
    required this.startDate,
    required this.endDate,
  });
  final String type;
  final String reason;
  final DateTime startDate;
  final DateTime endDate;
}
