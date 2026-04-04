// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      password: json['password'] as String,
      department: json['department'] as String,
      role: json['role'] as String,
      manager: json['manager'] as String,
      joiningDate: DateTime.parse(json['joining_date'] as String),
      device: json['device'] as String,
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'full_name': instance.fullName,
      'password': instance.password,
      'department': instance.department,
      'role': instance.role,
      'manager': instance.manager,
      'joining_date': instance.joiningDate.toIso8601String(),
      'device': instance.device,
    };
