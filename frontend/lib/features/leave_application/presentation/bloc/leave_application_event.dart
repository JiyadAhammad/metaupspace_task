part of 'leave_application_bloc.dart';

@freezed
abstract class LeaveApplicationEvent with _$LeaveApplicationEvent {
  const factory LeaveApplicationEvent.getAllLeaveApplications() =
      _GetAllLeaveApplications;
  const factory LeaveApplicationEvent.applyLeaveApplication({
    required LeaveApplicationRequestParam param,
  }) = _ApplyLeaveApplication;
}
