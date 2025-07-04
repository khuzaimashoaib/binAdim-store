import 'package:flutter/material.dart';

class BAColors {
  BAColors._();

  static const Color primaryColor = Color(0xFFfed700);
  static const Color secondaryColor = Color(0xFF44b71a);
  static const Color accent = Color(0xFFb0c7ff);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = BAColors.white.withValues(alpha: 0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFFfed700); // Primary button color
  static const Color buttonSecondary = Color(
    0xFF6C757D,
  ); // Secondary button color
  static const Color buttonDisabled = Color(
    0xFFC4C4C4,
  ); // Disabled button color

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9); // Primary border color
  static const Color borderSecondary = Color(
    0xFFE6E6E6,
  ); // Secondary border color

  // Status Colors
  static const Color error = Color(0xFFD32F2F); // Error state color
  static const Color success = Color(0xFF388E3C); // Success state color
  static const Color warning = Color(0xFFF57C00); // Warning state color
  static const Color info = Color(0xFF1976D2); // Informational state color

  // Neutral Color Palettestatic const Color black = Color(0xFF232323);
  static const Color black = Color(0xFF232323);

  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
