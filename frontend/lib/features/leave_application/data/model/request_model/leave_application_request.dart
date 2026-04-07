import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_application_request.freezed.dart';
part 'leave_application_request.g.dart';

@freezed
abstract class LeaveApplicationRequestModel
    with _$LeaveApplicationRequestModel {
  const factory LeaveApplicationRequestModel({
    required String type,
    required String reason,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
  }) = _LeaveApplicationRequestModel;

  factory LeaveApplicationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveApplicationRequestModelFromJson(json);
}
