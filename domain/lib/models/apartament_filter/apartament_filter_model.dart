import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_filter_model.freezed.dart';

enum ApartmentSortType { popularity, priceAsc, priceDesc, dateDesc, dateAsc }

@freezed
sealed class ApartamentFilterModel with _$ApartamentFilterModel {
  const factory ApartamentFilterModel({
    @Default(0) int cityId,
    @Default(0) int goalId,
    @Default([]) List<int> propertyTypeIds,
    @Default([]) List<int> roomsCountIds,
    double? minPrice,
    double? maxPrice,
    @Default(0) int rentDurationId,
    @Default([]) List<int> districtIds,
    @Default('') String locationTitle,
    @Default('') String addressQuery,
    @Default(false) bool childrenAllowed,
    @Default(false) bool petsAllowed,
    @Default(ApartmentSortType.popularity) ApartmentSortType sortType,
  }) = _ApartamentFilterModel;
}
