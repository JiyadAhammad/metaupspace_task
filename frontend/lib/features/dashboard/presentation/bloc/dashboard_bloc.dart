import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entity/dashboard_entity.dart';
import '../../domain/usecase/dashboard_usecase.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc({required DashboardUseCase dashboardUseCase})
    : _dashboardUseCase = dashboardUseCase,
      super(const _DashboardState()) {
    on<_GetDashboardData>(_onGetDashboardData);
  }
  final DashboardUseCase _dashboardUseCase;

  Future<void> _onGetDashboardData(
    _GetDashboardData event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, DashboardResult> result = await _dashboardUseCase();

    result.fold(
      (Failure error) => emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: error.message,
        ),
      ),
      (DashboardResult result) => emit(
        state.copyWith(
          isLoading: false,
          dashboard: result.dashboardEntity,
          successMessage: result.message,
        ),
      ),
    );
  }
}
