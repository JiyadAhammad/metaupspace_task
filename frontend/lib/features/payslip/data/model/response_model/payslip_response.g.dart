// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaySlipResponse _$PaySlipResponseFromJson(Map<String, dynamic> json) =>
    _PaySlipResponse(
      role: json['role'] as String,
      baseSalary: (json['base_salary'] as num).toDouble(),
      userId: json['user_id'] as String,
      joiningDate: json['joining_date'] as String,
      payslips:
          (json['payslips'] as List<dynamic>?)
              ?.map((e) => PaySlipItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaySlipResponseToJson(_PaySlipResponse instance) =>
    <String, dynamic>{
      'role': instance.role,
      'base_salary': instance.baseSalary,
      'user_id': instance.userId,
      'joining_date': instance.joiningDate,
      'payslips': instance.payslips,
    };

_PaySlipItem _$PaySlipItemFromJson(Map<String, dynamic> json) => _PaySlipItem(
  id: (json['id'] as num).toInt(),
  month: json['month'] as String,
  totalSalary: (json['total_salary'] as num).toDouble(),
  status: json['status'] as String,
);

Map<String, dynamic> _$PaySlipItemToJson(_PaySlipItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'month': instance.month,
      'total_salary': instance.totalSalary,
      'status': instance.status,
    };
