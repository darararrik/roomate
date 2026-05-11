import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_filter_data.freezed.dart';
part 'apartament_filter_data.g.dart';

@freezed
abstract class ApartamentFilterData with _$ApartamentFilterData {
  @JsonSerializable(includeIfNull: false)
  const factory ApartamentFilterData({
    @JsonKey(name: 'limit') @Default(20) int limit,
    @JsonKey(name: 'offset') @Default(0) int offset,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'goal_id') int? goalId,
    @JsonKey(name: 'property_type_ids', toJson: _idsToJson)
    List<int>? propertyTypeIds,
    @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)
    List<int>? roomsCountIds,
    @JsonKey(name: 'min_price') double? minPrice,
    @JsonKey(name: 'max_price') double? maxPrice,
    @JsonKey(name: 'rent_duration_id') int? rentDurationId,
    @JsonKey(name: 'address_query') String? addressQuery,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'sort_by') String? sortBy,
    @JsonKey(name: 'sort_order') String? sortOrder,
  }) = _ApartamentFilterData;

  factory ApartamentFilterData.fromJson(Map<String, dynamic> json) =>
      _$ApartamentFilterDataFromJson(json);
}

String? _idsToJson(List<int>? ids) {
  if (ids == null || ids.isEmpty) return null;
  return ids.join(',');
}
