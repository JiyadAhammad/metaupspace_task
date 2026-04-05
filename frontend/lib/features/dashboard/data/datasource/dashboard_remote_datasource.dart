import 'package:dio/dio.dart';

import '../../../../core/model/api_response.dart';
import '../../../../core/network/api_response_wrapper.dart';
import '../../../../core/network/base_remote_data_source.dart';
import '../../../../core/network/endpoints/dashboard_endpoints.dart';
import '../model/response_model/dashboard_response.dart';

abstract interface class IDashboardDataSource {
  Future<ApiResponse<DashboardResponse>> getDashboardData();
}

class DashboardRemoteDatasourceImpl extends BaseRemoteDataSourceImpl
    implements IDashboardDataSource {
  DashboardRemoteDatasourceImpl(this.dio);
  final Dio dio;
  @override
  Future<ApiResponse<DashboardResponse>> getDashboardData() {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.get(DashboardEndpoints.dashboard);

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            DashboardResponse.fromJson(data! as Map<String, dynamic>),
      );
    });
  }
}
