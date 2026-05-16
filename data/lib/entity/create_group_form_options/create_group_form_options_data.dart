import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

part 'create_group_form_options_data.freezed.dart';
part 'create_group_form_options_data.g.dart';

@freezed
sealed class CreateGroupFormOptionsData with _$CreateGroupFormOptionsData {
  const factory CreateGroupFormOptionsData({
    @JsonKey(name: 'looking_for_gender') List<OptionData>? lookingForGender,
    @JsonKey(name: 'communication') List<OptionData>? communication,
    @JsonKey(name: 'sleep') List<OptionData>? sleep,
    @JsonKey(name: 'employment') List<OptionData>? employment,
    @JsonKey(name: 'bad_habits') List<OptionData>? badHabits,
    @JsonKey(name: 'guests') List<OptionData>? guests,
    @JsonKey(name: 'noise_level') List<OptionData>? noiseLevel,
    @JsonKey(name: 'cleaning') List<OptionData>? cleaning,
    @JsonKey(name: 'pets') List<OptionData>? pets,
    @JsonKey(name: 'pets_attitude') List<OptionData>? petsAttitude,
    @JsonKey(name: 'property_type') List<OptionData>? propertyType,
    @JsonKey(name: 'rooms_count') List<OptionData>? roomsCount,
    @JsonKey(name: 'furniture') List<OptionData>? furniture,
    @JsonKey(name: 'amenities') List<OptionData>? amenities,
    @JsonKey(name: 'bathroom') List<OptionData>? bathroom,
    @JsonKey(name: 'appliances') List<OptionData>? appliances,
    @JsonKey(name: 'currency') List<OptionData>? currency,
    @JsonKey(name: 'rent_duration') List<OptionData>? rentDuration,
    @JsonKey(name: 'utilities_payment') List<OptionData>? utilitiesPayment,
  }) = _CreateGroupFormOptionsData;

  factory CreateGroupFormOptionsData.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupFormOptionsDataFromJson(json);
}
