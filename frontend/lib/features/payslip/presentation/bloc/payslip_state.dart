part of 'payslip_bloc.dart';

@freezed
abstract class PayslipState with _$PayslipState {
  const factory PayslipState({
    @Default(false) bool isLoading,
    PaySlipEntity? payslip,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _PayslipState;
}
