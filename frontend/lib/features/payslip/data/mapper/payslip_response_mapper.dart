import '../../domain/entity/payslip_entity.dart';
import '../model/response_model/payslip_response.dart';

extension PaySlipMapper on PaySlipResponse {
  PaySlipEntity toEntity() {
    return PaySlipEntity(
      role: role,
      userId: userId,
      baseSalary: baseSalary,
      joiningDate: DateTime.parse(joiningDate),

      payslips: payslips
          .map(
            (PaySlipItem e) => PaySlipItemEntity(
              id: e.id,
              month: e.month,
              totalSalary: e.totalSalary,
              status: e.status,
            ),
          )
          .toList(),
    );
  }
}
