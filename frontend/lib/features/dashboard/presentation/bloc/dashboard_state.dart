part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool isLoading,
    DashboardEntity? dashboard,
    String? successMessage,
    @Default(false) bool isError,
    String? errorMessage,
  }) = _DashboardState;
}
