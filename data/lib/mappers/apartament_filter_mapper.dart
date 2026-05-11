import 'package:data/entity/apartament_filter/apartament_filter_data.dart';
import 'package:domain/domain.dart';

abstract class ApartamentFilterMapper {
  static ApartamentFilterData toData(ApartamentFilterModel model) {
    return ApartamentFilterData(
      cityFiasId: model.cityFiasId.isEmpty ? null : model.cityFiasId,
      goalId: model.goalId,
      propertyTypeIds: _listOrNull(model.propertyTypeIds),
      roomsCountIds: _listOrNull(model.roomsCountIds),
      minPrice: model.minPrice,
      maxPrice: model.maxPrice,
      rentDurationId: model.rentDurationId,
      addressQuery: model.addressQuery.isEmpty ? null : model.addressQuery,
      sortBy: sortTypeToData(model.sortType),
      sortOrder: sortOrderToData(model.sortType),
    );
  }

  static List<int>? _listOrNull(List<int> value) {
    return value.isEmpty ? null : value;
  }

  static String sortTypeToData(ApartmentSortType sortType) {
    return switch (sortType) {
      ApartmentSortType.popularity => 'popularity',
      ApartmentSortType.priceAsc || ApartmentSortType.priceDesc => 'price',
      ApartmentSortType.dateAsc || ApartmentSortType.dateDesc => 'publish_date',
    };
  }

  static String sortOrderToData(ApartmentSortType sortType) {
    return switch (sortType) {
      ApartmentSortType.priceAsc || ApartmentSortType.dateAsc => 'asc',
      ApartmentSortType.popularity ||
      ApartmentSortType.priceDesc ||
      ApartmentSortType.dateDesc => 'desc',
    };
  }
}
