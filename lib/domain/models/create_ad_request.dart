class CreateAdRequest {
  const CreateAdRequest({
    required this.title,
    required this.description,
    required this.address,
    required this.additionalNumber,
    required this.currency,
    required this.cost,
    required this.deposit,
    required this.apartmentArea,
    required this.floor,
    required this.totalFloors,
    required this.selectedTagsByType,
  });

  final String title;
  final String description;
  final String address;
  final String additionalNumber;
  final String currency;
  final double cost;
  final double deposit;
  final double apartmentArea;
  final int floor;
  final int totalFloors;
  final Map<int, List<int>> selectedTagsByType;

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
      "address": address,
      "additional_number": additionalNumber,
      "currency": currency,
      "cost": cost,
      "deposit": deposit,
      "apartment_area": apartmentArea,
      "floor": floor,
      "total_floors": totalFloors,
      "selected_tags_by_type": selectedTagsByType.map(
        (key, value) => MapEntry(key.toString(), value),
      ),
    };
  }
}
