/// Улица в справочнике для выбора адреса объявления.
class StreetModel {
  const StreetModel({
    required this.id,
    required this.name,
    required this.city,
    this.district,
    this.regionLine,
  });

  final int id;
  final String name;
  final String city;
  final String? district;
  final String? regionLine;

  /// Строка для сохранения в черновике объявления.
  String get formattedAddress {
    final buf = StringBuffer('$city, $name');
    if (district != null && district!.isNotEmpty) {
      buf.write(' ($district)');
    }
    return buf.toString();
  }
}
