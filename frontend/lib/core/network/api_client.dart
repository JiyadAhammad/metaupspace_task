import 'package:dio/dio.dart';
import '../../features/auth/data/datasource/auth_local_datasource.dart';
import '../app_config/app_config.dart';
import '../environment/app_env.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/retry_interceptor.dart';

class ApiClient {
  ApiClient(this.storage) {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: <String, dynamic>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll(<Interceptor>[
      AuthInterceptor(storage, dio),
      if (Environment.current == AppEnvironment.dev) LoggingInterceptor(),
      ErrorInterceptor(),
      RetryInterceptor(dio),
    ]);
  }

  final IAuthLocalDatasource storage;
  late final Dio dio;
}
