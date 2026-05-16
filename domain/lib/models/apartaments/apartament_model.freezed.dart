// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentModel {

 String get id; String get title; String get description; List<String> get imageUrls; bool get isVerification; String get price; String get roomsCount; String get area; int get floor; int get totalFloor; String get address; int get cityId; String get cityFiasId; String get district; String get name; String get role; String get publishDate; String get totalViewers; ApartmentLayout? get layout; RenovationType? get renovation; ElevatorType? get elevatorType; FurnitureType? get furnitureType; BalconyType? get balconyType; StoveType? get stoveType; DealGoal? get dealGoal; RentalConditions? get rentTerm; List<WhoToRent> get whoToRent; PrepaymentType? get prepaymentType; RentalPeriod? get rentalPeriod; String get deposit; List<ApartmentAmenity> get amenities;
/// Create a copy of ApartamentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<ApartamentModel> get copyWith => _$ApartamentModelCopyWithImpl<ApartamentModel>(this as ApartamentModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.isVerification, isVerification) || other.isVerification == isVerification)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.totalViewers, totalViewers) || other.totalViewers == totalViewers)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevatorType, elevatorType) || other.elevatorType == elevatorType)&&(identical(other.furnitureType, furnitureType) || other.furnitureType == furnitureType)&&(identical(other.balconyType, balconyType) || other.balconyType == balconyType)&&(identical(other.stoveType, stoveType) || other.stoveType == stoveType)&&(identical(other.dealGoal, dealGoal) || other.dealGoal == dealGoal)&&(identical(other.rentTerm, rentTerm) || other.rentTerm == rentTerm)&&const DeepCollectionEquality().equals(other.whoToRent, whoToRent)&&(identical(other.prepaymentType, prepaymentType) || other.prepaymentType == prepaymentType)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&const DeepCollectionEquality().equals(other.amenities, amenities));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,const DeepCollectionEquality().hash(imageUrls),isVerification,price,roomsCount,area,floor,totalFloor,address,cityId,cityFiasId,district,name,role,publishDate,totalViewers,layout,renovation,elevatorType,furnitureType,balconyType,stoveType,dealGoal,rentTerm,const DeepCollectionEquality().hash(whoToRent),prepaymentType,rentalPeriod,deposit,const DeepCollectionEquality().hash(amenities)]);

@override
String toString() {
  return 'ApartamentModel(id: $id, title: $title, description: $description, imageUrls: $imageUrls, isVerification: $isVerification, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, cityId: $cityId, cityFiasId: $cityFiasId, district: $district, name: $name, role: $role, publishDate: $publishDate, totalViewers: $totalViewers, layout: $layout, renovation: $renovation, elevatorType: $elevatorType, furnitureType: $furnitureType, balconyType: $balconyType, stoveType: $stoveType, dealGoal: $dealGoal, rentTerm: $rentTerm, whoToRent: $whoToRent, prepaymentType: $prepaymentType, rentalPeriod: $rentalPeriod, deposit: $deposit, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class $ApartamentModelCopyWith<$Res>  {
  factory $ApartamentModelCopyWith(ApartamentModel value, $Res Function(ApartamentModel) _then) = _$ApartamentModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, List<String> imageUrls, bool isVerification, String price, String roomsCount, String area, int floor, int totalFloor, String address, int cityId, String cityFiasId, String district, String name, String role, String publishDate, String totalViewers, ApartmentLayout? layout, RenovationType? renovation, ElevatorType? elevatorType, FurnitureType? furnitureType, BalconyType? balconyType, StoveType? stoveType, DealGoal? dealGoal, RentalConditions? rentTerm, List<WhoToRent> whoToRent, PrepaymentType? prepaymentType, RentalPeriod? rentalPeriod, String deposit, List<ApartmentAmenity> amenities
});




}
/// @nodoc
class _$ApartamentModelCopyWithImpl<$Res>
    implements $ApartamentModelCopyWith<$Res> {
  _$ApartamentModelCopyWithImpl(this._self, this._then);

  final ApartamentModel _self;
  final $Res Function(ApartamentModel) _then;

/// Create a copy of ApartamentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrls = null,Object? isVerification = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,Object? cityId = null,Object? cityFiasId = null,Object? district = null,Object? name = null,Object? role = null,Object? publishDate = null,Object? totalViewers = null,Object? layout = freezed,Object? renovation = freezed,Object? elevatorType = freezed,Object? furnitureType = freezed,Object? balconyType = freezed,Object? stoveType = freezed,Object? dealGoal = freezed,Object? rentTerm = freezed,Object? whoToRent = null,Object? prepaymentType = freezed,Object? rentalPeriod = freezed,Object? deposit = null,Object? amenities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isVerification: null == isVerification ? _self.isVerification : isVerification // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as String,totalViewers: null == totalViewers ? _self.totalViewers : totalViewers // ignore: cast_nullable_to_non_nullable
as String,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as ApartmentLayout?,renovation: freezed == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as RenovationType?,elevatorType: freezed == elevatorType ? _self.elevatorType : elevatorType // ignore: cast_nullable_to_non_nullable
as ElevatorType?,furnitureType: freezed == furnitureType ? _self.furnitureType : furnitureType // ignore: cast_nullable_to_non_nullable
as FurnitureType?,balconyType: freezed == balconyType ? _self.balconyType : balconyType // ignore: cast_nullable_to_non_nullable
as BalconyType?,stoveType: freezed == stoveType ? _self.stoveType : stoveType // ignore: cast_nullable_to_non_nullable
as StoveType?,dealGoal: freezed == dealGoal ? _self.dealGoal : dealGoal // ignore: cast_nullable_to_non_nullable
as DealGoal?,rentTerm: freezed == rentTerm ? _self.rentTerm : rentTerm // ignore: cast_nullable_to_non_nullable
as RentalConditions?,whoToRent: null == whoToRent ? _self.whoToRent : whoToRent // ignore: cast_nullable_to_non_nullable
as List<WhoToRent>,prepaymentType: freezed == prepaymentType ? _self.prepaymentType : prepaymentType // ignore: cast_nullable_to_non_nullable
as PrepaymentType?,rentalPeriod: freezed == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as RentalPeriod?,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as String,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<ApartmentAmenity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentModel].
extension ApartamentModelPatterns on ApartamentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentModel value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  List<String> imageUrls,  bool isVerification,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  int cityId,  String cityFiasId,  String district,  String name,  String role,  String publishDate,  String totalViewers,  ApartmentLayout? layout,  RenovationType? renovation,  ElevatorType? elevatorType,  FurnitureType? furnitureType,  BalconyType? balconyType,  StoveType? stoveType,  DealGoal? dealGoal,  RentalConditions? rentTerm,  List<WhoToRent> whoToRent,  PrepaymentType? prepaymentType,  RentalPeriod? rentalPeriod,  String deposit,  List<ApartmentAmenity> amenities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  List<String> imageUrls,  bool isVerification,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  int cityId,  String cityFiasId,  String district,  String name,  String role,  String publishDate,  String totalViewers,  ApartmentLayout? layout,  RenovationType? renovation,  ElevatorType? elevatorType,  FurnitureType? furnitureType,  BalconyType? balconyType,  StoveType? stoveType,  DealGoal? dealGoal,  RentalConditions? rentTerm,  List<WhoToRent> whoToRent,  PrepaymentType? prepaymentType,  RentalPeriod? rentalPeriod,  String deposit,  List<ApartmentAmenity> amenities)  $default,) {final _that = this;
switch (_that) {
case _ApartamentModel():
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  List<String> imageUrls,  bool isVerification,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  int cityId,  String cityFiasId,  String district,  String name,  String role,  String publishDate,  String totalViewers,  ApartmentLayout? layout,  RenovationType? renovation,  ElevatorType? elevatorType,  FurnitureType? furnitureType,  BalconyType? balconyType,  StoveType? stoveType,  DealGoal? dealGoal,  RentalConditions? rentTerm,  List<WhoToRent> whoToRent,  PrepaymentType? prepaymentType,  RentalPeriod? rentalPeriod,  String deposit,  List<ApartmentAmenity> amenities)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.isVerification,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.cityId,_that.cityFiasId,_that.district,_that.name,_that.role,_that.publishDate,_that.totalViewers,_that.layout,_that.renovation,_that.elevatorType,_that.furnitureType,_that.balconyType,_that.stoveType,_that.dealGoal,_that.rentTerm,_that.whoToRent,_that.prepaymentType,_that.rentalPeriod,_that.deposit,_that.amenities);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentModel implements ApartamentModel {
  const _ApartamentModel({this.id = '', this.title = '', this.description = '', final  List<String> imageUrls = const [], this.isVerification = false, this.price = '', this.roomsCount = '', this.area = '', this.floor = 0, this.totalFloor = 0, this.address = '', this.cityId = 0, this.cityFiasId = '', this.district = '', this.name = '', this.role = '', this.publishDate = '', this.totalViewers = '', this.layout = null, this.renovation = null, this.elevatorType = null, this.furnitureType = null, this.balconyType = null, this.stoveType = null, this.dealGoal = null, this.rentTerm = null, final  List<WhoToRent> whoToRent = const [], this.prepaymentType = null, this.rentalPeriod = null, this.deposit = '', final  List<ApartmentAmenity> amenities = const []}): _imageUrls = imageUrls,_whoToRent = whoToRent,_amenities = amenities;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override@JsonKey() final  bool isVerification;
@override@JsonKey() final  String price;
@override@JsonKey() final  String roomsCount;
@override@JsonKey() final  String area;
@override@JsonKey() final  int floor;
@override@JsonKey() final  int totalFloor;
@override@JsonKey() final  String address;
@override@JsonKey() final  int cityId;
@override@JsonKey() final  String cityFiasId;
@override@JsonKey() final  String district;
@override@JsonKey() final  String name;
@override@JsonKey() final  String role;
@override@JsonKey() final  String publishDate;
@override@JsonKey() final  String totalViewers;
@override@JsonKey() final  ApartmentLayout? layout;
@override@JsonKey() final  RenovationType? renovation;
@override@JsonKey() final  ElevatorType? elevatorType;
@override@JsonKey() final  FurnitureType? furnitureType;
@override@JsonKey() final  BalconyType? balconyType;
@override@JsonKey() final  StoveType? stoveType;
@override@JsonKey() final  DealGoal? dealGoal;
@override@JsonKey() final  RentalConditions? rentTerm;
 final  List<WhoToRent> _whoToRent;
@override@JsonKey() List<WhoToRent> get whoToRent {
  if (_whoToRent is EqualUnmodifiableListView) return _whoToRent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whoToRent);
}

@override@JsonKey() final  PrepaymentType? prepaymentType;
@override@JsonKey() final  RentalPeriod? rentalPeriod;
@override@JsonKey() final  String deposit;
 final  List<ApartmentAmenity> _amenities;
@override@JsonKey() List<ApartmentAmenity> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}


/// Create a copy of ApartamentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentModelCopyWith<_ApartamentModel> get copyWith => __$ApartamentModelCopyWithImpl<_ApartamentModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.isVerification, isVerification) || other.isVerification == isVerification)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.totalViewers, totalViewers) || other.totalViewers == totalViewers)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevatorType, elevatorType) || other.elevatorType == elevatorType)&&(identical(other.furnitureType, furnitureType) || other.furnitureType == furnitureType)&&(identical(other.balconyType, balconyType) || other.balconyType == balconyType)&&(identical(other.stoveType, stoveType) || other.stoveType == stoveType)&&(identical(other.dealGoal, dealGoal) || other.dealGoal == dealGoal)&&(identical(other.rentTerm, rentTerm) || other.rentTerm == rentTerm)&&const DeepCollectionEquality().equals(other._whoToRent, _whoToRent)&&(identical(other.prepaymentType, prepaymentType) || other.prepaymentType == prepaymentType)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&const DeepCollectionEquality().equals(other._amenities, _amenities));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,const DeepCollectionEquality().hash(_imageUrls),isVerification,price,roomsCount,area,floor,totalFloor,address,cityId,cityFiasId,district,name,role,publishDate,totalViewers,layout,renovation,elevatorType,furnitureType,balconyType,stoveType,dealGoal,rentTerm,const DeepCollectionEquality().hash(_whoToRent),prepaymentType,rentalPeriod,deposit,const DeepCollectionEquality().hash(_amenities)]);

@override
String toString() {
  return 'ApartamentModel(id: $id, title: $title, description: $description, imageUrls: $imageUrls, isVerification: $isVerification, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, cityId: $cityId, cityFiasId: $cityFiasId, district: $district, name: $name, role: $role, publishDate: $publishDate, totalViewers: $totalViewers, layout: $layout, renovation: $renovation, elevatorType: $elevatorType, furnitureType: $furnitureType, balconyType: $balconyType, stoveType: $stoveType, dealGoal: $dealGoal, rentTerm: $rentTerm, whoToRent: $whoToRent, prepaymentType: $prepaymentType, rentalPeriod: $rentalPeriod, deposit: $deposit, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class _$ApartamentModelCopyWith<$Res> implements $ApartamentModelCopyWith<$Res> {
  factory _$ApartamentModelCopyWith(_ApartamentModel value, $Res Function(_ApartamentModel) _then) = __$ApartamentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, List<String> imageUrls, bool isVerification, String price, String roomsCount, String area, int floor, int totalFloor, String address, int cityId, String cityFiasId, String district, String name, String role, String publishDate, String totalViewers, ApartmentLayout? layout, RenovationType? renovation, ElevatorType? elevatorType, FurnitureType? furnitureType, BalconyType? balconyType, StoveType? stoveType, DealGoal? dealGoal, RentalConditions? rentTerm, List<WhoToRent> whoToRent, PrepaymentType? prepaymentType, RentalPeriod? rentalPeriod, String deposit, List<ApartmentAmenity> amenities
});




}
/// @nodoc
class __$ApartamentModelCopyWithImpl<$Res>
    implements _$ApartamentModelCopyWith<$Res> {
  __$ApartamentModelCopyWithImpl(this._self, this._then);

  final _ApartamentModel _self;
  final $Res Function(_ApartamentModel) _then;

/// Create a copy of ApartamentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrls = null,Object? isVerification = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,Object? cityId = null,Object? cityFiasId = null,Object? district = null,Object? name = null,Object? role = null,Object? publishDate = null,Object? totalViewers = null,Object? layout = freezed,Object? renovation = freezed,Object? elevatorType = freezed,Object? furnitureType = freezed,Object? balconyType = freezed,Object? stoveType = freezed,Object? dealGoal = freezed,Object? rentTerm = freezed,Object? whoToRent = null,Object? prepaymentType = freezed,Object? rentalPeriod = freezed,Object? deposit = null,Object? amenities = null,}) {
  return _then(_ApartamentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isVerification: null == isVerification ? _self.isVerification : isVerification // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as String,totalViewers: null == totalViewers ? _self.totalViewers : totalViewers // ignore: cast_nullable_to_non_nullable
as String,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as ApartmentLayout?,renovation: freezed == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as RenovationType?,elevatorType: freezed == elevatorType ? _self.elevatorType : elevatorType // ignore: cast_nullable_to_non_nullable
as ElevatorType?,furnitureType: freezed == furnitureType ? _self.furnitureType : furnitureType // ignore: cast_nullable_to_non_nullable
as FurnitureType?,balconyType: freezed == balconyType ? _self.balconyType : balconyType // ignore: cast_nullable_to_non_nullable
as BalconyType?,stoveType: freezed == stoveType ? _self.stoveType : stoveType // ignore: cast_nullable_to_non_nullable
as StoveType?,dealGoal: freezed == dealGoal ? _self.dealGoal : dealGoal // ignore: cast_nullable_to_non_nullable
as DealGoal?,rentTerm: freezed == rentTerm ? _self.rentTerm : rentTerm // ignore: cast_nullable_to_non_nullable
as RentalConditions?,whoToRent: null == whoToRent ? _self._whoToRent : whoToRent // ignore: cast_nullable_to_non_nullable
as List<WhoToRent>,prepaymentType: freezed == prepaymentType ? _self.prepaymentType : prepaymentType // ignore: cast_nullable_to_non_nullable
as PrepaymentType?,rentalPeriod: freezed == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as RentalPeriod?,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as String,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<ApartmentAmenity>,
  ));
}


}

// dart format on
