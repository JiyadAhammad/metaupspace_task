import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/leave_application_entity.dart';
import '../param/leave_application_request_param.dart';

abstract interface class ILeaveApplicationRepository {
  Future<Either<Failure, ApplyLeaveApplicationResult>> applyLeaveApplication({
    required LeaveApplicationRequestParam requestParam,
  });
  Future<Either<Failure, GetLeaveApplicationResult>> getLeaveApplications();
}
