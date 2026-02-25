import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:roomate/domain/enums/currency_enum.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';

part 'create_ad_state.freezed.dart';

@freezed
sealed class CreateAdState with _$CreateAdState {
  const factory CreateAdState({
    @Default({}) Map<SelectionStepKey, Map<String, List<String>>> selectedTags,
    @Default(Currency.rub) Currency selectedCurrency,
    @Default("") String cost,
  }) = _CreateAdState;
}
