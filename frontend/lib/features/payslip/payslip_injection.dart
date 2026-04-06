import 'package:dio/dio.dart';

import '../../core/di/injector.dart';
import 'data/datasource/payslip_remote_datasource.dart';
import 'data/repository/payslip_repository_impl.dart';
import 'domain/repository/i_payslip_repository.dart';
import 'domain/usecase/get_payslip_usecase.dart';
import 'presentation/bloc/payslip_bloc.dart';

Future<void> registerPayslipDependencies() async {
  /// Datasource
  sl.registerLazySingleton<IPayslipDataSource>(
    () => PayslipRemoteDatasourceImpl(sl<Dio>()),
  );

  /// Repository
  sl.registerLazySingleton<IPayslipRepository>(
    () => PayslipRepositoryImpl(sl<IPayslipDataSource>()),
  );

  /// UseCases
  sl.registerLazySingleton(() => GetPayslipUseCase(sl<IPayslipRepository>()));

  /// Bloc
  sl.registerFactory(
    () => PayslipBloc(getPayslipUseCase: sl<GetPayslipUseCase>()),
  );
}
