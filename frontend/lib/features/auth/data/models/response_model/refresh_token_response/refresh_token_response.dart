import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';

@freezed
abstract class RefreshTokenResponseModel with _$RefreshTokenResponseModel {
  const factory RefreshTokenResponseModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
  }) = _RefreshTokenResponseModel;

  factory RefreshTokenResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseModelFromJson(json);
}
