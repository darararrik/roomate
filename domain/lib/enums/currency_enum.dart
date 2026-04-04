enum Currency {
  rub,
  usd,
  eur;

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

  static Currency fromTitle(String title) {
    if (title == "Рубли" || title == "RUB" || title == "₽") return Currency.rub;
    if (title == "Доллары" || title == "USD" || title == "\$")
      return Currency.usd;
    if (title == "Евро" || title == "EUR" || title == "€") return Currency.eur;
    return Currency.rub;
  }
}
