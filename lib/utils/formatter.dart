import 'package:intl/intl.dart';

extension AmountFormatter on num {
  String formatAmount({
    String symbol = "£",
    int decimalDigits = 2,
  }) {
    return NumberFormat.currency(
      symbol: symbol,
      decimalDigits: decimalDigits,
    ).format(this);
  }
}