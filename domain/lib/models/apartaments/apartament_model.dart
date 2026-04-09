import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enums.dart';

part 'apartament_model.freezed.dart';

@freezed
sealed class ApartamentModel with _$ApartamentModel {
  const factory ApartamentModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<String> imageUrls,
    @Default(false) bool isVerification,
    @Default('') String price,
    @Default('') String roomsCount,
    @Default('') String area,
    @Default(0) int floor,
    @Default(0) int totalFloor,
    @Default('') String address,
    @Default('') String name,
    @Default('') String role,
    @Default('') String publishDate,
    @Default('') String totalViewers,
    @Default(null) ApartmentLayout? layout,
    @Default(null) RenovationType? renovation,
    @Default(null) ElevatorType? elevatorType,
    @Default(null) FurnitureType? furnitureType,
    @Default(null) BalconyType? balconyType,
    @Default(null) StoveType? stoveType,
    @Default(null) DealGoal? dealGoal,
    @Default(null) RentalConditions? rentTerm,
    @Default([]) List<WhoToRent> whoToRent,
    @Default(null) PrepaymentType? prepaymentType,
    @Default(null) RentalPeriod? rentalPeriod,
    @Default('') String deposit,
    @Default([]) List<ApartmentAmenity> amenities,
  }) = _ApartamentModel;
}
