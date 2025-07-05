import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BAChipTheme {
  BAChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: BAColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: BAColors.black),
    selectedColor: BAColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BAColors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: BAColors.grey.withValues(alpha: 0.4),
    labelStyle: TextStyle(color: BAColors.white),
    selectedColor: BAColors.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: BAColors.white,
  );
}
