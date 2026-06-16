// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApartamentData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'image_urls') List<String>? get imageUrls;@JsonKey(name: 'is_verification') bool? get isVerification;@JsonKey(name: 'price') String? get price;@JsonKey(name: 'rooms_count') String? get roomsCount;@JsonKey(name: 'area') String? get area;@JsonKey(name: 'floor') int? get floor;@JsonKey(name: 'total_floor') int? get totalFloor;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'city_id') int? get cityId;@JsonKey(name: 'city_fias_id') String? get cityFiasId;@JsonKey(name: 'district') String? get district;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'role') String? get role;@JsonKey(name: 'application_status') String? get applicationStatus;@JsonKey(name: 'publish_date') String? get publishDate;@JsonKey(name: 'total_viewers') String? get totalViewers;@JsonKey(name: 'layout') String? get layout;@JsonKey(name: 'renovation') String? get renovation;@JsonKey(name: 'elevator_type') String? get elevatorType;@JsonKey(name: 'furniture_type') String? get furnitureType;@JsonKey(name: 'balcony_type') String? get balconyType;@JsonKey(name: 'stove_type') String? get stoveType;@JsonKey(name: 'deal_goal') String? get dealGoal;@JsonKey(name: 'rent_term') String? get rentTerm;@JsonKey(name: 'who_to_rent') List<String>? get whoToRent;@JsonKey(name: 'prepayment_type') String? get prepaymentType;@JsonKey(name: 'rental_period') String? get rentalPeriod;@JsonKey(name: 'deposit') String? get deposit;@JsonKey(name: 'amenities') List<String>? get amenities;
/// Create a copy of ApartamentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<ApartamentData> get copyWith => _$ApartamentDataCopyWithImpl<ApartamentData>(this as ApartamentData, _$identity);

  /// Serializes this ApartamentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.isVerification, isVerification) || other.isVerification == isVerification)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.totalViewers, totalViewers) || other.totalViewers == totalViewers)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevatorType, elevatorType) || other.elevatorType == elevatorType)&&(identical(other.furnitureType, furnitureType) || other.furnitureType == furnitureType)&&(identical(other.balconyType, balconyType) || other.balconyType == balconyType)&&(identical(other.stoveType, stoveType) || other.stoveType == stoveType)&&(identical(other.dealGoal, dealGoal) || other.dealGoal == dealGoal)&&(identical(other.rentTerm, rentTerm) || other.rentTerm == rentTerm)&&const DeepCollectionEquality().equals(other.whoToRent, whoToRent)&&(identical(other.prepaymentType, prepaymentType) || other.prepaymentType == prepaymentType)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&const DeepCollectionEquality().equals(other.amenities, amenities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,const DeepCollectionEquality().hash(imageUrls),isVerification,price,roomsCount,area,floor,totalFloor,address,cityId,cityFiasId,district,name,role,applicationStatus,publishDate,totalViewers,layout,renovation,elevatorType,furnitureType,balconyType,stoveType,dealGoal,rentTerm,const DeepCollectionEquality().hash(whoToRent),prepaymentType,rentalPeriod,deposit,const DeepCollectionEquality().hash(amenities)]);

@override
String toString() {
  return 'ApartamentData(id: $id, title: $title, description: $description, imageUrls: $imageUrls, isVerification: $isVerification, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, cityId: $cityId, cityFiasId: $cityFiasId, district: $district, name: $name, role: $role, applicationStatus: $applicationStatus, publishDate: $publishDate, totalViewers: $totalViewers, layout: $layout, renovation: $renovation, elevatorType: $elevatorType, furnitureType: $furnitureType, balconyType: $balconyType, stoveType: $stoveType, dealGoal: $dealGoal, rentTerm: $rentTerm, whoToRent: $whoToRent, prepaymentType: $prepaymentType, rentalPeriod: $rentalPeriod, deposit: $deposit, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class $ApartamentDataCopyWith<$Res>  {
  factory $ApartamentDataCopyWith(ApartamentData value, $Res Function(ApartamentData) _then) = _$ApartamentDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'image_urls') List<String>? imageUrls,@JsonKey(name: 'is_verification') bool? isVerification,@JsonKey(name: 'price') String? price,@JsonKey(name: 'rooms_count') String? roomsCount,@JsonKey(name: 'area') String? area,@JsonKey(name: 'floor') int? floor,@JsonKey(name: 'total_floor') int? totalFloor,@JsonKey(name: 'address') String? address,@JsonKey(name: 'city_id') int? cityId,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'name') String? name,@JsonKey(name: 'role') String? role,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'publish_date') String? publishDate,@JsonKey(name: 'total_viewers') String? totalViewers,@JsonKey(name: 'layout') String? layout,@JsonKey(name: 'renovation') String? renovation,@JsonKey(name: 'elevator_type') String? elevatorType,@JsonKey(name: 'furniture_type') String? furnitureType,@JsonKey(name: 'balcony_type') String? balconyType,@JsonKey(name: 'stove_type') String? stoveType,@JsonKey(name: 'deal_goal') String? dealGoal,@JsonKey(name: 'rent_term') String? rentTerm,@JsonKey(name: 'who_to_rent') List<String>? whoToRent,@JsonKey(name: 'prepayment_type') String? prepaymentType,@JsonKey(name: 'rental_period') String? rentalPeriod,@JsonKey(name: 'deposit') String? deposit,@JsonKey(name: 'amenities') List<String>? amenities
});




}
/// @nodoc
class _$ApartamentDataCopyWithImpl<$Res>
    implements $ApartamentDataCopyWith<$Res> {
  _$ApartamentDataCopyWithImpl(this._self, this._then);

  final ApartamentData _self;
  final $Res Function(ApartamentData) _then;

/// Create a copy of ApartamentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? imageUrls = freezed,Object? isVerification = freezed,Object? price = freezed,Object? roomsCount = freezed,Object? area = freezed,Object? floor = freezed,Object? totalFloor = freezed,Object? address = freezed,Object? cityId = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? name = freezed,Object? role = freezed,Object? applicationStatus = freezed,Object? publishDate = freezed,Object? totalViewers = freezed,Object? layout = freezed,Object? renovation = freezed,Object? elevatorType = freezed,Object? furnitureType = freezed,Object? balconyType = freezed,Object? stoveType = freezed,Object? dealGoal = freezed,Object? rentTerm = freezed,Object? whoToRent = freezed,Object? prepaymentType = freezed,Object? rentalPeriod = freezed,Object? deposit = freezed,Object? amenities = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,isVerification: freezed == isVerification ? _self.isVerification : isVerification // ignore: cast_nullable_to_non_nullable
as bool?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,roomsCount: freezed == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloor: freezed == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,publishDate: freezed == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as String?,totalViewers: freezed == totalViewers ? _self.totalViewers : totalViewers // ignore: cast_nullable_to_non_nullable
as String?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String?,renovation: freezed == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as String?,elevatorType: freezed == elevatorType ? _self.elevatorType : elevatorType // ignore: cast_nullable_to_non_nullable
as String?,furnitureType: freezed == furnitureType ? _self.furnitureType : furnitureType // ignore: cast_nullable_to_non_nullable
as String?,balconyType: freezed == balconyType ? _self.balconyType : balconyType // ignore: cast_nullable_to_non_nullable
as String?,stoveType: freezed == stoveType ? _self.stoveType : stoveType // ignore: cast_nullable_to_non_nullable
as String?,dealGoal: freezed == dealGoal ? _self.dealGoal : dealGoal // ignore: cast_nullable_to_non_nullable
as String?,rentTerm: freezed == rentTerm ? _self.rentTerm : rentTerm // ignore: cast_nullable_to_non_nullable
as String?,whoToRent: freezed == whoToRent ? _self.whoToRent : whoToRent // ignore: cast_nullable_to_non_nullable
as List<String>?,prepaymentType: freezed == prepaymentType ? _self.prepaymentType : prepaymentType // ignore: cast_nullable_to_non_nullable
as String?,rentalPeriod: freezed == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as String?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as String?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentData].
extension ApartamentDataPatterns on ApartamentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentData value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentData value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'is_verification')  bool? isVerification, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'rooms_count')  String? roomsCount, @JsonKey(name: 'area')  String? area, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floor')  int? totalFloor, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'publish_date')  String? publishDate, @JsonKey(name: 'total_viewers')  String? totalViewers, @JsonKey(name: 'layout')  String? layout, @JsonKey(name: 'renovation')  String? renovation, @JsonKey(name: 'elevator_type')  String? elevatorType, @JsonKey(name: 'furniture_type')  String? furnitureType, @JsonKey(name: 'balcony_type')  String? balconyType, @JsonKey(name: 'stove_type')  String? stoveType, @JsonKey(name: 'deal_goal')  String? dealGoal, @JsonKey(name: 'rent_term')  String? rentTerm, @JsonKey(name: 'who_to_rent')  List<String>? whoToRent, @JsonKey(name: 'prepayment_type')  String? prepaymentType, @JsonKey(name: 'rental_period')  String? rentalPeriod, @JsonKey(name: 'deposit')  String? deposit, @JsonKey(name: 'amenities')  List<String>? amenities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.applicationStatus,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'is_verification')  bool? isVerification, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'rooms_count')  String? roomsCount, @JsonKey(name: 'area')  String? area, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floor')  int? totalFloor, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'publish_date')  String? publishDate, @JsonKey(name: 'total_viewers')  String? totalViewers, @JsonKey(name: 'layout')  String? layout, @JsonKey(name: 'renovation')  String? renovation, @JsonKey(name: 'elevator_type')  String? elevatorType, @JsonKey(name: 'furniture_type')  String? furnitureType, @JsonKey(name: 'balcony_type')  String? balconyType, @JsonKey(name: 'stove_type')  String? stoveType, @JsonKey(name: 'deal_goal')  String? dealGoal, @JsonKey(name: 'rent_term')  String? rentTerm, @JsonKey(name: 'who_to_rent')  List<String>? whoToRent, @JsonKey(name: 'prepayment_type')  String? prepaymentType, @JsonKey(name: 'rental_period')  String? rentalPeriod, @JsonKey(name: 'deposit')  String? deposit, @JsonKey(name: 'amenities')  List<String>? amenities)  $default,) {final _that = this;
switch (_that) {
case _ApartamentData():
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.applicationStatus,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'is_verification')  bool? isVerification, @JsonKey(name: 'price')  String? price, @JsonKey(name: 'rooms_count')  String? roomsCount, @JsonKey(name: 'area')  String? area, @JsonKey(name: 'floor')  int? floor, @JsonKey(name: 'total_floor')  int? totalFloor, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'city_id')  int? cityId, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'publish_date')  String? publishDate, @JsonKey(name: 'total_viewers')  String? totalViewers, @JsonKey(name: 'layout')  String? layout, @JsonKey(name: 'renovation')  String? renovation, @JsonKey(name: 'elevator_type')  String? elevatorType, @JsonKey(name: 'furniture_type')  String? furnitureType, @JsonKey(name: 'balcony_type')  String? balconyType, @JsonKey(name: 'stove_type')  String? stoveType, @JsonKey(name: 'deal_goal')  String? dealGoal, @JsonKey(name: 'rent_term')  String? rentTerm, @JsonKey(name: 'who_to_rent')  List<String>? whoToRent, @JsonKey(name: 'prepayment_type')  String? prepaymentType, @JsonKey(name: 'rental_period')  String? rentalPeriod, @JsonKey(name: 'deposit')  String? deposit, @JsonKey(name: 'amenities')  List<String>? amenities)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.applicationStatus,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApartamentData implements ApartamentData {
  const _ApartamentData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'image_urls') final  List<String>? imageUrls, @JsonKey(name: 'is_verification') this.isVerification, @JsonKey(name: 'price') this.price, @JsonKey(name: 'rooms_count') this.roomsCount, @JsonKey(name: 'area') this.area, @JsonKey(name: 'floor') this.floor, @JsonKey(name: 'total_floor') this.totalFloor, @JsonKey(name: 'address') this.address, @JsonKey(name: 'city_id') this.cityId, @JsonKey(name: 'city_fias_id') this.cityFiasId, @JsonKey(name: 'district') this.district, @JsonKey(name: 'name') this.name, @JsonKey(name: 'role') this.role, @JsonKey(name: 'application_status') this.applicationStatus, @JsonKey(name: 'publish_date') this.publishDate, @JsonKey(name: 'total_viewers') this.totalViewers, @JsonKey(name: 'layout') this.layout, @JsonKey(name: 'renovation') this.renovation, @JsonKey(name: 'elevator_type') this.elevatorType, @JsonKey(name: 'furniture_type') this.furnitureType, @JsonKey(name: 'balcony_type') this.balconyType, @JsonKey(name: 'stove_type') this.stoveType, @JsonKey(name: 'deal_goal') this.dealGoal, @JsonKey(name: 'rent_term') this.rentTerm, @JsonKey(name: 'who_to_rent') final  List<String>? whoToRent, @JsonKey(name: 'prepayment_type') this.prepaymentType, @JsonKey(name: 'rental_period') this.rentalPeriod, @JsonKey(name: 'deposit') this.deposit, @JsonKey(name: 'amenities') final  List<String>? amenities}): _imageUrls = imageUrls,_whoToRent = whoToRent,_amenities = amenities;
  factory _ApartamentData.fromJson(Map<String, dynamic> json) => _$ApartamentDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
 final  List<String>? _imageUrls;
@override@JsonKey(name: 'image_urls') List<String>? get imageUrls {
  final value = _imageUrls;
  if (value == null) return null;
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_verification') final  bool? isVerification;
@override@JsonKey(name: 'price') final  String? price;
@override@JsonKey(name: 'rooms_count') final  String? roomsCount;
@override@JsonKey(name: 'area') final  String? area;
@override@JsonKey(name: 'floor') final  int? floor;
@override@JsonKey(name: 'total_floor') final  int? totalFloor;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'city_id') final  int? cityId;
@override@JsonKey(name: 'city_fias_id') final  String? cityFiasId;
@override@JsonKey(name: 'district') final  String? district;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'role') final  String? role;
@override@JsonKey(name: 'application_status') final  String? applicationStatus;
@override@JsonKey(name: 'publish_date') final  String? publishDate;
@override@JsonKey(name: 'total_viewers') final  String? totalViewers;
@override@JsonKey(name: 'layout') final  String? layout;
@override@JsonKey(name: 'renovation') final  String? renovation;
@override@JsonKey(name: 'elevator_type') final  String? elevatorType;
@override@JsonKey(name: 'furniture_type') final  String? furnitureType;
@override@JsonKey(name: 'balcony_type') final  String? balconyType;
@override@JsonKey(name: 'stove_type') final  String? stoveType;
@override@JsonKey(name: 'deal_goal') final  String? dealGoal;
@override@JsonKey(name: 'rent_term') final  String? rentTerm;
 final  List<String>? _whoToRent;
@override@JsonKey(name: 'who_to_rent') List<String>? get whoToRent {
  final value = _whoToRent;
  if (value == null) return null;
  if (_whoToRent is EqualUnmodifiableListView) return _whoToRent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'prepayment_type') final  String? prepaymentType;
@override@JsonKey(name: 'rental_period') final  String? rentalPeriod;
@override@JsonKey(name: 'deposit') final  String? deposit;
 final  List<String>? _amenities;
@override@JsonKey(name: 'amenities') List<String>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ApartamentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentDataCopyWith<_ApartamentData> get copyWith => __$ApartamentDataCopyWithImpl<_ApartamentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApartamentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.isVerification, isVerification) || other.isVerification == isVerification)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.totalViewers, totalViewers) || other.totalViewers == totalViewers)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevatorType, elevatorType) || other.elevatorType == elevatorType)&&(identical(other.furnitureType, furnitureType) || other.furnitureType == furnitureType)&&(identical(other.balconyType, balconyType) || other.balconyType == balconyType)&&(identical(other.stoveType, stoveType) || other.stoveType == stoveType)&&(identical(other.dealGoal, dealGoal) || other.dealGoal == dealGoal)&&(identical(other.rentTerm, rentTerm) || other.rentTerm == rentTerm)&&const DeepCollectionEquality().equals(other._whoToRent, _whoToRent)&&(identical(other.prepaymentType, prepaymentType) || other.prepaymentType == prepaymentType)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&const DeepCollectionEquality().equals(other._amenities, _amenities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,const DeepCollectionEquality().hash(_imageUrls),isVerification,price,roomsCount,area,floor,totalFloor,address,cityId,cityFiasId,district,name,role,applicationStatus,publishDate,totalViewers,layout,renovation,elevatorType,furnitureType,balconyType,stoveType,dealGoal,rentTerm,const DeepCollectionEquality().hash(_whoToRent),prepaymentType,rentalPeriod,deposit,const DeepCollectionEquality().hash(_amenities)]);

@override
String toString() {
  return 'ApartamentData(id: $id, title: $title, description: $description, imageUrls: $imageUrls, isVerification: $isVerification, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, cityId: $cityId, cityFiasId: $cityFiasId, district: $district, name: $name, role: $role, applicationStatus: $applicationStatus, publishDate: $publishDate, totalViewers: $totalViewers, layout: $layout, renovation: $renovation, elevatorType: $elevatorType, furnitureType: $furnitureType, balconyType: $balconyType, stoveType: $stoveType, dealGoal: $dealGoal, rentTerm: $rentTerm, whoToRent: $whoToRent, prepaymentType: $prepaymentType, rentalPeriod: $rentalPeriod, deposit: $deposit, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class _$ApartamentDataCopyWith<$Res> implements $ApartamentDataCopyWith<$Res> {
  factory _$ApartamentDataCopyWith(_ApartamentData value, $Res Function(_ApartamentData) _then) = __$ApartamentDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'image_urls') List<String>? imageUrls,@JsonKey(name: 'is_verification') bool? isVerification,@JsonKey(name: 'price') String? price,@JsonKey(name: 'rooms_count') String? roomsCount,@JsonKey(name: 'area') String? area,@JsonKey(name: 'floor') int? floor,@JsonKey(name: 'total_floor') int? totalFloor,@JsonKey(name: 'address') String? address,@JsonKey(name: 'city_id') int? cityId,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'name') String? name,@JsonKey(name: 'role') String? role,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'publish_date') String? publishDate,@JsonKey(name: 'total_viewers') String? totalViewers,@JsonKey(name: 'layout') String? layout,@JsonKey(name: 'renovation') String? renovation,@JsonKey(name: 'elevator_type') String? elevatorType,@JsonKey(name: 'furniture_type') String? furnitureType,@JsonKey(name: 'balcony_type') String? balconyType,@JsonKey(name: 'stove_type') String? stoveType,@JsonKey(name: 'deal_goal') String? dealGoal,@JsonKey(name: 'rent_term') String? rentTerm,@JsonKey(name: 'who_to_rent') List<String>? whoToRent,@JsonKey(name: 'prepayment_type') String? prepaymentType,@JsonKey(name: 'rental_period') String? rentalPeriod,@JsonKey(name: 'deposit') String? deposit,@JsonKey(name: 'amenities') List<String>? amenities
});




}
/// @nodoc
class __$ApartamentDataCopyWithImpl<$Res>
    implements _$ApartamentDataCopyWith<$Res> {
  __$ApartamentDataCopyWithImpl(this._self, this._then);

  final _ApartamentData _self;
  final $Res Function(_ApartamentData) _then;

/// Create a copy of ApartamentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? imageUrls = freezed,Object? isVerification = freezed,Object? price = freezed,Object? roomsCount = freezed,Object? area = freezed,Object? floor = freezed,Object? totalFloor = freezed,Object? address = freezed,Object? cityId = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? name = freezed,Object? role = freezed,Object? applicationStatus = freezed,Object? publishDate = freezed,Object? totalViewers = freezed,Object? layout = freezed,Object? renovation = freezed,Object? elevatorType = freezed,Object? furnitureType = freezed,Object? balconyType = freezed,Object? stoveType = freezed,Object? dealGoal = freezed,Object? rentTerm = freezed,Object? whoToRent = freezed,Object? prepaymentType = freezed,Object? rentalPeriod = freezed,Object? deposit = freezed,Object? amenities = freezed,}) {
  return _then(_ApartamentData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,isVerification: freezed == isVerification ? _self.isVerification : isVerification // ignore: cast_nullable_to_non_nullable
as bool?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,roomsCount: freezed == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloor: freezed == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,publishDate: freezed == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as String?,totalViewers: freezed == totalViewers ? _self.totalViewers : totalViewers // ignore: cast_nullable_to_non_nullable
as String?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String?,renovation: freezed == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as String?,elevatorType: freezed == elevatorType ? _self.elevatorType : elevatorType // ignore: cast_nullable_to_non_nullable
as String?,furnitureType: freezed == furnitureType ? _self.furnitureType : furnitureType // ignore: cast_nullable_to_non_nullable
as String?,balconyType: freezed == balconyType ? _self.balconyType : balconyType // ignore: cast_nullable_to_non_nullable
as String?,stoveType: freezed == stoveType ? _self.stoveType : stoveType // ignore: cast_nullable_to_non_nullable
as String?,dealGoal: freezed == dealGoal ? _self.dealGoal : dealGoal // ignore: cast_nullable_to_non_nullable
as String?,rentTerm: freezed == rentTerm ? _self.rentTerm : rentTerm // ignore: cast_nullable_to_non_nullable
as String?,whoToRent: freezed == whoToRent ? _self._whoToRent : whoToRent // ignore: cast_nullable_to_non_nullable
as List<String>?,prepaymentType: freezed == prepaymentType ? _self.prepaymentType : prepaymentType // ignore: cast_nullable_to_non_nullable
as String?,rentalPeriod: freezed == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as String?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as String?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
