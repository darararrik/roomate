import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

part 'filter_data.freezed.dart';
part 'filter_data.g.dart';

/// Корневой DTO фильтров апартаментов
@freezed
sealed class FilterData with _$FilterData {
  const factory FilterData({
    @JsonKey(name: 'rent_goal') List<OptionData>? rentGoal,
    @JsonKey(name: 'property_type') List<OptionData>? propertyTypes,
    @JsonKey(name: 'rooms_count') List<OptionData>? roomsCounts,

    //TODO: camelcase
    @JsonKey(name: 'rentDuration') List<OptionData>? rentDuration,
  }) = _FilterData;

  factory FilterData.fromJson(Map<String, dynamic> json) => _$FilterDataFromJson(json);
}
