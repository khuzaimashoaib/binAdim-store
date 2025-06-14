import 'package:flutter/material.dart';

class BAChipTheme {
  BAChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Color.fromRGBO(158, 158, 158, 0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.yellow,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.yellow,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
