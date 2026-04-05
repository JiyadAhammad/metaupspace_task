import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/dashboard_entity.dart';

abstract interface class IDashboardRepository {
  Future<Either<Failure, DashboardResult>> getDashboardData();
}
