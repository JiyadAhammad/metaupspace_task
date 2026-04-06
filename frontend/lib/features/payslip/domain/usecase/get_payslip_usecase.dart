import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/payslip_entity.dart';
import '../repository/i_payslip_repository.dart';

class GetPayslipUseCase {
  GetPayslipUseCase(this.repository);
  final IPayslipRepository repository;

  Future<Either<Failure, PayslipResult>> call() {
    return repository.getPayslipData();
  }
}
