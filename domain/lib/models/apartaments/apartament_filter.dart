import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_filter.freezed.dart';

@freezed
sealed class ApartamentFilter with _$ApartamentFilter {
  const factory ApartamentFilter({
    @Default(0) int cityId,
    @Default(0) int goalId,
    @Default([]) List<int> propertyTypeIds,
    @Default([]) List<int> roomsCountIds,
    double? minPrice,
    double? maxPrice,
    @Default(0) int rentDurationId,
    @Default('') String district,
  }) = _ApartamentFilter;
}
