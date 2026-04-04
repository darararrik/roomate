import 'package:freezed_annotation/freezed_annotation.dart';
import '../common/option_model.dart';

part 'filter_model.freezed.dart';

@freezed
sealed class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default([]) List<OptionModel> categories,
    @Default([]) List<OptionModel> propertyTypes,
    @Default([]) List<OptionModel> roomsCounts,
  }) = _FilterModel;
}
