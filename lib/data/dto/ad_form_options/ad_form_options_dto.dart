import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/data/dto/apartaments/filter_dto.dart';

part 'ad_form_options_dto.freezed.dart';
part 'ad_form_options_dto.g.dart';

@freezed
sealed class AdFormOptionsDto with _$AdFormOptionsDto {
  const factory AdFormOptionsDto({
    // Цели и типы аренды
    @JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,
    @JsonKey(name: 'rent_period') List<OptionDto>? rentPeriod,
    @JsonKey(name: 'who_can_rent') List<OptionDto>? whoCanRent,

    // Типы недвижимости
    @JsonKey(name: 'premises_type') List<OptionDto>? premisesType,
    @JsonKey(name: 'property_type') List<OptionDto>? propertyType,

    // Характеристики квартиры
    @JsonKey(name: 'rooms_count') List<OptionDto>? roomsCount,
    @JsonKey(name: 'layout') List<OptionDto>? layout,

    // Особенности (ремонт, лифты, балконы)
    @JsonKey(name: 'renovation') List<OptionDto>? renovation,
    @JsonKey(name: 'elevators') List<OptionDto>? elevators,
    @JsonKey(name: 'balconies') List<OptionDto>? balconies,

    // Оснащение (мебель, удобства, техника)
    @JsonKey(name: 'furniture') List<OptionDto>? furniture,
    @JsonKey(name: 'amenities') List<OptionDto>? amenities,
    @JsonKey(name: 'bathroom') List<OptionDto>? bathroom,
    @JsonKey(name: 'appliances') List<OptionDto>? appliances,
    @JsonKey(name: 'stove') List<OptionDto>? stove,

    // Условия сделки
    @JsonKey(name: 'currency') List<OptionDto>? currency,
    @JsonKey(name: 'prepayment') List<OptionDto>? prepayment,
    @JsonKey(name: 'rent_duration') List<OptionDto>? rentDuration,
    @JsonKey(name: 'rent_conditions') List<OptionDto>? rentConditions,

    // Контакты
    @JsonKey(name: 'contact_method') List<OptionDto>? contactMethod,
  }) = _AdFormOptionsDto;

  factory AdFormOptionsDto.fromJson(Map<String, dynamic> json) => _$AdFormOptionsDtoFromJson(json);
}
