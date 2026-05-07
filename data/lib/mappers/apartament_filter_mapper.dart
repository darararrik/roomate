import 'package:domain/domain.dart';

import 'package:data/data.dart';

abstract class ApartamentFilterMapper {
  static ApartamentFilterData toData(ApartamentFilterModel model) {
    return ApartamentFilterData(
      goalId: model.goalId,
      propertyTypeIds: _listOrNull(model.propertyTypeIds),
      roomsCountIds: _listOrNull(model.roomsCountIds),
      minPrice: model.minPrice,
      maxPrice: model.maxPrice,
      rentDurationId: model.rentDurationId,
      sortBy: _sortBy(model.sortType),
      sortOrder: _sortOrder(model.sortType),
    );
  }

  static List<int>? _listOrNull(List<int> value) {
    return value.isEmpty ? null : value;
  }

  static String _sortBy(ApartmentSortType sortType) {
    return switch (sortType) {
      ApartmentSortType.popularity => 'popularity',
      ApartmentSortType.priceAsc || ApartmentSortType.priceDesc => 'price',
      ApartmentSortType.dateAsc || ApartmentSortType.dateDesc => 'publish_date',
    };
  }

  static String _sortOrder(ApartmentSortType sortType) {
    return switch (sortType) {
      ApartmentSortType.priceAsc || ApartmentSortType.dateAsc => 'asc',
      ApartmentSortType.popularity ||
      ApartmentSortType.priceDesc ||
      ApartmentSortType.dateDesc => 'desc',
    };
  }
}
