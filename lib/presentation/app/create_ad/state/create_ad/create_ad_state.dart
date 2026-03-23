import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/models/tag_model.dart';

part 'create_ad_state.freezed.dart';

// TODO: ГДЕ ТО В БУДУЩЕМ ПЕРЕПИСАТЬ
@freezed
sealed class CreateAdState with _$CreateAdState {
  const factory CreateAdState({
    @Default([]) List<TagGroupModel> rentTypeTags,
    @Default([]) List<TagGroupModel> roomTypeTags,
    @Default([]) List<TagGroupModel> propertyTypeTags,
    @Default([]) List<TagGroupModel> propertiesApartmentTags,
    @Default([]) List<TagGroupModel> featuresFirstTags,
    @Default([]) List<TagGroupModel> featuresSecondTags,
    @Default([]) List<TagGroupModel> dealTermsTags,
    @Default([]) List<TagGroupModel> contactInfoTags,
    @Default(Currency.rub) Currency selectedCurrency,
    @Default(0) double cost,
    @Default(0) double deposit,
    @Default(0) double apartmentArea,
    @Default(0) int floor,
    @Default(0) int totalFloors,
    // TODO: Тут моделька адреса или города
    @Default("") String address,
    @Default(0) int apartmentNumber,
    @Default("") String title,
    @Default("") String description,
    @Default("") String nubmer, // Он будет браться из акк
    @Default("") String additionalNumber, // Он будет браться из акк
  }) = _CreateAdState;
}
