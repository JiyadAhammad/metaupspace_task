import 'package:dio/dio.dart';

import '../../../core/di/injector.dart';
import '../../core/storage/secure_storage_service.dart';
import 'data/datasource/auth_local_datasource.dart';
import 'data/datasource/auth_remote_datasource.dart';
import 'data/repository/auth_repository_impl.dart';
import 'domain/repositories/i_auth_repository.dart';
import 'domain/usecases/sign_in_usecase.dart';
import 'domain/usecases/sign_up_usecase.dart';
import 'presentation/bloc/bloc/auth_bloc.dart';

Future<void> registerAuthDependencies() async {
  /// Datasource
  sl.registerLazySingleton<IAuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<IAuthLocalDatasource>(
    () => AuthLocalDatasourceImpl(sl<SecureStorageService>()),
  );

  /// Repository
  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepositoryImpl(
      sl<IAuthRemoteDatasource>(),
      sl<IAuthLocalDatasource>(),
    ),
  );

  /// UseCases
  sl.registerLazySingleton(() => SignInUseCase(sl<IAuthRepository>()));

  sl.registerLazySingleton(() => SignUpUseCase(sl<IAuthRepository>()));

  /// Bloc
  sl.registerFactory(
    () => AuthBloc(
      signInUseCase: sl<SignInUseCase>(),
      signUpUseCase: sl<SignUpUseCase>(),
    ),
  );
}
