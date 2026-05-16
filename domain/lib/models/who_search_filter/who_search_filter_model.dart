import 'package:domain/enums/gender_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'who_search_filter_model.freezed.dart';

enum WhoSearchSortType { priceAsc, priceDesc, publishDateDesc, publishDateAsc, groupSizeDesc, groupSizeAsc }

@freezed
sealed class WhoSearchFilterModel with _$WhoSearchFilterModel {
  const factory WhoSearchFilterModel({
    @Default(20) int limit,
    @Default(0) int offset,
    @Default('') String smartQuery,
    @Default('') String cityFiasId,
    @Default('') String district,
    GenderEnum? desiredGender,
    int? minAge,
    int? maxAge,
    int? minParticipantsCount,
    int? maxParticipantsCount,
    @Default([]) List<int> propertyTypeIds,
    @Default([]) List<int> roomsCountIds,
    double? minPrice,
    double? maxPrice,
    @Default(0) int rentDurationId,
    @Default(false) bool childrenAllowed,
    @Default(false) bool partnerAllowed,
    @Default(false) bool petsAllowed,
    @Default(false) bool smokingAllowed,
    @Default(WhoSearchSortType.publishDateDesc) WhoSearchSortType sortType,

    @Default('') String locationTitle,
    @Default('') String addressQuery,
    @Default(false) bool utilitiesPayment,
  }) = _WhoSearchFilterModel;
}
