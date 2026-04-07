part of 'leave_application_bloc.dart';

@freezed
abstract class LeaveApplicationState with _$LeaveApplicationState {
  const factory LeaveApplicationState({
    @Default(false) bool isApply,
    @Default(false) bool isApplied,
    @Default(false) bool isLoading,
    @Default(<LeaveApplicationEntity>[])
    List<LeaveApplicationEntity> leaveApplications,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _LeaveApplicationState;
}
