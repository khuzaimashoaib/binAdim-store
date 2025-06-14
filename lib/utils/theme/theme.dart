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
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BATextTheme.lightTextTheme,
    elevatedButtonTheme: BAElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: BAAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: BABottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: BACheckBoxTheme.lightCheckboxTheme,
    chipTheme: BAChipTheme.lightChipTheme,
    outlinedButtonTheme: BAOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BATextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BATextTheme.darkTextTheme,
    elevatedButtonTheme: BAElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: BAAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: BABottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: BACheckBoxTheme.darkCheckboxTheme,
    chipTheme: BAChipTheme.darkChipTheme,
    outlinedButtonTheme: BAOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BATextFormFieldTheme.darkInputDecorationTheme,
  );
}
