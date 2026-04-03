import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/model/api_response.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/params/sign_in_param.dart';
import '../../domain/params/sign_up_params.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../datasource/auth_local_datasource.dart';
import '../datasource/auth_remote_datasource.dart';
import '../mappers/auth_user_mapper.dart';
import '../models/request_model/login_model/sign_in_request.dart';
import '../models/request_model/sign_up_model/sign_up_request.dart';
import '../models/response_model/auth_response_model.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl(this.remote, this.local);
  final IAuthRemoteDatasource remote;
  final IAuthLocalDatasource local;

  @override
  Future<Either<Failure, AuthResult>> signIn(SignInParams params) async {
    final SignInRequest request = SignInRequest(
      email: params.email,
      password: params.password,
    );

    final ApiResponse<AuthResponseModel> result = await remote.signIn(request);
    return _handleAuthResponse(result);
  }

  @override
  Future<Either<Failure, AuthResult>> signUp(SignUpParams params) async {
    final SignUpRequest request = SignUpRequest(
      fullName: params.fullName,
      email: params.email,
      password: params.password,
      device: Platform.isAndroid ? 'android' : 'ios',
    );

    final ApiResponse<AuthResponseModel> result = await remote.signUp(request);
    return _handleAuthResponse(result);
  }

  Future<Either<Failure, AuthResult>> _handleAuthResponse(
    ApiResponse<AuthResponseModel> result,
  ) async {
    if (result.data == null) {
      return left(AuthFailure(result.message ?? 'Authentication failed'));
    }

    await local.saveToken(result.data!.accessToken);

    final AuthResult authResult = AuthResult(
      user: result.data!.toEntity(),
      message: result.message ?? '',
    );

    return right(authResult);
  }
}
