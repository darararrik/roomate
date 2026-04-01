import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';

part 'create_ad_state.freezed.dart';

@freezed
sealed class CreateAdState with _$CreateAdState {
  const factory CreateAdState({
    /// Выбранные теги: ключ = typeId, значение = список tagId
    @Default({}) Map<int, List<int>> selectedTagIdsByType,

    @Default(Currency.rub) Currency selectedCurrency,
    @Default(0) double cost,
    @Default(0) double deposit,
    @Default(0) double apartmentArea,
    @Default(0) int floor,
    @Default(0) int totalFloors,
    @Default("") String address,
    @Default(0) int apartmentNumber,
    @Default("") String title,
    @Default("") String description,
    @Default("") String mainPhone,
    @Default("") String additionalNumber,
  }) = _CreateAdState;
}
