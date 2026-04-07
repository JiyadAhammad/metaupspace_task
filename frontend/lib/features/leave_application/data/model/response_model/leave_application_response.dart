import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_application_response.freezed.dart';
part 'leave_application_response.g.dart';

@freezed
abstract class LeaveApplicationResponse with _$LeaveApplicationResponse {
  const factory LeaveApplicationResponse({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String type,
    required String reason,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required bool status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _LeaveApplicationResponse;

  factory LeaveApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaveApplicationResponseFromJson(json);
}
