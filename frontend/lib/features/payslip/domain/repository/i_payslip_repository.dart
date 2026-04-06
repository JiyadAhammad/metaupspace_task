import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entity/payslip_entity.dart';

abstract interface class IPayslipRepository {
  Future<Either<Failure, PayslipResult>> getPayslipData();
}
