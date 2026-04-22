class PhoneNumber {
  factory PhoneNumber(String raw) {
    final clean = raw.replaceAll(RegExp(r'\D'), '');

    final formatted = clean.startsWith('7') ? '+$clean' : '+7$clean';

    return PhoneNumber._(formatted);
  }

  PhoneNumber._(this.value);
  final String value;

  @override
  String toString() => value;
}
