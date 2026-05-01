import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/models/common/option_model.dart';

part 'preference_tags_catalog_model.freezed.dart';

@freezed
abstract class PreferenceTagsCatalogModel with _$PreferenceTagsCatalogModel {
  const factory PreferenceTagsCatalogModel({
    @Default([]) List<OptionModel> communication,
    @Default([]) List<OptionModel> sleep,
    @Default([]) List<OptionModel> employment,
    @Default([]) List<OptionModel> badHabits,
    @Default([]) List<OptionModel> guests,
    @Default([]) List<OptionModel> noiseLevel,
    @Default([]) List<OptionModel> cleaning,
    @Default([]) List<OptionModel> pets,
    @Default([]) List<OptionModel> petsAttitude,
  }) = _PreferenceTagsCatalogModel;
}
