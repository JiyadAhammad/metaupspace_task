

import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/model/api_response.dart';
import '../../domain/entity/payslip_entity.dart';
import '../../domain/repository/i_payslip_repository.dart';
import '../datasource/payslip_remote_datasource.dart';
import '../mapper/payslip_response_mapper.dart';
import '../model/response_model/payslip_response.dart';

class PayslipRepositoryImpl implements IPayslipRepository {
  PayslipRepositoryImpl(this.dataSource);
  final IPayslipDataSource dataSource;
  @override
  Future<Either<Failure, PayslipResult>> getPayslipData() async {
    try {
      final ApiResponse<PaySlipResponse> result = await dataSource
          .getPayslipData();

      if (result.data == null) {
        return left(AuthFailure(result.message ?? 'Authentication failed'));
      }

      final PayslipResult payslipResult = PayslipResult(
        paySlipEntity: result.data!.toEntity(),
        message: result.message ?? '',
      );

      return right(payslipResult);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
