import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class BAAppBarTheme {
  BAAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: BAColors.black, size: BASizes.iconMD),
    actionsIconTheme: IconThemeData(
      color: BAColors.black,
      size: BASizes.iconMD,
    ),
    titleTextStyle: TextStyle(
      fontSize: BASizes.fontSizeLG,
      fontWeight: FontWeight.w600,
      color: BAColors.black,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: BAColors.black, size: BASizes.iconMD),
    actionsIconTheme: IconThemeData(
      color: BAColors.white,
      size: BASizes.iconMD,
    ),
    titleTextStyle: TextStyle(
      fontSize: BASizes.fontSizeLG,
      fontWeight: FontWeight.w600,
      color: BAColors.white,
    ),
  );
}
