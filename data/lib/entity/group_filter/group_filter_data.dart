import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_filter_data.freezed.dart';
part 'group_filter_data.g.dart';

@freezed
abstract class GroupFilterData with _$GroupFilterData {
  @JsonSerializable(includeIfNull: false)
  const factory GroupFilterData({
    @JsonKey(name: 'limit') @Default(20) int limit,
    @JsonKey(name: 'offset') @Default(0) int offset,
    @JsonKey(name: 'city_fias_id') String? cityFiasId,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'desired_gender') String? desiredGender,
    @JsonKey(name: 'min_age') int? minAge,
    @JsonKey(name: 'max_age') int? maxAge,
    @JsonKey(name: 'min_participants_count') int? minParticipantsCount,
    @JsonKey(name: 'max_participants_count') int? maxParticipantsCount,
    @JsonKey(name: "smart_query") String? smartQuery,
    @JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? propertyTypeIds,
    @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? roomsCountIds,
    @JsonKey(name: 'min_price') double? minPrice,
    @JsonKey(name: 'max_price') double? maxPrice,
    @JsonKey(name: 'rent_duration_id') int? rentDurationId,
    @JsonKey(name: 'sort_by') String? sortBy,
    @JsonKey(name: 'sort_order') String? sortOrder,
    @JsonKey(name: 'utilities_payment_id') int? utilitiesPaymentId,
    @JsonKey(name: 'children_allowed') bool? childrenAllowed,
    @JsonKey(name: 'partner_allowed') bool? partnerAllowed,
    @JsonKey(name: 'pets_allowed') bool? petsAllowed,
    @JsonKey(name: 'smoking_allowed') bool? smokingAllowed,
    @JsonKey(name: 'utilities_paid') bool? utilitiesPaid,
  }) = _GroupFilterData;

  factory GroupFilterData.fromJson(Map<String, dynamic> json) => _$GroupFilterDataFromJson(json);
}

String? _idsToJson(List<int>? ids) {
  if (ids == null || ids.isEmpty) return null;
  return ids.join(',');
}
