import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/models/common/option_model.dart';

part 'ad_form_options_model.freezed.dart';

@freezed
sealed class AdFormOptionsModel with _$AdFormOptionsModel {
  const factory AdFormOptionsModel({
    // Цели и типы аренды
    @Default([]) List<OptionModel> rentGoal,
    @Default([]) List<OptionModel> rentPeriod,
    @Default([]) List<OptionModel> whoCanRent,

    // Типы недвижимости
    @Default([]) List<OptionModel> premisesType,
    @Default([]) List<OptionModel> propertyType,

    // Характеристики квартиры
    @Default([]) List<OptionModel> roomsCount,
    @Default([]) List<OptionModel> layout,

    // Особенности (ремонт, лифты, балконы)
    @Default([]) List<OptionModel> renovation,
    @Default([]) List<OptionModel> elevators,
    @Default([]) List<OptionModel> balconies,

    // Оснащение (мебель, удобства, техника)
    @Default([]) List<OptionModel> furniture,
    @Default([]) List<OptionModel> amenities,
    @Default([]) List<OptionModel> bathroom,
    @Default([]) List<OptionModel> appliances,
    @Default([]) List<OptionModel> stove,

    // Условия сделки
    @Default([]) List<OptionModel> currency,
    @Default([]) List<OptionModel> prepayment,
    @Default([]) List<OptionModel> rentDuration,
    @Default([]) List<OptionModel> rentConditions,

    // Контакты
    @Default([]) List<OptionModel> contactMethod,
  }) = _AdFormOptionsModel;
}
