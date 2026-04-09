// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_form_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAdFormRequestDto {

@JsonKey(name: 'rent_goal_id') int? get rentGoalId;@JsonKey(name: 'rent_period_id') int? get rentPeriodId;@JsonKey(name: 'who_can_rent_ids') Set<int>? get whoCanRentIds;@JsonKey(name: 'premises_type_id') int? get premisesTypeId;@JsonKey(name: 'property_type_id') int? get propertyTypeId;@JsonKey(name: 'rooms_count_id') int? get roomsCountId;@JsonKey(name: 'layout_id') int? get layoutId;@JsonKey(name: 'renovation_id') int? get renovationId;@JsonKey(name: 'elevators_id') int? get elevatorsId;@JsonKey(name: 'balconies_id') int? get balconiesId;@JsonKey(name: 'furniture_id') int? get furnitureId;@JsonKey(name: 'amenities_ids') Set<int>? get amenitiesIds;@JsonKey(name: 'bathroom_ids') Set<int>? get bathroomIds;@JsonKey(name: 'appliances_ids') Set<int>? get appliancesIds;@JsonKey(name: 'stove_id') int? get stoveId;@JsonKey(name: 'currency_id') int? get currencyId;@JsonKey(name: 'prepayment_id') int? get prepaymentId;@JsonKey(name: 'rent_duration_id') int? get rentDurationId;@JsonKey(name: 'rent_conditions_ids') Set<int>? get rentConditionsIds;@JsonKey(name: 'contact_method_id') int? get contactMethodId;@JsonKey(name: 'selected_currency') Currency? get selectedCurrency;@JsonKey(name: 'cost') double? get cost;@JsonKey(name: 'deposit') double? get deposit;@JsonKey(name: 'apartment_area') double? get apartmentArea;@JsonKey(name: 'floor') int? get floor;@JsonKey(name: 'total_floors') int? get totalFloors;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'apartment_number') int? get apartmentNumber;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'main_phone') String? get mainPhone;@JsonKey(name: 'additional_number') String? get additionalNumber;
/// Create a copy of CreateAdFormRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdFormRequestDtoCopyWith<CreateAdFormRequestDto> get copyWith => _$CreateAdFormRequestDtoCopyWithImpl<CreateAdFormRequestDto>(this as CreateAdFormRequestDto, _$identity);

  /// Serializes this CreateAdFormRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdFormRequestDto&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other.whoCanRentIds, whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other.amenitiesIds, amenitiesIds)&&const DeepCollectionEquality().equals(other.bathroomIds, bathroomIds)&&const DeepCollectionEquality().equals(other.appliancesIds, appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other.rentConditionsIds, rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(amenitiesIds),const DeepCollectionEquality().hash(bathroomIds),const DeepCollectionEquality().hash(appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(rentConditionsIds),contactMethodId,selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateAdFormRequestDto(rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateAdFormRequestDtoCopyWith<$Res>  {
  factory $CreateAdFormRequestDtoCopyWith(CreateAdFormRequestDto value, $Res Function(CreateAdFormRequestDto) _then) = _$CreateAdFormRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rent_goal_id') int? rentGoalId,@JsonKey(name: 'rent_period_id') int? rentPeriodId,@JsonKey(name: 'who_can_rent_ids') Set<int>? whoCanRentIds,@JsonKey(name: 'premises_type_id') int? premisesTypeId,@JsonKey(name: 'property_type_id') int? propertyTypeId,@JsonKey(name: 'rooms_count_id') int? roomsCountId,@JsonKey(name: 'layout_id') int? layoutId,@JsonKey(name: 'renovation_id') int? renovationId,@JsonKey(name: 'elevators_id') int? elevatorsId,@JsonKey(name: 'balconies_id') int? balconiesId,@JsonKey(name: 'furniture_id') int? furnitureId,@JsonKey(name: 'amenities_ids') Set<int>? amenitiesIds,@JsonKey(name: 'bathroom_ids') Set<int>? bathroomIds,@JsonKey(name: 'appliances_ids') Set<int>? appliancesIds,@JsonKey(name: 'stove_id') int? stoveId,@JsonKey(name: 'currency_id') int? currencyId,@JsonKey(name: 'prepayment_id') int? prepaymentId,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'rent_conditions_ids') Set<int>? rentConditionsIds,@JsonKey(name: 'contact_method_id') int? contactMethodId,@JsonKey(name: 'selected_currency') Currency? selectedCurrency,@JsonKey(name: 'cost') double? cost,@JsonKey(name: 'deposit') double? deposit,@JsonKey(name: 'apartment_area') double? apartmentArea,@JsonKey(name: 'floor') int? floor,@JsonKey(name: 'total_floors') int? totalFloors,@JsonKey(name: 'address') String? address,@JsonKey(name: 'apartment_number') int? apartmentNumber,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'main_phone') String? mainPhone,@JsonKey(name: 'additional_number') String? additionalNumber
});




}
/// @nodoc
class _$CreateAdFormRequestDtoCopyWithImpl<$Res>
    implements $CreateAdFormRequestDtoCopyWith<$Res> {
  _$CreateAdFormRequestDtoCopyWithImpl(this._self, this._then);

  final CreateAdFormRequestDto _self;
  final $Res Function(CreateAdFormRequestDto) _then;

/// Create a copy of CreateAdFormRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoalId = freezed,Object? rentPeriodId = freezed,Object? whoCanRentIds = freezed,Object? premisesTypeId = freezed,Object? propertyTypeId = freezed,Object? roomsCountId = freezed,Object? layoutId = freezed,Object? renovationId = freezed,Object? elevatorsId = freezed,Object? balconiesId = freezed,Object? furnitureId = freezed,Object? amenitiesIds = freezed,Object? bathroomIds = freezed,Object? appliancesIds = freezed,Object? stoveId = freezed,Object? currencyId = freezed,Object? prepaymentId = freezed,Object? rentDurationId = freezed,Object? rentConditionsIds = freezed,Object? contactMethodId = freezed,Object? selectedCurrency = freezed,Object? cost = freezed,Object? deposit = freezed,Object? apartmentArea = freezed,Object? floor = freezed,Object? totalFloors = freezed,Object? address = freezed,Object? apartmentNumber = freezed,Object? title = freezed,Object? description = freezed,Object? mainPhone = freezed,Object? additionalNumber = freezed,}) {
  return _then(_self.copyWith(
rentGoalId: freezed == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int?,rentPeriodId: freezed == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int?,whoCanRentIds: freezed == whoCanRentIds ? _self.whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,premisesTypeId: freezed == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,roomsCountId: freezed == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int?,layoutId: freezed == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int?,renovationId: freezed == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int?,elevatorsId: freezed == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int?,balconiesId: freezed == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int?,furnitureId: freezed == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int?,amenitiesIds: freezed == amenitiesIds ? _self.amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,bathroomIds: freezed == bathroomIds ? _self.bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,appliancesIds: freezed == appliancesIds ? _self.appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,stoveId: freezed == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int?,prepaymentId: freezed == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,rentConditionsIds: freezed == rentConditionsIds ? _self.rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,contactMethodId: freezed == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double?,apartmentArea: freezed == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloors: freezed == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,apartmentNumber: freezed == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mainPhone: freezed == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String?,additionalNumber: freezed == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdFormRequestDto].
extension CreateAdFormRequestDtoPatterns on CreateAdFormRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdFormRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdFormRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdFormRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdFormRequestDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdFormRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdFormRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  Set<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  Set<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  Set<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  Set<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  Set<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  Currency? selectedCurrency, @JsonKey(name: 'cost')  double? cost, @JsonKey(name: 'deposit')  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'apartment_number')  int? apartmentNumber, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdFormRequestDto() when $default != null:
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  Set<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  Set<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  Set<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  Set<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  Set<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  Currency? selectedCurrency, @JsonKey(name: 'cost')  double? cost, @JsonKey(name: 'deposit')  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'apartment_number')  int? apartmentNumber, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateAdFormRequestDto():
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  Set<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  Set<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  Set<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  Set<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  Set<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  Currency? selectedCurrency, @JsonKey(name: 'cost')  double? cost, @JsonKey(name: 'deposit')  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'apartment_number')  int? apartmentNumber, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdFormRequestDto() when $default != null:
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAdFormRequestDto implements CreateAdFormRequestDto {
  const _CreateAdFormRequestDto({@JsonKey(name: 'rent_goal_id') this.rentGoalId, @JsonKey(name: 'rent_period_id') this.rentPeriodId, @JsonKey(name: 'who_can_rent_ids') final  Set<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id') this.premisesTypeId, @JsonKey(name: 'property_type_id') this.propertyTypeId, @JsonKey(name: 'rooms_count_id') this.roomsCountId, @JsonKey(name: 'layout_id') this.layoutId, @JsonKey(name: 'renovation_id') this.renovationId, @JsonKey(name: 'elevators_id') this.elevatorsId, @JsonKey(name: 'balconies_id') this.balconiesId, @JsonKey(name: 'furniture_id') this.furnitureId, @JsonKey(name: 'amenities_ids') final  Set<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids') final  Set<int>? bathroomIds, @JsonKey(name: 'appliances_ids') final  Set<int>? appliancesIds, @JsonKey(name: 'stove_id') this.stoveId, @JsonKey(name: 'currency_id') this.currencyId, @JsonKey(name: 'prepayment_id') this.prepaymentId, @JsonKey(name: 'rent_duration_id') this.rentDurationId, @JsonKey(name: 'rent_conditions_ids') final  Set<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id') this.contactMethodId, @JsonKey(name: 'selected_currency') this.selectedCurrency, @JsonKey(name: 'cost') this.cost, @JsonKey(name: 'deposit') this.deposit, @JsonKey(name: 'apartment_area') this.apartmentArea, @JsonKey(name: 'floor') this.floor, @JsonKey(name: 'total_floors') this.totalFloors, @JsonKey(name: 'address') this.address, @JsonKey(name: 'apartment_number') this.apartmentNumber, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'main_phone') this.mainPhone, @JsonKey(name: 'additional_number') this.additionalNumber}): _whoCanRentIds = whoCanRentIds,_amenitiesIds = amenitiesIds,_bathroomIds = bathroomIds,_appliancesIds = appliancesIds,_rentConditionsIds = rentConditionsIds;
  factory _CreateAdFormRequestDto.fromJson(Map<String, dynamic> json) => _$CreateAdFormRequestDtoFromJson(json);

@override@JsonKey(name: 'rent_goal_id') final  int? rentGoalId;
@override@JsonKey(name: 'rent_period_id') final  int? rentPeriodId;
 final  Set<int>? _whoCanRentIds;
@override@JsonKey(name: 'who_can_rent_ids') Set<int>? get whoCanRentIds {
  final value = _whoCanRentIds;
  if (value == null) return null;
  if (_whoCanRentIds is EqualUnmodifiableSetView) return _whoCanRentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

@override@JsonKey(name: 'premises_type_id') final  int? premisesTypeId;
@override@JsonKey(name: 'property_type_id') final  int? propertyTypeId;
@override@JsonKey(name: 'rooms_count_id') final  int? roomsCountId;
@override@JsonKey(name: 'layout_id') final  int? layoutId;
@override@JsonKey(name: 'renovation_id') final  int? renovationId;
@override@JsonKey(name: 'elevators_id') final  int? elevatorsId;
@override@JsonKey(name: 'balconies_id') final  int? balconiesId;
@override@JsonKey(name: 'furniture_id') final  int? furnitureId;
 final  Set<int>? _amenitiesIds;
@override@JsonKey(name: 'amenities_ids') Set<int>? get amenitiesIds {
  final value = _amenitiesIds;
  if (value == null) return null;
  if (_amenitiesIds is EqualUnmodifiableSetView) return _amenitiesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

 final  Set<int>? _bathroomIds;
@override@JsonKey(name: 'bathroom_ids') Set<int>? get bathroomIds {
  final value = _bathroomIds;
  if (value == null) return null;
  if (_bathroomIds is EqualUnmodifiableSetView) return _bathroomIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

 final  Set<int>? _appliancesIds;
@override@JsonKey(name: 'appliances_ids') Set<int>? get appliancesIds {
  final value = _appliancesIds;
  if (value == null) return null;
  if (_appliancesIds is EqualUnmodifiableSetView) return _appliancesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

@override@JsonKey(name: 'stove_id') final  int? stoveId;
@override@JsonKey(name: 'currency_id') final  int? currencyId;
@override@JsonKey(name: 'prepayment_id') final  int? prepaymentId;
@override@JsonKey(name: 'rent_duration_id') final  int? rentDurationId;
 final  Set<int>? _rentConditionsIds;
@override@JsonKey(name: 'rent_conditions_ids') Set<int>? get rentConditionsIds {
  final value = _rentConditionsIds;
  if (value == null) return null;
  if (_rentConditionsIds is EqualUnmodifiableSetView) return _rentConditionsIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

@override@JsonKey(name: 'contact_method_id') final  int? contactMethodId;
@override@JsonKey(name: 'selected_currency') final  Currency? selectedCurrency;
@override@JsonKey(name: 'cost') final  double? cost;
@override@JsonKey(name: 'deposit') final  double? deposit;
@override@JsonKey(name: 'apartment_area') final  double? apartmentArea;
@override@JsonKey(name: 'floor') final  int? floor;
@override@JsonKey(name: 'total_floors') final  int? totalFloors;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'apartment_number') final  int? apartmentNumber;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'main_phone') final  String? mainPhone;
@override@JsonKey(name: 'additional_number') final  String? additionalNumber;

/// Create a copy of CreateAdFormRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdFormRequestDtoCopyWith<_CreateAdFormRequestDto> get copyWith => __$CreateAdFormRequestDtoCopyWithImpl<_CreateAdFormRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAdFormRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdFormRequestDto&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other._whoCanRentIds, _whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other._amenitiesIds, _amenitiesIds)&&const DeepCollectionEquality().equals(other._bathroomIds, _bathroomIds)&&const DeepCollectionEquality().equals(other._appliancesIds, _appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other._rentConditionsIds, _rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(_whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(_amenitiesIds),const DeepCollectionEquality().hash(_bathroomIds),const DeepCollectionEquality().hash(_appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(_rentConditionsIds),contactMethodId,selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateAdFormRequestDto(rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateAdFormRequestDtoCopyWith<$Res> implements $CreateAdFormRequestDtoCopyWith<$Res> {
  factory _$CreateAdFormRequestDtoCopyWith(_CreateAdFormRequestDto value, $Res Function(_CreateAdFormRequestDto) _then) = __$CreateAdFormRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rent_goal_id') int? rentGoalId,@JsonKey(name: 'rent_period_id') int? rentPeriodId,@JsonKey(name: 'who_can_rent_ids') Set<int>? whoCanRentIds,@JsonKey(name: 'premises_type_id') int? premisesTypeId,@JsonKey(name: 'property_type_id') int? propertyTypeId,@JsonKey(name: 'rooms_count_id') int? roomsCountId,@JsonKey(name: 'layout_id') int? layoutId,@JsonKey(name: 'renovation_id') int? renovationId,@JsonKey(name: 'elevators_id') int? elevatorsId,@JsonKey(name: 'balconies_id') int? balconiesId,@JsonKey(name: 'furniture_id') int? furnitureId,@JsonKey(name: 'amenities_ids') Set<int>? amenitiesIds,@JsonKey(name: 'bathroom_ids') Set<int>? bathroomIds,@JsonKey(name: 'appliances_ids') Set<int>? appliancesIds,@JsonKey(name: 'stove_id') int? stoveId,@JsonKey(name: 'currency_id') int? currencyId,@JsonKey(name: 'prepayment_id') int? prepaymentId,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'rent_conditions_ids') Set<int>? rentConditionsIds,@JsonKey(name: 'contact_method_id') int? contactMethodId,@JsonKey(name: 'selected_currency') Currency? selectedCurrency,@JsonKey(name: 'cost') double? cost,@JsonKey(name: 'deposit') double? deposit,@JsonKey(name: 'apartment_area') double? apartmentArea,@JsonKey(name: 'floor') int? floor,@JsonKey(name: 'total_floors') int? totalFloors,@JsonKey(name: 'address') String? address,@JsonKey(name: 'apartment_number') int? apartmentNumber,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'main_phone') String? mainPhone,@JsonKey(name: 'additional_number') String? additionalNumber
});




}
/// @nodoc
class __$CreateAdFormRequestDtoCopyWithImpl<$Res>
    implements _$CreateAdFormRequestDtoCopyWith<$Res> {
  __$CreateAdFormRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateAdFormRequestDto _self;
  final $Res Function(_CreateAdFormRequestDto) _then;

/// Create a copy of CreateAdFormRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoalId = freezed,Object? rentPeriodId = freezed,Object? whoCanRentIds = freezed,Object? premisesTypeId = freezed,Object? propertyTypeId = freezed,Object? roomsCountId = freezed,Object? layoutId = freezed,Object? renovationId = freezed,Object? elevatorsId = freezed,Object? balconiesId = freezed,Object? furnitureId = freezed,Object? amenitiesIds = freezed,Object? bathroomIds = freezed,Object? appliancesIds = freezed,Object? stoveId = freezed,Object? currencyId = freezed,Object? prepaymentId = freezed,Object? rentDurationId = freezed,Object? rentConditionsIds = freezed,Object? contactMethodId = freezed,Object? selectedCurrency = freezed,Object? cost = freezed,Object? deposit = freezed,Object? apartmentArea = freezed,Object? floor = freezed,Object? totalFloors = freezed,Object? address = freezed,Object? apartmentNumber = freezed,Object? title = freezed,Object? description = freezed,Object? mainPhone = freezed,Object? additionalNumber = freezed,}) {
  return _then(_CreateAdFormRequestDto(
rentGoalId: freezed == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int?,rentPeriodId: freezed == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int?,whoCanRentIds: freezed == whoCanRentIds ? _self._whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,premisesTypeId: freezed == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,roomsCountId: freezed == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int?,layoutId: freezed == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int?,renovationId: freezed == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int?,elevatorsId: freezed == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int?,balconiesId: freezed == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int?,furnitureId: freezed == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int?,amenitiesIds: freezed == amenitiesIds ? _self._amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,bathroomIds: freezed == bathroomIds ? _self._bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,appliancesIds: freezed == appliancesIds ? _self._appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,stoveId: freezed == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int?,prepaymentId: freezed == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,rentConditionsIds: freezed == rentConditionsIds ? _self._rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as Set<int>?,contactMethodId: freezed == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double?,apartmentArea: freezed == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloors: freezed == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,apartmentNumber: freezed == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mainPhone: freezed == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String?,additionalNumber: freezed == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
