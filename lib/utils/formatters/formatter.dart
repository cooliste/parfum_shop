import 'package:intl/intl.dart';

class PFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'fr_FR', symbol: 'FCFA').format(
        amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(
          4, 6)} ${phoneNumber.substring(6, 8)} ${phoneNumber.substring(
          8, 10)} ${phoneNumber.substring(10, 12)})';
    }
    return phoneNumber;
  }
}