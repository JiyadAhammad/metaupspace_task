part of 'payslip_bloc.dart';

@freezed
abstract class PayslipEvent with _$PayslipEvent {
  const factory PayslipEvent.getPayslipData() = _GetPayslipData;
}
