import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entity/payslip_entity.dart';
import '../../domain/usecase/get_payslip_usecase.dart';

part 'payslip_event.dart';
part 'payslip_state.dart';
part 'payslip_bloc.freezed.dart';

class PayslipBloc extends Bloc<PayslipEvent, PayslipState> {
  PayslipBloc({required GetPayslipUseCase getPayslipUseCase})
    : _getPayslipUseCase = getPayslipUseCase,
      super(const _PayslipState()) {
    on<_GetPayslipData>(_onGetPayslipData);
  }

  final GetPayslipUseCase _getPayslipUseCase;

  Future<void> _onGetPayslipData(
    _GetPayslipData event,
    Emitter<PayslipState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isError: false));

    final Either<Failure, PayslipResult> result = await _getPayslipUseCase();

    result.fold(
      (Failure error) => emit(
        state.copyWith(
          isLoading: false,
          isError: true,
          errorMessage: error.message,
        ),
      ),
      (PayslipResult result) => emit(
        state.copyWith(
          isLoading: false,
          payslip: result.paySlipEntity,
          successMessage: result.message,
        ),
      ),
    );
  }
}
