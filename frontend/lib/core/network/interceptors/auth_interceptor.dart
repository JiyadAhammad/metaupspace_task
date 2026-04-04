import 'package:dio/dio.dart';

import '../../../features/auth/data/datasource/auth_local_datasource.dart';
import '../../../features/auth/data/models/response_model/auth_response_model.dart';
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

  // @override
  // Future<void> onError(
  //   DioException err,
  //   ErrorInterceptorHandler handler,
  // ) async {
  //
  //   if (err.response?.statusCode == 401) {
  //     try {
  //       /// Prevent infinite loop
  //       if (err.requestOptions.extra['isRetry'] == true) {
  //         return handler.next(err);
  //       }

  //
  //       final refreshToken = await tokenStorage.getRefreshToken();

  //       if (refreshToken == null) {
  //         return handler.next(err);
  //       }

  //
  //       final newToken = await _refreshToken(refreshToken);

  //
  //       await tokenStorage.saveToken(newToken);

  //
  //       final RequestOptions options = err.requestOptions;

  //       options.headers['Authorization'] = 'Bearer $newToken';
  //       options.extra['isRetry'] = true;

  //       final response = await Dio().fetch(options);

  //       return handler.resolve(response);
  //     } catch (e) {
  //
  //       await tokenStorage.clearToken();

  //       return handler.next(err);
  //     }
  //   }

  //   return handler.next(err);
  // }

  // /// 🔧 Mock refresh function (replace with real API call)
  // Future<String> _refreshToken(String refreshToken) async {
  //   // TODO: call your backend / Supabase refresh endpoint
  //   // Example:
  //   // final response = await dio.post('/auth/refresh', data: {...});
  //   // return response.data['access_token'];

  //   throw UnimplementedError('Implement refresh token API');
  // }
}
