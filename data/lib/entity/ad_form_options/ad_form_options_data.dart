import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:data/data.dart';

part 'ad_form_options_data.freezed.dart';
part 'ad_form_options_data.g.dart';

@freezed
sealed class AdFormOptionsData with _$AdFormOptionsData {
  const factory AdFormOptionsData({
    // Цели и типы аренды
    @JsonKey(name: 'rent_goal') List<OptionData>? rentGoal,
    @JsonKey(name: 'rent_period') List<OptionData>? rentPeriod,
    @JsonKey(name: 'who_can_rent') List<OptionData>? whoCanRent,

    // Типы недвижимости
    @JsonKey(name: 'premises_type') List<OptionData>? premisesType,
    @JsonKey(name: 'property_type') List<OptionData>? propertyType,

    // Характеристики квартиры
    @JsonKey(name: 'rooms_count') List<OptionData>? roomsCount,
    @JsonKey(name: 'layout') List<OptionData>? layout,

    // Особенности (ремонт, лифты, балконы)
    @JsonKey(name: 'renovation') List<OptionData>? renovation,
    @JsonKey(name: 'elevators') List<OptionData>? elevators,
    @JsonKey(name: 'balconies') List<OptionData>? balconies,

    // Оснащение (мебель, удобства, техника)
    @JsonKey(name: 'furniture') List<OptionData>? furniture,
    @JsonKey(name: 'amenities') List<OptionData>? amenities,
    @JsonKey(name: 'bathroom') List<OptionData>? bathroom,
    @JsonKey(name: 'appliances') List<OptionData>? appliances,
    @JsonKey(name: 'stove') List<OptionData>? stove,

    // Условия сделки
    @JsonKey(name: 'currency') List<OptionData>? currency,
    @JsonKey(name: 'prepayment') List<OptionData>? prepayment,
    @JsonKey(name: 'rent_duration') List<OptionData>? rentDuration,
    @JsonKey(name: 'rent_conditions') List<OptionData>? rentConditions,

    // Контакты
    @JsonKey(name: 'contact_method') List<OptionData>? contactMethod,
  }) = _AdFormOptionsData;

  factory AdFormOptionsData.fromJson(Map<String, dynamic> json) =>
      _$AdFormOptionsDataFromJson(json);
}
