import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_dto.freezed.dart';
part 'filter_dto.g.dart';

/// Один пункт из бэка: {"id": 1, "title": "Снять"}
@freezed
sealed class OptionDto with _$OptionDto {
  const factory OptionDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
  }) = _OptionDto;

  factory OptionDto.fromJson(Map<String, dynamic> json) =>
      _$OptionDtoFromJson(json);
}

/// Корневой DTO фильтров апартаментов
@freezed
sealed class FilterDto with _$FilterDto {
  const factory FilterDto({
    @JsonKey(name: 'categories') List<OptionDto>? categories,
    @JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,
    @JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts,
  }) = _FilterDto;

  factory FilterDto.fromJson(Map<String, dynamic> json) =>
      _$FilterDtoFromJson(json);
}
