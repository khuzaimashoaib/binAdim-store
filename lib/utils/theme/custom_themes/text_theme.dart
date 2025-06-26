import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class BATextTheme {
  BATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // Headline
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: BAColors.dark,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: BAColors.dark,
    ),
    headlineSmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: BAColors.dark,
    ),

    // Title
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: BAColors.dark,
    ),
    titleMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: BAColors.dark,
    ),
    titleSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: BAColors.dark,
    ),

    // Body
    bodyLarge: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: BAColors.dark,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: BAColors.dark,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: BAColors.dark.withValues(alpha: 0.5),
    ),
    // Label
    labelLarge: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: BAColors.dark,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: BAColors.dark.withValues(alpha: 0.5),
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    // Headline
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: BAColors.light,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: BAColors.light,
    ),
    headlineSmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: BAColors.light,
    ),

    // Title
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: BAColors.light,
    ),
    titleMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: BAColors.light,
    ),
    titleSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: BAColors.light,
    ),

    // Body
    bodyLarge: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: BAColors.light,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: BAColors.light,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: BAColors.light.withValues(alpha: 0.5),
    ),

    // Label
    labelLarge: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: BAColors.light,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: BAColors.light.withValues(alpha: 0.5),
    ),
  );
}
