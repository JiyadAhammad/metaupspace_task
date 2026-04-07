// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveApplicationResponse _$LeaveApplicationResponseFromJson(
  Map<String, dynamic> json,
) => _LeaveApplicationResponse(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  type: json['type'] as String,
  reason: json['reason'] as String,
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: DateTime.parse(json['end_date'] as String),
  status: json['status'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$LeaveApplicationResponseToJson(
  _LeaveApplicationResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'type': instance.type,
  'reason': instance.reason,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
  'status': instance.status,
  'created_at': instance.createdAt.toIso8601String(),
};
