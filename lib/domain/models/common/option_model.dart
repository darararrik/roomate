import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/models/chip_model.dart';

part 'option_model.freezed.dart';

/// Универсальная маленькая модель для любого пункта выбора: {id, title}.
/// Реализует [ChipModel] — пригодна для любых чипов в приложении.
@freezed
sealed class OptionModel with _$OptionModel implements ChipModel {
  const factory OptionModel({
    @Default(0) int id,
    @Default('') String title,
    @Default(false) bool isDisabled,
  }) = _OptionModel;

  const OptionModel._();

  @override
  String get label => title;
}
