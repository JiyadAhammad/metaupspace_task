import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_request.freezed.dart';
part 'refresh_token_request.g.dart';

@freezed
abstract class RefreshTokenRequestModel with _$RefreshTokenRequestModel {
  const factory RefreshTokenRequestModel({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshTokenRequestModel;

  factory RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestModelFromJson(json);
}
