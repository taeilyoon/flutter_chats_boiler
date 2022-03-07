import 'package:intl/intl.dart';

extension extDate on DateTime {
  bool isAnotherDay(DateTime other) =>
      DateFormat("YYYYMMDD").format(this) == DateFormat("YYYYMMDD").format(other);
  bool isAnotherMinute(DateTime other) =>
      DateFormat("YYYYMMDDhhmm").format(this) == DateFormat("YYYYMMDDhhmm").format(other);
}
