import 'package:dio/dio.dart';

import '../../../../core/model/api_response.dart';
import '../../../../core/network/api_response_wrapper.dart';
import '../../../../core/network/base_remote_data_source.dart';
import '../../../../core/network/endpoints/leave_application_endpoints.dart';
import '../model/request_model/leave_application_request.dart';
import '../model/response_model/leave_application_response.dart';

abstract interface class ILeaveApplicationRemoteDatasource {
  Future<ApiResponse<LeaveApplicationResponse>> applyLeaveApplication({
    required LeaveApplicationRequestModel applicationRequest,
  });
  Future<ApiResponse<List<LeaveApplicationResponse>>>
  getLeaveApplicationsData();
}

class LeaveApplicationRemoteDatasourceImpl extends BaseRemoteDataSourceImpl
    implements ILeaveApplicationRemoteDatasource {
  LeaveApplicationRemoteDatasourceImpl(this.dio);
  final Dio dio;

  @override
  Future<ApiResponse<LeaveApplicationResponse>> applyLeaveApplication({
    required LeaveApplicationRequestModel applicationRequest,
  }) {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.post(
        '${LeaveApplicationEndpoints.leave}apply',
        data: applicationRequest.toJson(),
      );

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) =>
            LeaveApplicationResponse.fromJson(data! as Map<String, dynamic>),
      );
    });
  }

  @override
  Future<ApiResponse<List<LeaveApplicationResponse>>>
  getLeaveApplicationsData() {
    return safeApiCall(() async {
      final Response<dynamic> res = await dio.get(
        LeaveApplicationEndpoints.leave,
      );

      return ApiResponseMapper.fromJson(
        res.data as Map<String, dynamic>,
        (Object? data) => mapList(data, LeaveApplicationResponse.fromJson),
      );
    });
  }
}
