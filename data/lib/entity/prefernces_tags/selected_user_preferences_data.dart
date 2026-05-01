import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_user_preferences_data.freezed.dart';
part 'selected_user_preferences_data.g.dart';

@freezed
abstract class SelectedUserPreferencesData with _$SelectedUserPreferencesData {
  const factory SelectedUserPreferencesData({
    @JsonKey(name: 'communication') List<int>? communication,
    @JsonKey(name: 'sleep') List<int>? sleep,
    @JsonKey(name: 'employment') List<int>? employment,
    @JsonKey(name: 'bad_habits') List<int>? badHabits,
    @JsonKey(name: 'guests') List<int>? guests,
    @JsonKey(name: 'noise_level') List<int>? noiseLevel,
    @JsonKey(name: 'cleaning') List<int>? cleaning,
    @JsonKey(name: 'pets') List<int>? pets,
    @JsonKey(name: 'pets_attitude') List<int>? petsAttitude,
  }) = _SelectedUserPreferencesData;

  factory SelectedUserPreferencesData.fromJson(Map<String, dynamic> json) =>
      _$SelectedUserPreferencesDataFromJson(json);
}
