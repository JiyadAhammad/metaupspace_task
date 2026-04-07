import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/model/api_response.dart';
import '../../domain/entity/leave_application_entity.dart';
import '../../domain/param/leave_application_request_param.dart';
import '../../domain/repository/i_leave_application_repository.dart';
import '../datasource/leave_application_remote_datasource.dart';
import '../mapper/leave_application_response_mapper.dart';
import '../model/response_model/leave_application_response.dart';

class LeaveApplicationRepositoryImpl implements ILeaveApplicationRepository {
  LeaveApplicationRepositoryImpl(this.dataSource);
  final ILeaveApplicationRemoteDatasource dataSource;

  @override
  Future<Either<Failure, ApplyLeaveApplicationResult>> applyLeaveApplication({
    required LeaveApplicationRequestParam requestParam,
  }) async {
    try {
      final ApiResponse<LeaveApplicationResponse> result = await dataSource
          .applyLeaveApplication(applicationRequest: requestParam.toRequest());

      if (result.data == null) {
        return left(AuthFailure(result.message ?? 'Authentication failed'));
      }

      final ApplyLeaveApplicationResult leaveApplicationResult =
          ApplyLeaveApplicationResult(
            leaveApplicationEntity: result.data!.toEntity(),
            message: result.message ?? '',
          );

      return right(leaveApplicationResult);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetLeaveApplicationResult>>
  getLeaveApplications() async {
    try {
      final ApiResponse<List<LeaveApplicationResponse>> result =
          await dataSource.getLeaveApplicationsData();

      if (result.data == null) {
        return left(AuthFailure(result.message ?? 'Authentication failed'));
      }

      final GetLeaveApplicationResult leaveApplicationResult =
          GetLeaveApplicationResult(
            leaveApplications: result.data!.toEntityList(),
            message: result.message ?? '',
          );

      return right(leaveApplicationResult);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
