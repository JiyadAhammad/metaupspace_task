import 'package:flutter/material.dart';

class AppColors {
  // --- Palette ---
  static const MaterialColor primary = Colors.green;
  static const MaterialColor blue = Colors.blue;
  static const Color darkBg = Color(0xFF0F1115);
  static const Color darkCard = Color(0xFF1A1D23);
  static const Color lightBg = Color(0xFFF5F7FA);
  static const Color lightCard = Colors.white;

  // Status Colors (Shared)
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA000);
  static const Color error = Color(0xFFF44336);
  static const Color muted = Color(0xFF8A8F98);

  // Hint/Placeholder Colors
  static const Color darkHint = Color(0xFF8A8F98); //  grey for dark theme
  static const Color lightHint = Color(0xFFB0B4BA); //  grey for light theme

  // Primary gradient
  static const Color pGradient1 = Color(0xFF00C853);
  static const Color pGradient2 = Color(0xFF4C8DFE);

  // --- Gradients ---
  static const LinearGradient streakGradient = LinearGradient(
    colors: <Color>[warning, error],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient primaryGradient = LinearGradient(
    colors: <Color>[pGradient1, pGradient2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
