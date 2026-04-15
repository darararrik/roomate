import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'filter_model.freezed.dart';

@freezed
sealed class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default([]) List<OptionModel> rentGoal,
    @Default([]) List<OptionModel> propertyTypes,
    @Default([]) List<OptionModel> roomsCounts,
    @Default([]) List<OptionModel> districts,
    @Default([]) List<OptionModel> rentDuration,
  }) = _FilterModel;
}
