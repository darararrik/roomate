import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_data.freezed.dart';
part 'apartament_data.g.dart';

@freezed
abstract class ApartamentData with _$ApartamentData {
  const factory ApartamentData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image_urls') List<String>? imageUrls,
    @JsonKey(name: 'is_verification') bool? isVerification,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'rooms_count') String? roomsCount,
    @JsonKey(name: 'area') String? area,
    @JsonKey(name: 'floor') int? floor,
    @JsonKey(name: 'total_floor') int? totalFloor,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'publish_date') String? publishDate,
    @JsonKey(name: 'total_viewers') String? totalViewers,
    @JsonKey(name: 'layout') String? layout,
    @JsonKey(name: 'renovation') String? renovation,
    @JsonKey(name: 'elevator_type') String? elevatorType,
    @JsonKey(name: 'furniture_type') String? furnitureType,
    @JsonKey(name: 'balcony_type') String? balconyType,
    @JsonKey(name: 'stove_type') String? stoveType,
    @JsonKey(name: 'deal_goal') String? dealGoal,
    @JsonKey(name: 'rent_term') String? rentTerm,
    @JsonKey(name: 'who_to_rent') List<String>? whoToRent,
    @JsonKey(name: 'prepayment_type') String? prepaymentType,
    @JsonKey(name: 'rental_period') String? rentalPeriod,
    @JsonKey(name: 'deposit') String? deposit,
    @JsonKey(name: 'amenities') List<String>? amenities,
  }) = _ApartamentData;

  factory ApartamentData.fromJson(Map<String, dynamic> json) => _$ApartamentDataFromJson(json);
}
