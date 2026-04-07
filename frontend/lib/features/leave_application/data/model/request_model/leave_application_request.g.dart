// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_application_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveApplicationRequestModel _$LeaveApplicationRequestModelFromJson(
  Map<String, dynamic> json,
) => _LeaveApplicationRequestModel(
  type: json['type'] as String,
  reason: json['reason'] as String,
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: DateTime.parse(json['end_date'] as String),
);

Map<String, dynamic> _$LeaveApplicationRequestModelToJson(
  _LeaveApplicationRequestModel instance,
) => <String, dynamic>{
  'type': instance.type,
  'reason': instance.reason,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
};
