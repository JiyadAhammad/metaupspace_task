import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/params/sign_in_param.dart';
import '../../../domain/params/sign_up_params.dart';
import '../../../domain/usecases/sign_in_usecase.dart';
import '../../../domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignInUseCase signInUseCase,
    required SignUpUseCase signUpUseCase,
  }) : _signInUseCase = signInUseCase,
       _signUpUseCase = signUpUseCase,
       super(const AuthState.initial()) {
    on<_LoginEvent>(_onLogin);
    on<_RegisterEvent>(_onRegister);
  }

  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;

  Future<void> _onLogin(_LoginEvent event, Emitter<AuthState> emit) async {
    try {
      if (event.email.isEmpty || event.password.isEmpty) {
        emit(const AuthState.error('Email and password required'));
        return;
      }
      emit(const AuthState.loading());

      final Either<Failure, AuthResult> result = await _signInUseCase(
        SignInParams(email: event.email, password: event.password),
      );

      // sl<AppLogger>().warning('${result.getRight()} right result bloc');

      result.fold(
        (Failure failure) => emit(AuthState.error(failure.message)),
        (AuthResult authResult) =>
            emit(AuthState.success(authResult.user, authResult.message)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _onRegister(
    _RegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (event.email.isEmpty ||
        event.password.isEmpty ||
        event.fullName.isEmpty) {
      emit(const AuthState.error('Email, fullname and password required'));
      return;
    }
    emit(const AuthState.loading());

    final Either<Failure, AuthResult> result = await _signUpUseCase(
      SignUpParams(
        email: event.email,
        password: event.password,
        fullName: event.fullName,
      ),
    );

    result.fold(
      (Failure failure) => emit(AuthState.error(failure.message)),
      (AuthResult authResult) =>
          emit(AuthState.success(authResult.user, authResult.message)),
    );
  }
}
