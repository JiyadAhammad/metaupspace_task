import '../../domain/entity/leave_application_entity.dart';
import '../../domain/param/leave_application_request_param.dart';
import '../model/request_model/leave_application_request.dart';
import '../model/response_model/leave_application_response.dart';

/// Extension for mapping LeaveApplicationResponse → LeaveApplicationEntity
extension LeaveDataMapper on LeaveApplicationResponse {
  LeaveApplicationEntity toEntity() {
    return LeaveApplicationEntity(
      id: id,
      userId: userId,
      type: type,
      reason: reason,
      startDate: startDate,
      endDate: endDate,
      status: status,
      createdAt: createdAt,
    );
  }
}

extension LeaveApplicationListMapper on List<LeaveApplicationResponse> {
  List<LeaveApplicationEntity> toEntityList() {
    return map((LeaveApplicationResponse e) => e.toEntity()).toList();
  }
}

/// Convert Domain Params → API Request Model
extension LeaveParamsMapper on LeaveApplicationRequestParam {
  LeaveApplicationRequestModel toRequest() {
    return LeaveApplicationRequestModel(
      type: type,
      reason: reason,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
