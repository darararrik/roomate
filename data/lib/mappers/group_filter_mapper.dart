import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class GroupFilterMapper {
  static GroupFilterData toData(WhoSearchFilterModel model) {
    return GroupFilterData(
      limit: model.limit,
      offset: model.offset,
      smartQuery: model.smartQuery.isEmpty ? null : model.smartQuery,
      cityFiasId: model.cityFiasId.isEmpty ? null : model.cityFiasId,
      district: model.district.isEmpty ? null : model.district,
      desiredGender: _genderToData(model.desiredGender),
      minAge: model.minAge,
      maxAge: model.maxAge,
      minParticipantsCount: model.minParticipantsCount,
      maxParticipantsCount: model.maxParticipantsCount,
      propertyTypeIds: _listOrNull(model.propertyTypeIds),
      roomsCountIds: _listOrNull(model.roomsCountIds),
      minPrice: model.minPrice,
      maxPrice: model.maxPrice,
      rentDurationId: model.rentDurationId == 0 ? null : model.rentDurationId,
      sortBy: _sortTypeToData(model.sortType),
      sortOrder: _sortOrderToData(model.sortType),
      childrenAllowed: model.childrenAllowed ? true : null,
      partnerAllowed: model.partnerAllowed ? true : null,
      petsAllowed: model.petsAllowed ? true : null,
      smokingAllowed: model.smokingAllowed ? true : null,
    );
  }

  static String? _genderToData(GenderEnum? gender) {
    return switch (gender) {
      GenderEnum.male => 'male',
      GenderEnum.female => 'female',
      GenderEnum.other => 'other',
      null => null,
    };
  }

  static List<int>? _listOrNull(List<int> value) {
    return value.isEmpty ? null : value;
  }

  static String _sortTypeToData(WhoSearchSortType sortType) {
    return switch (sortType) {
      WhoSearchSortType.matchPercentDesc => 'match_percent',
      WhoSearchSortType.priceAsc || WhoSearchSortType.priceDesc => 'price',
      WhoSearchSortType.publishDateAsc ||
      WhoSearchSortType.publishDateDesc => 'publish_date',
      WhoSearchSortType.groupSizeAsc ||
      WhoSearchSortType.groupSizeDesc => 'group_size',
    };
  }

  static String _sortOrderToData(WhoSearchSortType sortType) {
    return switch (sortType) {
      WhoSearchSortType.matchPercentDesc => 'desc',
      WhoSearchSortType.priceAsc ||
      WhoSearchSortType.publishDateAsc ||
      WhoSearchSortType.groupSizeAsc => 'asc',
      WhoSearchSortType.priceDesc ||
      WhoSearchSortType.publishDateDesc ||
      WhoSearchSortType.groupSizeDesc => 'desc',
    };
  }
}
