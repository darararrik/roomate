import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/lib.dart';

part 'filter_dto.freezed.dart';
part 'filter_dto.g.dart';

/// Корневой DTO фильтров апартаментов
@freezed
sealed class FilterDto with _$FilterDto {
  const factory FilterDto({
    @JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,
    @JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,
    @JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts,
    @JsonKey(name: 'rentDuration') List<OptionDto>? rentDuration,
  }) = _FilterDto;

  factory FilterDto.fromJson(Map<String, dynamic> json) => _$FilterDtoFromJson(json);
}
