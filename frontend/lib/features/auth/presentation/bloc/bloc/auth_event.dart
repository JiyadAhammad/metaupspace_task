part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _LoginEvent;

  const factory AuthEvent.register({
    required String email,
    required String password,
    required String fullName,
    required String department,
    required String role,
    required String manager,
    required DateTime joiningDate,
  }) = _RegisterEvent;
}
