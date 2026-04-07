import 'package:dio/dio.dart';

import '../../core/di/injector.dart';
import 'data/datasource/leave_application_remote_datasource.dart';
import 'data/repository/leave_application_repository_impl.dart';
import 'domain/repository/i_leave_application_repository.dart';
import 'domain/usecase/apply_leave_application_usecase.dart';
import 'domain/usecase/get_leave_application_usecase.dart';
import 'presentation/bloc/leave_application_bloc.dart';

Future<void> registerLeaveApplicationDependencies() async {
  /// Datasource
  sl.registerLazySingleton<ILeaveApplicationRemoteDatasource>(
    () => LeaveApplicationRemoteDatasourceImpl(sl<Dio>()),
  );

  /// Repository
  sl.registerLazySingleton<ILeaveApplicationRepository>(
    () =>
        LeaveApplicationRepositoryImpl(sl<ILeaveApplicationRemoteDatasource>()),
  );

  /// UseCases
  sl.registerLazySingleton(
    () => GetLeaveApplicationUseCase(sl<ILeaveApplicationRepository>()),
  );
  sl.registerLazySingleton(
    () => ApplyLeaveApplicationUseCase(sl<ILeaveApplicationRepository>()),
  );

  /// Bloc
  sl.registerFactory(
    () => LeaveApplicationBloc(
      applyLeaveApplicationUseCase: sl<ApplyLeaveApplicationUseCase>(),
      getLeaveApplicationUseCase: sl<GetLeaveApplicationUseCase>(),
    ),
  );
}
