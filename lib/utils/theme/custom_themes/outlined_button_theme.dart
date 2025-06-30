import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class BAOutlinedButtonTheme {
  BAOutlinedButtonTheme._(); // Private constructor to prevent instantiation

  /* -- Light Theme -- */
  static final OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: BAColors.dark,
          side: const BorderSide(color: BAColors.borderPrimary),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: BASizes.buttonHeight,
            horizontal: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BASizes.buttonRadius),
          ),
        ),
      );

  /* -- Dark Theme -- */
  static final OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          // elevation: 0,
          foregroundColor: BAColors.light,
          side: const BorderSide(color: BAColors.borderPrimary),
          textStyle: const TextStyle(
            fontSize: 16,
            color: BAColors.textWhite,
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: BASizes.buttonHeight,
            horizontal: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BASizes.buttonRadius),
          ),
        ),
      );
}
