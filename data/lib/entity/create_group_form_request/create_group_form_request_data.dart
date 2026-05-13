// ignore_for_file: non_constant_identifier_names

class CreateGroupFormRequestData {
  const CreateGroupFormRequestData({
    required this.group,
    required this.apartment,
    required this.preferences,
  });

  final CreateGroupGroupRequestData group;
  final CreateGroupApartmentRequestData apartment;
  final CreateGroupPreferencesRequestData preferences;

  Map<String, dynamic> toJson() {
    return {
      'group': group.toJson(),
      'apartment': apartment.toJson(),
      'preferences': preferences.toJson(),
    };
  }
}

class CreateGroupGroupRequestData {
  const CreateGroupGroupRequestData({
    this.title,
    this.description,
    this.desired_gender,
    this.min_age,
    this.max_age,
    this.max_participants_count,
    this.children_allowed,
    this.partner_allowed,
    this.pets_allowed,
    this.smoking_allowed,
  });

  final String? title;
  final String? description;
  final String? desired_gender;
  final int? min_age;
  final int? max_age;
  final int? max_participants_count;
  final bool? children_allowed;
  final bool? partner_allowed;
  final bool? pets_allowed;
  final bool? smoking_allowed;

  Map<String, dynamic> toJson() {
    return _withoutNulls({
      'title': title,
      'description': description,
      'desired_gender': desired_gender,
      'min_age': min_age,
      'max_age': max_age,
      'max_participants_count': max_participants_count,
      'children_allowed': children_allowed,
      'partner_allowed': partner_allowed,
      'pets_allowed': pets_allowed,
      'smoking_allowed': smoking_allowed,
    });
  }
}

class CreateGroupApartmentRequestData {
  const CreateGroupApartmentRequestData({
    this.address_details,
    this.rent_goal_id,
    this.rent_period_id,
    this.who_can_rent_ids,
    this.premises_type_id,
    this.property_type_id,
    this.rooms_count_id,
    this.layout_id,
    this.renovation_id,
    this.elevators_id,
    this.balconies_id,
    this.furniture_id,
    this.amenities_ids,
    this.bathroom_ids,
    this.appliances_ids,
    this.stove_id,
    this.currency_id,
    this.prepayment_id,
    this.rent_duration_id,
    this.rent_conditions_ids,
    this.contact_method_id,
    this.selected_currency,
    this.price_per_person,
    this.price_per_month,
    this.deposit,
    this.apartment_area,
    this.floor,
    this.total_floors,
    this.apartment_number,
    this.title,
    this.description,
    this.image_urls,
    this.main_phone,
    this.additional_number,
  });

  final CreateGroupAddressDetailsRequestData? address_details;
  final int? rent_goal_id;
  final int? rent_period_id;
  final List<int>? who_can_rent_ids;
  final int? premises_type_id;
  final int? property_type_id;
  final int? rooms_count_id;
  final int? layout_id;
  final int? renovation_id;
  final int? elevators_id;
  final int? balconies_id;
  final int? furniture_id;
  final List<int>? amenities_ids;
  final List<int>? bathroom_ids;
  final List<int>? appliances_ids;
  final int? stove_id;
  final int? currency_id;
  final int? prepayment_id;
  final int? rent_duration_id;
  final List<int>? rent_conditions_ids;
  final int? contact_method_id;
  final String? selected_currency;
  final double? price_per_person;
  final double? price_per_month;
  final double? deposit;
  final double? apartment_area;
  final int? floor;
  final int? total_floors;
  final int? apartment_number;
  final String? title;
  final String? description;
  final List<String>? image_urls;
  final String? main_phone;
  final String? additional_number;

  Map<String, dynamic> toJson() {
    return _withoutNulls({
      'address_details': address_details?.toJson(),
      'rent_goal_id': rent_goal_id,
      'rent_period_id': rent_period_id,
      'who_can_rent_ids': who_can_rent_ids,
      'premises_type_id': premises_type_id,
      'property_type_id': property_type_id,
      'rooms_count_id': rooms_count_id,
      'layout_id': layout_id,
      'renovation_id': renovation_id,
      'elevators_id': elevators_id,
      'balconies_id': balconies_id,
      'furniture_id': furniture_id,
      'amenities_ids': amenities_ids,
      'bathroom_ids': bathroom_ids,
      'appliances_ids': appliances_ids,
      'stove_id': stove_id,
      'currency_id': currency_id,
      'prepayment_id': prepayment_id,
      'rent_duration_id': rent_duration_id,
      'rent_conditions_ids': rent_conditions_ids,
      'contact_method_id': contact_method_id,
      'selected_currency': selected_currency,
      'price_per_person': price_per_person,
      'price_per_month': price_per_month,
      'deposit': deposit,
      'apartment_area': apartment_area,
      'floor': floor,
      'total_floors': total_floors,
      'apartment_number': apartment_number,
      'title': title,
      'description': description,
      'image_urls': image_urls,
      'main_phone': main_phone,
      'additional_number': additional_number,
    });
  }
}

class CreateGroupAddressDetailsRequestData {
  const CreateGroupAddressDetailsRequestData({
    this.value,
    this.unrestrictedValue,
    this.country,
    this.region,
    this.city,
    this.cityFiasId,
    this.district,
    this.street,
    this.streetFiasId,
    this.house,
    this.houseFiasId,
    this.geoLat,
    this.geoLon,
  });

  final String? value;
  final String? unrestrictedValue;
  final String? country;
  final String? region;
  final String? city;
  final String? cityFiasId;
  final String? district;
  final String? street;
  final String? streetFiasId;
  final String? house;
  final String? houseFiasId;
  final double? geoLat;
  final double? geoLon;

  Map<String, dynamic> toJson() {
    return _withoutNulls({
      'value': value,
      'unrestrictedValue': unrestrictedValue,
      'country': country,
      'region': region,
      'city': city,
      'cityFiasId': cityFiasId,
      'district': district,
      'street': street,
      'streetFiasId': streetFiasId,
      'house': house,
      'houseFiasId': houseFiasId,
      'geoLat': geoLat,
      'geoLon': geoLon,
    });
  }
}

class CreateGroupPreferencesRequestData {
  const CreateGroupPreferencesRequestData({
    this.communication_id,
    this.sleep_id,
    this.bad_habits_id,
    this.guests_id,
    this.noise_level_id,
    this.cleaning_id,
    this.pets_id,
    this.pets_attitude_id,
  });

  final int? communication_id;
  final int? sleep_id;
  final int? bad_habits_id;
  final int? guests_id;
  final int? noise_level_id;
  final int? cleaning_id;
  final int? pets_id;
  final int? pets_attitude_id;

  Map<String, dynamic> toJson() {
    return _withoutNulls({
      'communication_id': communication_id,
      'sleep_id': sleep_id,
      'bad_habits_id': bad_habits_id,
      'guests_id': guests_id,
      'noise_level_id': noise_level_id,
      'cleaning_id': cleaning_id,
      'pets_id': pets_id,
      'pets_attitude_id': pets_attitude_id,
    });
  }
}

Map<String, dynamic> _withoutNulls(Map<String, dynamic> json) {
  return Map<String, dynamic>.fromEntries(
    json.entries.where((entry) => entry.value != null),
  );
}
