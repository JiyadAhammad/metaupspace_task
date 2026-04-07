import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/leave_application_entity.dart';
import '../repository/i_leave_application_repository.dart';

class GetLeaveApplicationUseCase {
  GetLeaveApplicationUseCase(this.repository);
  final ILeaveApplicationRepository repository;

  Future<Either<Failure, GetLeaveApplicationResult>> call() {
    return repository.getLeaveApplications();
  }
}
