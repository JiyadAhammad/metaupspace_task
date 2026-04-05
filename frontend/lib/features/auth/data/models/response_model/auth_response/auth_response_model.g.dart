// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    _AuthResponseModel(
      userId: json['user_id'] as String,
      isActiveUser: json['is_active_user'] as bool,
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      department: json['department'] as String,
      role: json['role'] as String,
      manager: json['manager'] as String,
      joiningDate: DateTime.parse(json['joining_date'] as String),
      device: json['device'] as String,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AuthResponseModelToJson(_AuthResponseModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'is_active_user': instance.isActiveUser,
      'email': instance.email,
      'full_name': instance.fullName,
      'department': instance.department,
      'role': instance.role,
      'manager': instance.manager,
      'joining_date': instance.joiningDate.toIso8601String(),
      'device': instance.device,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
