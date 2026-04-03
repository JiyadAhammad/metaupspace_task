import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AppCustomColors extends ThemeExtension<AppCustomColors> {
  AppCustomColors({
    required this.easy,
    required this.medium,
    required this.hard,
    required this.normal,
    required this.streakGradient,
    required this.primaryGradient,
  });
  final Color easy;
  final Color medium;
  final Color hard;
  final Color normal;
  final LinearGradient streakGradient;
  final LinearGradient primaryGradient;

  @override
  ThemeExtension<AppCustomColors> copyWith() => this;

  @override
  ThemeExtension<AppCustomColors> lerp(
    ThemeExtension<AppCustomColors>? other,
    double t,
  ) {
    if (other is! AppCustomColors) {
      return this;
    }
    return AppCustomColors(
      easy: Color.lerp(easy, other.easy, t)!,
      medium: Color.lerp(medium, other.medium, t)!,
      hard: Color.lerp(hard, other.hard, t)!,
      normal: AppColors.blue,
      streakGradient: streakGradient,
      primaryGradient: primaryGradient,
    );
  }
}

class AppTheme {
  // Shared Decoration Logic (DRY Principle)
  static InputBorder _border([Color color = Colors.grey]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color, width: 1.2),
    // borderSide: BorderSide.none,
  );
  // Shared Hint TextStyle logic
  static TextStyle _hintStyle(Color color) =>
      TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.normal);

  // --- DARK THEME ---
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBg,
    cardColor: AppColors.darkCard,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      surface: AppColors.darkCard,
      error: AppColors.error,
    ),
    extensions: <ThemeExtension<AppCustomColors>>[
      AppCustomColors(
        easy: AppColors.success,
        medium: AppColors.warning,
        hard: AppColors.error,
        normal: AppColors.blue,
        streakGradient: AppColors.streakGradient,
        primaryGradient: AppColors.primaryGradient,
      ),
    ],
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _hintStyle(AppColors.darkHint),
      // Adding standard field styling
      filled: true,
      fillColor: AppColors.darkCard,
      enabledBorder: _border(Colors.grey.shade400),
      focusedBorder: _border(AppColors.primary),
      errorBorder: _border(AppColors.error),
      focusedErrorBorder: _border(AppColors.error),
    ),
  );

  // --- LIGHT THEME ---
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBg,
    cardColor: AppColors.lightCard,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      error: AppColors.error,
    ),
    extensions: <ThemeExtension<AppCustomColors>>[
      AppCustomColors(
        easy: AppColors.success,
        medium: AppColors.warning,
        hard: AppColors.error,
        normal: AppColors.blue,
        streakGradient: AppColors.streakGradient,
        primaryGradient: AppColors.primaryGradient,
      ),
    ],
    // Adapt input theme for light mode
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _hintStyle(AppColors.lightHint),
      filled: true,
      fillColor: Colors.grey[100],
      enabledBorder: _border(Colors.grey.shade700),
      focusedBorder: _border(AppColors.primary),
      errorBorder: _border(AppColors.error),
      focusedErrorBorder: _border(AppColors.error),
    ),
  );
}
