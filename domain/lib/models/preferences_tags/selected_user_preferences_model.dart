import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_user_preferences_model.freezed.dart';

@freezed
abstract class SelectedUserPreferencesModel
    with _$SelectedUserPreferencesModel {
  const factory SelectedUserPreferencesModel({
    @Default([]) List<int> communication,
    @Default([]) List<int> sleep,
    @Default([]) List<int> employment,
    @Default([]) List<int> badHabits,
    @Default([]) List<int> guests,
    @Default([]) List<int> noiseLevel,
    @Default([]) List<int> cleaning,
    @Default([]) List<int> pets,
    @Default([]) List<int> petsAttitude,
  }) = _SelectedUserPreferencesModel;
}
