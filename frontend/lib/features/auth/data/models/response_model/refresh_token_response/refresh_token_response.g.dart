// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenResponseModel _$RefreshTokenResponseModelFromJson(
  Map<String, dynamic> json,
) => _RefreshTokenResponseModel(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
  expiresAt: DateTime.parse(json['expires_at'] as String),
);

Map<String, dynamic> _$RefreshTokenResponseModelToJson(
  _RefreshTokenResponseModel instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'expires_at': instance.expiresAt.toIso8601String(),
};
