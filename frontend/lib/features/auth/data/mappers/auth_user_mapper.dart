import '../../domain/entities/user_entity.dart';
import '../../domain/params/sign_up_params.dart';
import '../models/request_model/sign_up_model/sign_up_request.dart';
import '../models/response_model/auth_response_model.dart';

extension AuthMapper on AuthResponseModel {
  AuthEntity toEntity() {
    return AuthEntity(
      userId: userId,
      isActiveUser: isActiveUser,
      email: email,
      fullName: fullName,
      department: department,
      role: role,
      manager: manager,
      joiningDate: joiningDate,
      device: device,
      accessToken: accessToken,
      refreshToken: refreshToken,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension SignUpParamsMapper on SignUpParams {
  SignUpRequest toRequest() {
    return SignUpRequest(
      email: email,
      fullName: fullName,
      password: password,
      department: department,
      role: role,
      manager: manager,
      joiningDate: joiningDate,
      device: device,
    );
  }
}
