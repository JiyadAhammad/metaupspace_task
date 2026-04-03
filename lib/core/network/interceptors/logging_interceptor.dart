import 'package:dio/dio.dart';
import '../../logger/app_logger.dart';

class LoggingInterceptor extends Interceptor {
  static const String _border =
      '════════════════════════════════════════════════════════════════════';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String logMessage =
        '''
$_border
📤 REQUEST
URL        : ${options.baseUrl}${options.path}
METHOD     : ${options.method}
HEADERS    : ${options.headers}
TOKEN      : ${options.headers['Authorization']}
QUERY      : ${options.queryParameters}
BODY       : ${options.data}
$_border
''';

    AppLogger.debug(logMessage, tag: 'API REQUEST');

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final String logMessage =
        '''
$_border
📥 RESPONSE
URL        : ${response.requestOptions.baseUrl}${response.requestOptions.path}
METHOD     : ${response.requestOptions.method}
STATUSCODE : ${response.statusCode}
RESPONSE   : ${response.data}
$_border
''';

    AppLogger.success(logMessage, tag: 'API RESPONSE');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final String logMessage =
        '''
$_border
❌ ERROR
URL        : ${err.requestOptions.baseUrl}${err.requestOptions.path}
METHOD     : ${err.requestOptions.method}
STATUSCODE : ${err.response?.statusCode}
MESSAGE    : ${err.message}
RESPONSE   : ${err.response?.data}
$_border
''';

    AppLogger.error(
      logMessage,
      tag: 'API ERROR',
      error: err,
      stackTrace: err.stackTrace,
    );

    handler.next(err);
  }
}
