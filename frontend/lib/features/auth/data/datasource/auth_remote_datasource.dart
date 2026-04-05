import 'package:dio/dio.dart';

import '../../../../core/model/api_response.dart';
import '../../../../core/network/api_response_wrapper.dart';
import '../../../../core/network/base_remote_data_source.dart';
import '../../../../core/network/endpoints/auth_endpoints.dart';
import '../models/request_model/login_model/sign_in_request.dart';
import '../models/request_model/sign_up_model/sign_up_request.dart';
import '../models/response_model/auth_response/auth_response_model.dart';

abstract interface class IAuthRemoteDatasource {
  Future<ApiResponse<AuthResponseModel>> signIn(SignInRequest request);

  Future<ApiResponse<AuthResponseModel>> signUp(SignUpRequest request);
}

class AuthRemoteDatasourceImpl extends BaseRemoteDataSourceImpl
    implements IAuthRemoteDatasource {
  AuthRemoteDatasourceImpl(this.dio);
  final Dio dio;

  @override
  Future<ApiResponse<AuthResponseModel>> signIn(SignInRequest request) async {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.post(
        AuthEndpoints.login,
        data: request.toJson(),
      );

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            AuthResponseModel.fromJson(data! as Map<String, dynamic>),
      );
    });
  }

  @override
  Future<ApiResponse<AuthResponseModel>> signUp(SignUpRequest request) async {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.post(
        AuthEndpoints.register,
        data: request.toJson(),
      );

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            AuthResponseModel.fromJson(data! as Map<String, dynamic>),
      );
    });
  }
}
