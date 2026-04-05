import 'package:dio/dio.dart';

import '../../../features/auth/data/datasource/auth_local_datasource.dart';
import '../../../features/auth/data/models/request_model/refresh_token/refresh_token_request.dart';
import '../../../features/auth/data/models/response_model/auth_response/auth_response_model.dart';
import '../../../features/auth/data/models/response_model/refresh_token_response/refresh_token_response.dart';
import '../../errors/exceptions.dart';
import '../endpoints/auth_endpoints.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.tokenStorage, this.dio);
  final IAuthLocalDatasource tokenStorage;
  final Dio dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path.contains(AuthEndpoints.login) ||
        options.path.contains(AuthEndpoints.register)) {
      return handler.next(options);
    }
    final AuthResponseModel? logionDetails = await tokenStorage.getToken();

    final String? accessToken = logionDetails?.accessToken;

    if (logionDetails != null &&
        accessToken != null &&
        accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      try {
        /// Prevent infinite loop
        if (err.requestOptions.extra['isRetry'] == true) {
          return handler.next(err);
        }

        AuthResponseModel? loginDetails = await tokenStorage.getToken();

        if (loginDetails == null) {
          return handler.next(err);
        }

        final String refreshToken = loginDetails.refreshToken;

        final RefreshTokenResponseModel newResult = await _refreshToken(
          RefreshTokenRequestModel(refreshToken: refreshToken),
        );

        loginDetails = loginDetails.copyWith(
          refreshToken: newResult.refreshToken,
          accessToken: newResult.accessToken,
        );

        await tokenStorage.saveToken(loginDetails);

        final RequestOptions options = err.requestOptions;

        options.headers['Authorization'] = 'Bearer ${loginDetails.accessToken}';
        options.extra['isRetry'] = true;

        final Response<dynamic> response = await Dio().fetch(options);

        return handler.resolve(response);
      } catch (e) {
        await tokenStorage.clearToken();

        return handler.next(err);
      }
    }

    return handler.next(err);
  }

  Future<RefreshTokenResponseModel> _refreshToken(
    RefreshTokenRequestModel refreshToken,
  ) async {
    try {
      final Response<dynamic> refreshResponse = await dio.post(
        AuthEndpoints.refresh,
        data: refreshToken.toJson(),
      );

      if (refreshResponse.statusCode == 200 &&
          refreshResponse.data['status'] == true) {
        final RefreshTokenResponseModel result =
            RefreshTokenResponseModel.fromJson(
              refreshResponse.data['data'] as Map<String, dynamic>,
            );

        return result;
      }
      throw ServerException('Error getting refresh token');
    } catch (e) {
      rethrow;
    }
  }
}
