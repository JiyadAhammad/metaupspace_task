import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import '../../features/auth/auth_injection.dart';
import '../../features/auth/data/datasource/auth_local_datasource.dart';
import '../../features/dashboard/dashboard_injection.dart';
import '../../features/leave_application/leave_application_injection.dart';
import '../../features/payslip/payslip_injection.dart';
import '../app_config/auth_session.dart';
import '../network/api_client.dart';
import '../storage/secure_storage_service.dart';

final GetIt sl = GetIt.instance;

Future<void> setupInjector() async {
  await _registerCore();
  await registerAuthDependencies();
  await registerDashboardDependencies();
  await registerPayslipDependencies();
  await registerLeaveApplicationDependencies();
}

Future<void> _registerCore() async {
  /// Flutter Secure Storage
  sl.registerLazySingleton(() => const FlutterSecureStorage());

  /// Secure Storage Service
  sl.registerLazySingleton(
    () => SecureStorageService(sl<FlutterSecureStorage>()),
  );

  /// Auth Session (AFTER storage is ready)
  final AuthSession authSession = AuthSession();
  await authSession.init();

  sl.registerSingleton<AuthSession>(authSession);

  /// Api Client
  sl.registerLazySingleton<ApiClient>(
    () => ApiClient(sl<IAuthLocalDatasource>()),
  );

  /// Dio
  sl.registerLazySingleton(() => sl<ApiClient>().dio);
}
