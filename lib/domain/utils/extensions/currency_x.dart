import 'package:roomate/domain/enums/currency_enum.dart';

extension CurrencyX on Currency {
  String get symbol {
    switch (this) {
      case Currency.rub:
        return "₽";
      case Currency.usd:
        return "\$";
      case Currency.eur:
        return "€";
    }
  }
}
