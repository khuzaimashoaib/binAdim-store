import 'package:intl/intl.dart'; // Required for DateFormat and NumberFormat

class BAFormatters {
  /// Formats a DateTime object into 'dd-MM-yyyy' format
  /// If no date is provided, uses current date
  static String formatDate([DateTime? date]) {
    date ??= DateTime.now();
    return DateFormat(
      'dd-MM-yyyy',
    ).format(date); // Fixed format from 'HMM' to 'MM'
  }

  /// Formats a numeric amount as currency with \$ symbol
  /// Example: $1,234.56
  static String formatCurrency(double amount, {String locale = 'en_US'}) {
    return NumberFormat.currency(
      // Fixed method name from 'currentcy'
      locale: locale,
      symbol: '\$',
    ).format(amount);
  }

  /// Formats phone numbers for US/CA numbers
  /// Example: (123) 456-7890
  static String formatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    final digits = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    // Format 10-digit numbers (US/Canada)
    if (digits.length == 10) {
      return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
    }
    // Format 11-digit numbers (with country code 1)
    else if (digits.length == 11 && digits.startsWith('1')) {
      return '+1 (${digits.substring(1, 4)}) ${digits.substring(4, 7)}-${digits.substring(7)}';
    }
    // Return original if format doesn't match
    return phoneNumber;
  }
}
