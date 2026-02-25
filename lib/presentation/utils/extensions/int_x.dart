extension IntX on int {
  String toMessagedCount() {
    if (this <= 0) {
      return '';
    } else if (this < 100) {
      return toString();
    } else if (this < 1000) {
      return toString();
    } else if (this < 10000) {
      double kValue = this / 1000.0;
      return '${kValue.toStringAsFixed(1)}k';
    } else {
      int kValue = (this / 1000).floor();
      return '${kValue}k';
    }
  }
}
