import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BAHelperFunction {
  static Color? getColor(String value) {
    switch (value) {
      case 'Green':
        return Colors.green;
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Pink':
        return Colors.pink;
      case 'Grey':
      case 'Gray': // Support alternate spelling
        return Colors.grey;
      case 'Purple':
        return Colors.purple;
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      case 'Orange':
        return Colors.orange;
      case 'Yellow':
        return Colors.yellow;
      case 'Teal':
        return Colors.teal;
      case 'Cyan':
        return Colors.cyan;
      case 'Brown':
        return Colors.brown;
      default:
        return null; // Return null for unknown colors
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(
      Get.context!,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Navigation helper
  static void navigateToScreen(BuildContext context, Widget screen) async {
    await Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  // Text truncation utility
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  // Theme detection
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(
    DateTime date, {
    String format = 'dd MMM yyyy',
  }) {
    return DateFormat(format).format(date);
  }

  /// Removes duplicate elements from a list while preserving order
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// Wraps widgets into rows with specified number of widgets per row
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
