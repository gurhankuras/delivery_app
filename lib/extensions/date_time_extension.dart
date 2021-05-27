extension DateTimeExtension on DateTime {
  bool isSameDate(DateTime rhs) {
    return year == rhs.year && month == rhs.month && day == rhs.day;
  }
}
