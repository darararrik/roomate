import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_filter.freezed.dart';

@freezed
sealed class ApartamentFilter with _$ApartamentFilter {
  const factory ApartamentFilter({
    @Default('Омск') String city,
    int? categoryId,
    @Default([]) List<int> propertyTypeIds,
    @Default([]) List<int> roomsCountIds,
    double? minPrice,
    double? maxPrice,
  }) = _ApartamentFilter;
}
