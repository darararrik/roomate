import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_selection_model.freezed.dart';

@freezed
sealed class LocationSelectionModel with _$LocationSelectionModel {
  const factory LocationSelectionModel({
    @Default(0) int cityId,
    @Default('') String cityTitle,
    @Default('') String cityFiasId,
    @Default('') String addressQuery,
    @Default('') String displayTitle,
  }) = _LocationSelectionModel;
}
