import 'package:dio/dio.dart';

import '../../../../core/model/api_response.dart';
import '../../../../core/network/api_response_wrapper.dart';
import '../../../../core/network/base_remote_data_source.dart';
import '../../../../core/network/endpoints/payslip_endpoints.dart';
import '../model/response_model/payslip_response.dart';

abstract interface class IPayslipDataSource {
  Future<ApiResponse<PaySlipResponse>> getPayslipData();
}

class PayslipRemoteDatasourceImpl extends BaseRemoteDataSourceImpl
    implements IPayslipDataSource {
  PayslipRemoteDatasourceImpl(this.dio);
  final Dio dio;
  @override
  Future<ApiResponse<PaySlipResponse>> getPayslipData() {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.get(PayslipEndpoints.dashboard);

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            PaySlipResponse.fromJson(data! as Map<String, dynamic>),
      );
    });
  }
}
