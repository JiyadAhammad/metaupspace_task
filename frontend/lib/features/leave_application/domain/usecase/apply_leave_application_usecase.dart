import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/leave_application_entity.dart';
import '../param/leave_application_request_param.dart';
import '../repository/i_leave_application_repository.dart';

class ApplyLeaveApplicationUseCase {
  ApplyLeaveApplicationUseCase(this.repository);
  final ILeaveApplicationRepository repository;

  Future<Either<Failure, ApplyLeaveApplicationResult>> call({
    required LeaveApplicationRequestParam param,
  }) {
    return repository.applyLeaveApplication(requestParam: param);
  }
}
