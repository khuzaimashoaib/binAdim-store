import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/check_box_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:binadim_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class BATheme {
  BATheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    disabledColor: BAColors.grey,
    primaryColor: BAColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BATextTheme.lightTextTheme,
    chipTheme: BAChipTheme.lightChipTheme,
    appBarTheme: BAAppBarTheme.lightAppBarTheme,
    checkboxTheme: BACheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: BABottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BAElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BAOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BATextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    disabledColor: BAColors.grey,
    primaryColor: BAColors.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BATextTheme.darkTextTheme,
    chipTheme: BAChipTheme.darkChipTheme,
    appBarTheme: BAAppBarTheme.darkAppBarTheme,
    checkboxTheme: BACheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: BABottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BAElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BAOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BATextFormFieldTheme.darkInputDecorationTheme,
  );
}
