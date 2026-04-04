import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartament_dto.freezed.dart';
part 'apartament_dto.g.dart';

@freezed
abstract class ApartamentDto with _$ApartamentDto {
  const factory ApartamentDto({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'image_urls') @Default([]) List<String> imageUrls,
    @JsonKey(name: 'is_verification') @Default(false) bool isVerification,
    @JsonKey(name: 'with_company') @Default(false) bool withCompany,
    @JsonKey(name: 'price') @Default('') String price,
    @JsonKey(name: 'rooms_count') @Default('') String roomsCount,
    @JsonKey(name: 'area') @Default('') String area,
    @JsonKey(name: 'floor') @Default(0) int floor,
    @JsonKey(name: 'total_floor') @Default(0) int totalFloor,
    @JsonKey(name: 'address') @Default('') String address,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'role') @Default('') String role,
    @JsonKey(name: 'publish_date') @Default('') String publishDate,
    @JsonKey(name: 'total_viewers') @Default('') String totalViewers,
    @JsonKey(name: 'layout') String? layout,
    @JsonKey(name: 'renovation') String? renovation,
    @JsonKey(name: 'elevator_type') String? elevatorType,
    @JsonKey(name: 'furniture_type') String? furnitureType,
    @JsonKey(name: 'balcony_type') String? balconyType,
    @JsonKey(name: 'stove_type') String? stoveType,
    @JsonKey(name: 'deal_goal') String? dealGoal,
    @JsonKey(name: 'rent_term') String? rentTerm,
    @JsonKey(name: 'who_to_rent') @Default([]) List<String> whoToRent,
    @JsonKey(name: 'prepayment_type') String? prepaymentType,
    @JsonKey(name: 'rental_period') String? rentalPeriod,
    @JsonKey(name: 'deposit') @Default('') String deposit,
    @JsonKey(name: 'amenities') @Default([]) List<String> amenities,
  }) = _ApartamentDto;

  factory ApartamentDto.fromJson(Map<String, dynamic> json) =>
      _$ApartamentDtoFromJson(json);
}
