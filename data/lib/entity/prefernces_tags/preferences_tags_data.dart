import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

part 'preferences_tags_data.freezed.dart';
part 'preferences_tags_data.g.dart';

@freezed
abstract class PreferencesTagsData with _$PreferencesTagsData {
  const factory PreferencesTagsData({
    @JsonKey(name: 'communication') List<OptionData>? communication,
    @JsonKey(name: 'sleep') List<OptionData>? sleep,
    @JsonKey(name: 'employment') List<OptionData>? employment,
    @JsonKey(name: 'bad_habits') List<OptionData>? badHabits,
    @JsonKey(name: 'guests') List<OptionData>? guests,
    @JsonKey(name: 'noise_level') List<OptionData>? noiseLevel,
    @JsonKey(name: 'cleaning') List<OptionData>? cleaning,
    @JsonKey(name: 'pets') List<OptionData>? pets,
    @JsonKey(name: 'pets_attitude') List<OptionData>? petsAttitude,
  }) = _PreferencesTagsData;

  factory PreferencesTagsData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesTagsDataFromJson(json);
}
