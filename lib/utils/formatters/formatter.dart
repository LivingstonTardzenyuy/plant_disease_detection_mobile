import 'package:intl/intl.dart';

class TFormatter {
  TFormatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    /// Assuming a 10 digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }

    /// Add more custom phone formatting Logic for different format if needed
    return phoneNumber;
  }

  /// Not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber) {
    /// Remove any none digit character from  the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    /// Extract Country code from the digits only
    String countryCode = digitOnly.substring(0, 2);
    digitOnly = digitOnly.substring(2);

    /// Add remaining numbers with desired form
    final formatNUmber = StringBuffer();
    formatNUmber.write('($countryCode) ');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 2 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatNUmber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formatNUmber.write(' ');
      }
      i = end;
    }
    return formatNUmber.toString();
  }
}
