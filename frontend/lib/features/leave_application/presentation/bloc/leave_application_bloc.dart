import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entity/leave_application_entity.dart';
import '../../domain/param/leave_application_request_param.dart';
import '../../domain/usecase/apply_leave_application_usecase.dart';
import '../../domain/usecase/get_leave_application_usecase.dart';

part 'leave_application_event.dart';
part 'leave_application_state.dart';
part 'leave_application_bloc.freezed.dart';

class LeaveApplicationBloc
    extends Bloc<LeaveApplicationEvent, LeaveApplicationState> {
  LeaveApplicationBloc({
    required ApplyLeaveApplicationUseCase applyLeaveApplicationUseCase,
    required GetLeaveApplicationUseCase getLeaveApplicationUseCase,
  }) : _applyLeaveApplicationUseCase = applyLeaveApplicationUseCase,
       _getLeaveApplicationUseCase = getLeaveApplicationUseCase,
       super(const _LeaveApplicationState()) {
    on<_ApplyLeaveApplication>(_onApplyLeaveApplication);
    on<_GetAllLeaveApplications>(_onGetAllLeaveApplications);
  }

  final ApplyLeaveApplicationUseCase _applyLeaveApplicationUseCase;
  final GetLeaveApplicationUseCase _getLeaveApplicationUseCase;

  Future<void> _onApplyLeaveApplication(
    _ApplyLeaveApplication event,
    Emitter<LeaveApplicationState> emit,
  ) async {
    emit(state.copyWith(isApply: true, isApplied: false, isError: false));

    final Either<Failure, ApplyLeaveApplicationResult> result =
        await _applyLeaveApplicationUseCase(param: event.param);

    result.fold(
      (Failure error) => emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: error.message,
        ),
      ),
      (ApplyLeaveApplicationResult result) => emit(
        state.copyWith(
          isLoading: false,
          isApplied: true,
          successMessage: result.message,
        ),
      ),
    );
  }

  FutureOr<void> _onGetAllLeaveApplications(
    _GetAllLeaveApplications event,
    Emitter<LeaveApplicationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, GetLeaveApplicationResult> result =
        await _getLeaveApplicationUseCase();

    result.fold(
      (Failure error) => emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: error.message,
        ),
      ),
      (GetLeaveApplicationResult result) => emit(
        state.copyWith(
          isLoading: false,
          leaveApplications: result.leaveApplications,
          successMessage: result.message,
        ),
      ),
    );
  }
}
