import 'dart:math';

import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor(this.dio, {this.maxRetries = 3});
  final Dio dio;
  final int maxRetries;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_shouldRetry(err)) {
      int retryCount = (err.requestOptions.extra['retry_count'] ?? 0) as int;
      if (retryCount < maxRetries) {
        retryCount++;
        err.requestOptions.extra['retry_count'] = retryCount;

        final int delay = pow(2, retryCount).toInt() * 1000;
        await Future<dynamic>.delayed(Duration(milliseconds: delay));

        try {
          final Response<dynamic> response = await dio.fetch(
            err.requestOptions,
          );
          return handler.resolve(response);
        } catch (e) {
          return handler.next(err);
        }
      }
    }
    return handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.connectionError ||
        (err.response != null && err.response!.statusCode! >= 500);
  }
}
