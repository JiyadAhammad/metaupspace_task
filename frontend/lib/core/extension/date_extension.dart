import 'package:intl/intl.dart';

extension DateFormattingExtension on DateTime {
  /// Default format: 6/4/2026
  String toDMY() {
    return DateFormat('d/M/yyyy').format(this);
  }

  /// Common formats
  String toReadableDate() {
    return DateFormat('dd MMM yyyy').format(this); // 06 Apr 2026
  }

  String toTime() {
    return DateFormat('hh:mm a').format(this); // 02:30 PM
  }

  String toDateTime() {
    return DateFormat('d/M/yyyy hh:mm a').format(this);
  }

  /// Custom format
  String format(String pattern) {
    return DateFormat(pattern).format(this);
  }
}
