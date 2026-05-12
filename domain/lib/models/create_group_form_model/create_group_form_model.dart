import 'package:domain/enums/enums.dart';

class CreateGroupFormModel {
  const CreateGroupFormModel({
    this.title = '',
    this.address = '',
    this.selectedCityId = 0,
    this.cityFiasId = '',
    this.lookingForGenderId = 0,
    this.ageFrom = 18,
    this.ageTo = 60,
    this.participantsCount = 1,
    this.childrenAllowed = false,
    this.partnerAllowed = false,
    this.petsAllowed = false,
    this.smokingAllowed = false,
    this.communicationId = 0,
    this.sleepId = 0,
    this.employmentId = 0,
    this.badHabitsId = 0,
    this.guestsId = 0,
    this.noiseLevelId = 0,
    this.cleaningId = 0,
    this.petsId = 0,
    this.petsAttitudeId = 0,
    this.propertyTypeId = 0,
    this.apartmentNumber = '',
    this.roomsCountId = 0,
    this.apartmentArea = 0,
    this.floor = 0,
    this.totalFloors = 0,
    this.description = '',
    this.furnitureId = 0,
    this.amenitiesIds = const <int>{},
    this.bathroomIds = const <int>{},
    this.appliancesIds = const <int>{},
    this.currencyId = 0,
    this.selectedCurrency = Currency.rub,
    this.pricePerPerson = 0,
    this.rentDurationId = 0,
    this.utilitiesPaymentId = 0,
    this.imageUrls = const <String>[],
  });

  final String title;
  final String address;
  final int selectedCityId;
  final String cityFiasId;
  final int lookingForGenderId;
  final int ageFrom;
  final int ageTo;
  final int participantsCount;
  final bool childrenAllowed;
  final bool partnerAllowed;
  final bool petsAllowed;
  final bool smokingAllowed;
  final int communicationId;
  final int sleepId;
  final int employmentId;
  final int badHabitsId;
  final int guestsId;
  final int noiseLevelId;
  final int cleaningId;
  final int petsId;
  final int petsAttitudeId;
  final int propertyTypeId;
  final String apartmentNumber;
  final int roomsCountId;
  final double apartmentArea;
  final int floor;
  final int totalFloors;
  final String description;
  final int furnitureId;
  final Set<int> amenitiesIds;
  final Set<int> bathroomIds;
  final Set<int> appliancesIds;
  final int currencyId;
  final Currency selectedCurrency;
  final double pricePerPerson;
  final int rentDurationId;
  final int utilitiesPaymentId;
  final List<String> imageUrls;

  CreateGroupFormModel copyWith({
    String? title,
    String? address,
    int? selectedCityId,
    String? cityFiasId,
    int? lookingForGenderId,
    int? ageFrom,
    int? ageTo,
    int? participantsCount,
    bool? childrenAllowed,
    bool? partnerAllowed,
    bool? petsAllowed,
    bool? smokingAllowed,
    int? communicationId,
    int? sleepId,
    int? employmentId,
    int? badHabitsId,
    int? guestsId,
    int? noiseLevelId,
    int? cleaningId,
    int? petsId,
    int? petsAttitudeId,
    int? propertyTypeId,
    String? apartmentNumber,
    int? roomsCountId,
    double? apartmentArea,
    int? floor,
    int? totalFloors,
    String? description,
    int? furnitureId,
    Set<int>? amenitiesIds,
    Set<int>? bathroomIds,
    Set<int>? appliancesIds,
    int? currencyId,
    Currency? selectedCurrency,
    double? pricePerPerson,
    int? rentDurationId,
    int? utilitiesPaymentId,
    List<String>? imageUrls,
  }) {
    return CreateGroupFormModel(
      title: title ?? this.title,
      address: address ?? this.address,
      selectedCityId: selectedCityId ?? this.selectedCityId,
      cityFiasId: cityFiasId ?? this.cityFiasId,
      lookingForGenderId: lookingForGenderId ?? this.lookingForGenderId,
      ageFrom: ageFrom ?? this.ageFrom,
      ageTo: ageTo ?? this.ageTo,
      participantsCount: participantsCount ?? this.participantsCount,
      childrenAllowed: childrenAllowed ?? this.childrenAllowed,
      partnerAllowed: partnerAllowed ?? this.partnerAllowed,
      petsAllowed: petsAllowed ?? this.petsAllowed,
      smokingAllowed: smokingAllowed ?? this.smokingAllowed,
      communicationId: communicationId ?? this.communicationId,
      sleepId: sleepId ?? this.sleepId,
      employmentId: employmentId ?? this.employmentId,
      badHabitsId: badHabitsId ?? this.badHabitsId,
      guestsId: guestsId ?? this.guestsId,
      noiseLevelId: noiseLevelId ?? this.noiseLevelId,
      cleaningId: cleaningId ?? this.cleaningId,
      petsId: petsId ?? this.petsId,
      petsAttitudeId: petsAttitudeId ?? this.petsAttitudeId,
      propertyTypeId: propertyTypeId ?? this.propertyTypeId,
      apartmentNumber: apartmentNumber ?? this.apartmentNumber,
      roomsCountId: roomsCountId ?? this.roomsCountId,
      apartmentArea: apartmentArea ?? this.apartmentArea,
      floor: floor ?? this.floor,
      totalFloors: totalFloors ?? this.totalFloors,
      description: description ?? this.description,
      furnitureId: furnitureId ?? this.furnitureId,
      amenitiesIds: amenitiesIds ?? this.amenitiesIds,
      bathroomIds: bathroomIds ?? this.bathroomIds,
      appliancesIds: appliancesIds ?? this.appliancesIds,
      currencyId: currencyId ?? this.currencyId,
      selectedCurrency: selectedCurrency ?? this.selectedCurrency,
      pricePerPerson: pricePerPerson ?? this.pricePerPerson,
      rentDurationId: rentDurationId ?? this.rentDurationId,
      utilitiesPaymentId: utilitiesPaymentId ?? this.utilitiesPaymentId,
      imageUrls: imageUrls ?? this.imageUrls,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'address': address,
      'selected_city_id': selectedCityId,
      'city_fias_id': cityFiasId,
      'looking_for_gender_id': lookingForGenderId,
      'age_from': ageFrom,
      'age_to': ageTo,
      'participants_count': participantsCount,
      'children_allowed': childrenAllowed,
      'partner_allowed': partnerAllowed,
      'pets_allowed': petsAllowed,
      'smoking_allowed': smokingAllowed,
      'communication_id': communicationId,
      'sleep_id': sleepId,
      'employment_id': employmentId,
      'bad_habits_id': badHabitsId,
      'guests_id': guestsId,
      'noise_level_id': noiseLevelId,
      'cleaning_id': cleaningId,
      'pets_id': petsId,
      'pets_attitude_id': petsAttitudeId,
      'property_type_id': propertyTypeId,
      'apartment_number': apartmentNumber,
      'rooms_count_id': roomsCountId,
      'apartment_area': apartmentArea,
      'floor': floor,
      'total_floors': totalFloors,
      'description': description,
      'furniture_id': furnitureId,
      'amenities_ids': amenitiesIds.toList(),
      'bathroom_ids': bathroomIds.toList(),
      'appliances_ids': appliancesIds.toList(),
      'currency_id': currencyId,
      'selected_currency': selectedCurrency.name,
      'price_per_person': pricePerPerson,
      'rent_duration_id': rentDurationId,
      'utilities_payment_id': utilitiesPaymentId,
      'image_urls': imageUrls,
    };
  }
}
