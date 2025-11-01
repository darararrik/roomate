import 'package:intl/intl.dart';

//TODO: Отредачить
extension DateTimeX on DateTime {
  String toFormattedString() {
    return DateFormat('dd.MM.yyyy').format(this);
  }
}
