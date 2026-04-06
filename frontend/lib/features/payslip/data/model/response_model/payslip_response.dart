import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslip_response.freezed.dart';
part 'payslip_response.g.dart';

@freezed
abstract class PaySlipResponse with _$PaySlipResponse {
  const factory PaySlipResponse({
    required String role,
    @JsonKey(name: 'base_salary') required double baseSalary,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'joining_date') required String joiningDate,
    @JsonKey(defaultValue: <PaySlipItem>[]) required List<PaySlipItem> payslips,
  }) = _PaySlipResponse;

  factory PaySlipResponse.fromJson(Map<String, dynamic> json) =>
      _$PaySlipResponseFromJson(json);
}

@freezed
abstract class PaySlipItem with _$PaySlipItem {
  const factory PaySlipItem({
    required int id,
    required String month,
    @JsonKey(name: 'total_salary') required double totalSalary,
    required String status,
  }) = _PaySlipItem;

  factory PaySlipItem.fromJson(Map<String, dynamic> json) =>
      _$PaySlipItemFromJson(json);
}
