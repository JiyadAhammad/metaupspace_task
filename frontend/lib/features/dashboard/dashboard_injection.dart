import 'package:dio/dio.dart';

import '../../../core/di/injector.dart';
import 'data/datasource/dashboard_remote_datasource.dart';
import 'data/repository/dashboard_repository_impl.dart';
import 'domain/repository/i_dashboard_repository.dart';
import 'domain/usecase/dashboard_usecase.dart';
import 'presentation/bloc/dashboard_bloc.dart';

Future<void> registerDashboardDependencies() async {
  /// Datasource
  sl.registerLazySingleton<IDashboardDataSource>(
    () => DashboardRemoteDatasourceImpl(sl<Dio>()),
  );

  /// Repository
  sl.registerLazySingleton<IDashboardRepository>(
    () => DashboardRepositoryImpl(sl<IDashboardDataSource>()),
  );

  /// UseCases
  sl.registerLazySingleton(() => DashboardUseCase(sl<IDashboardRepository>()));

  /// Bloc
  sl.registerFactory(
    () => DashboardBloc(dashboardUseCase: sl<DashboardUseCase>()),
  );
}
