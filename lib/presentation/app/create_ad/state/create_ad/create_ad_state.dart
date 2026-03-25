import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';

part 'create_ad_state.freezed.dart';

@freezed
sealed class CreateAdState with _$CreateAdState {
  const factory CreateAdState({
    /// Данные для UI
    required List<TagGroupModel> rentTypeGroups,
    required TagGroupModel premisesTypeGroup,
    required TagGroupModel propertyTypeGroup,
    required List<TagGroupModel> apartmentPropertiesGroups,
    required List<TagGroupModel> featuresGroups,
    required List<TagGroupModel> thingsGroups,
    required List<TagGroupModel> dealTermsGroups,
    required TagGroupModel contactInfoGroup,

    // Выбранные значения
    @Default("") String goal, // Цель (Съем/Обмен)
    @Default("") String term, // Срок (Долгосрочная/Посуточно)
    @Default([]) List<String> whoReadyRent, // Кому сдавать (Multi)

    @Default("") String propertyType, // Вид недвижимости (Radio)
    @Default("") String premisesType, // Тип (Жилое/Коммерческое)

    @Default("") String roomCount, // Кол-во комнат (Radio)
    @Default("") String layout, // Планировка (Radio)

    @Default("") String renovation, // Ремонт (Radio)
    @Default("") String elevators, // Лифты (Radio)
    @Default("") String balconies, // Балконы (Radio)

    @Default("") String furniture, // Мебель (Radio)
    @Default([]) List<String> amenities, // Удобства (Multi)
    @Default([]) List<String> bathroom, // Ванная (Radio)
    @Default([]) List<String> appliances, // Техника (Multi)
    @Default("") String stove, // Плита (Radio)

    @Default(Currency.rub) Currency selectedCurrency,
    @Default("") String prepayment, // Предоплата (Radio)
    @Default("") String rentalPeriod, // Срок аренды (Radio)
    @Default([]) List<String> rentalConditions, // Условия (дети/животные) (Multi)

    @Default("") String contactMethod, // Способ связи (Radio)
    @Default(0) double cost,
    @Default(0) double deposit,
    @Default(0) double apartmentArea,
    @Default(0) int floor,
    @Default(0) int totalFloors,
    @Default("") String address,
    @Default(0) int apartmentNumber,
    @Default("") String title,
    @Default("") String description,
    @Default("") String additionalNumber,
  }) = _CreateAdState;
}
