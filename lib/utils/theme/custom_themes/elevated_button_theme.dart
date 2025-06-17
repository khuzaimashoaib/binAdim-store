import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BAElevatedButtonTheme {
  BAElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BAColors.white,
      backgroundColor: BAColors.primaryColor,
      disabledForegroundColor: BAColors.grey,
      disabledBackgroundColor: BAColors.grey,
      side: const BorderSide(color: BAColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: BAColors.white,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BAColors.white,
      backgroundColor: BAColors.primaryColor,
      disabledForegroundColor: BAColors.grey,
      disabledBackgroundColor: BAColors.grey,
      side: const BorderSide(color: BAColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}
