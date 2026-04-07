import 'package:intl/intl.dart';

extension DateFormattingExtension on DateTime {
  /// Default format: 6/4/2026
  String toDMY() {
    return DateFormat('d/M/yyyy').format(this);
  }
}
