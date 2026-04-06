class PayslipResult {
  PayslipResult({required this.paySlipEntity, required this.message});

  final PaySlipEntity paySlipEntity;
  final String message;
}

class PaySlipEntity {
  PaySlipEntity({
    required this.role,
    required this.userId,
    required this.joiningDate,
    required this.payslips,
    required this.baseSalary,
  });
  final String role;
  final double baseSalary;
  final String userId;
  final DateTime joiningDate;
  final List<PaySlipItemEntity> payslips;
}

class PaySlipItemEntity {
  PaySlipItemEntity({
    required this.id,
    required this.month,
    required this.totalSalary,
    required this.status,
  });
  final int id;
  final String month;
  final double totalSalary;
  final String status;
}
