import 'package:dio/dio.dart';

import '../../logger/app_logger.dart';

class ErrorInterceptor extends Interceptor {
  // @override
  // void onError(DioException err, ErrorInterceptorHandler handler) {
  //   final int? statusCode = err.response?.statusCode;

  //   switch (statusCode) {
  //     case 401:
  //       // trigger logout
  //       break;

  //     case 403:
  //       // forbidden access
  //       break;

  //     case 500:
  //       // server issue
  //       break;
  //   }

  //   handler.next(err);
  // }

  ErrorInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    AppLogger.error('Network error', error: err, stackTrace: err.stackTrace);
    handler.next(err);
  }
}
