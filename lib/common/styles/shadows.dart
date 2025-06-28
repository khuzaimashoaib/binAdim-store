import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BAShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: BAColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: Offset(0.0, 2.0),
  );
  static final horizontalProductShadow = BoxShadow(
    color: BAColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: Offset(0.0, 2.0),
  );
}
