import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/dashboard_entity.dart';
import '../repository/i_dashboard_repository.dart';

class DashboardUseCase {
  DashboardUseCase(this.repository);
  final IDashboardRepository repository;

  Future<Either<Failure, DashboardResult>> call() {
    return repository.getDashboardData();
  }
}
