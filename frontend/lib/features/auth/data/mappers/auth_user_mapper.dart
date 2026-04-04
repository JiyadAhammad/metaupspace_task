import '../../domain/entities/user_entity.dart';
import '../models/response_model/auth_response_model.dart';

extension AuthMapper on AuthResponseModel {
  AuthEntity toEntity() {
    return AuthEntity(
      userId: userId,
      email: email,
      fullName: fullName,
      device: device,
      accessToken: accessToken,
      refreshToken: refreshToken,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
