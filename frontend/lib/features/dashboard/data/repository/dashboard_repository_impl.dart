import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/model/api_response.dart';
import '../../domain/entity/dashboard_entity.dart';
import '../../domain/repository/i_dashboard_repository.dart';
import '../datasource/dashboard_remote_datasource.dart';
import '../mapper/dashboard_response_mapper.dart';
import '../model/response_model/dashboard_response.dart';

class DashboardRepositoryImpl implements IDashboardRepository {
  const DashboardRepositoryImpl(this.dataSource);

  final IDashboardDataSource dataSource;
  @override
  Future<Either<Failure, DashboardResult>> getDashboardData() async {
    try {
      final ApiResponse<DashboardResponse> result = await dataSource
          .getDashboardData();

      if (result.data == null) {
        return left(AuthFailure(result.message ?? 'Authentication failed'));
      }

      final DashboardResult dashboardResult = DashboardResult(
        dashboardEntity: result.data!.toEntity(),
        message: result.message ?? '',
      );

      return right(dashboardResult);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
