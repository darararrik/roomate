// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdState {

 List<TagGroupModel> get rentTypeTags; List<TagGroupModel> get roomTypeTags; List<TagGroupModel> get propertyTypeTags; List<TagGroupModel> get propertiesApartmentTags; List<TagGroupModel> get featuresFirstTags; List<TagGroupModel> get featuresSecondTags; List<TagGroupModel> get dealTermsTags; List<TagGroupModel> get contactInfoTags; Currency get selectedCurrency; double get cost; double get deposit; double get apartmentArea; int get floor; int get totalFloors;// TODO: Тут моделька адреса или города
 String get address; int get apartmentNumber; String get title; String get description; String get nubmer;// Он будет браться из акк
 String get additionalNumber;
/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdStateCopyWith<CreateAdState> get copyWith => _$CreateAdStateCopyWithImpl<CreateAdState>(this as CreateAdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdState&&const DeepCollectionEquality().equals(other.rentTypeTags, rentTypeTags)&&const DeepCollectionEquality().equals(other.roomTypeTags, roomTypeTags)&&const DeepCollectionEquality().equals(other.propertyTypeTags, propertyTypeTags)&&const DeepCollectionEquality().equals(other.propertiesApartmentTags, propertiesApartmentTags)&&const DeepCollectionEquality().equals(other.featuresFirstTags, featuresFirstTags)&&const DeepCollectionEquality().equals(other.featuresSecondTags, featuresSecondTags)&&const DeepCollectionEquality().equals(other.dealTermsTags, dealTermsTags)&&const DeepCollectionEquality().equals(other.contactInfoTags, contactInfoTags)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.nubmer, nubmer) || other.nubmer == nubmer)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(rentTypeTags),const DeepCollectionEquality().hash(roomTypeTags),const DeepCollectionEquality().hash(propertyTypeTags),const DeepCollectionEquality().hash(propertiesApartmentTags),const DeepCollectionEquality().hash(featuresFirstTags),const DeepCollectionEquality().hash(featuresSecondTags),const DeepCollectionEquality().hash(dealTermsTags),const DeepCollectionEquality().hash(contactInfoTags),selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,nubmer,additionalNumber]);

@override
String toString() {
  return 'CreateAdState(rentTypeTags: $rentTypeTags, roomTypeTags: $roomTypeTags, propertyTypeTags: $propertyTypeTags, propertiesApartmentTags: $propertiesApartmentTags, featuresFirstTags: $featuresFirstTags, featuresSecondTags: $featuresSecondTags, dealTermsTags: $dealTermsTags, contactInfoTags: $contactInfoTags, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, nubmer: $nubmer, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateAdStateCopyWith<$Res>  {
  factory $CreateAdStateCopyWith(CreateAdState value, $Res Function(CreateAdState) _then) = _$CreateAdStateCopyWithImpl;
@useResult
$Res call({
 List<TagGroupModel> rentTypeTags, List<TagGroupModel> roomTypeTags, List<TagGroupModel> propertyTypeTags, List<TagGroupModel> propertiesApartmentTags, List<TagGroupModel> featuresFirstTags, List<TagGroupModel> featuresSecondTags, List<TagGroupModel> dealTermsTags, List<TagGroupModel> contactInfoTags, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String nubmer, String additionalNumber
});




}
/// @nodoc
class _$CreateAdStateCopyWithImpl<$Res>
    implements $CreateAdStateCopyWith<$Res> {
  _$CreateAdStateCopyWithImpl(this._self, this._then);

  final CreateAdState _self;
  final $Res Function(CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentTypeTags = null,Object? roomTypeTags = null,Object? propertyTypeTags = null,Object? propertiesApartmentTags = null,Object? featuresFirstTags = null,Object? featuresSecondTags = null,Object? dealTermsTags = null,Object? contactInfoTags = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? nubmer = null,Object? additionalNumber = null,}) {
  return _then(_self.copyWith(
rentTypeTags: null == rentTypeTags ? _self.rentTypeTags : rentTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,roomTypeTags: null == roomTypeTags ? _self.roomTypeTags : roomTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,propertyTypeTags: null == propertyTypeTags ? _self.propertyTypeTags : propertyTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,propertiesApartmentTags: null == propertiesApartmentTags ? _self.propertiesApartmentTags : propertiesApartmentTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresFirstTags: null == featuresFirstTags ? _self.featuresFirstTags : featuresFirstTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresSecondTags: null == featuresSecondTags ? _self.featuresSecondTags : featuresSecondTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,dealTermsTags: null == dealTermsTags ? _self.dealTermsTags : dealTermsTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,contactInfoTags: null == contactInfoTags ? _self.contactInfoTags : contactInfoTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,nubmer: null == nubmer ? _self.nubmer : nubmer // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdState].
extension CreateAdStatePatterns on CreateAdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TagGroupModel> rentTypeTags,  List<TagGroupModel> roomTypeTags,  List<TagGroupModel> propertyTypeTags,  List<TagGroupModel> propertiesApartmentTags,  List<TagGroupModel> featuresFirstTags,  List<TagGroupModel> featuresSecondTags,  List<TagGroupModel> dealTermsTags,  List<TagGroupModel> contactInfoTags,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String nubmer,  String additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.rentTypeTags,_that.roomTypeTags,_that.propertyTypeTags,_that.propertiesApartmentTags,_that.featuresFirstTags,_that.featuresSecondTags,_that.dealTermsTags,_that.contactInfoTags,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.nubmer,_that.additionalNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TagGroupModel> rentTypeTags,  List<TagGroupModel> roomTypeTags,  List<TagGroupModel> propertyTypeTags,  List<TagGroupModel> propertiesApartmentTags,  List<TagGroupModel> featuresFirstTags,  List<TagGroupModel> featuresSecondTags,  List<TagGroupModel> dealTermsTags,  List<TagGroupModel> contactInfoTags,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String nubmer,  String additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateAdState():
return $default(_that.rentTypeTags,_that.roomTypeTags,_that.propertyTypeTags,_that.propertiesApartmentTags,_that.featuresFirstTags,_that.featuresSecondTags,_that.dealTermsTags,_that.contactInfoTags,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.nubmer,_that.additionalNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TagGroupModel> rentTypeTags,  List<TagGroupModel> roomTypeTags,  List<TagGroupModel> propertyTypeTags,  List<TagGroupModel> propertiesApartmentTags,  List<TagGroupModel> featuresFirstTags,  List<TagGroupModel> featuresSecondTags,  List<TagGroupModel> dealTermsTags,  List<TagGroupModel> contactInfoTags,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String nubmer,  String additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.rentTypeTags,_that.roomTypeTags,_that.propertyTypeTags,_that.propertiesApartmentTags,_that.featuresFirstTags,_that.featuresSecondTags,_that.dealTermsTags,_that.contactInfoTags,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.nubmer,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdState implements CreateAdState {
  const _CreateAdState({final  List<TagGroupModel> rentTypeTags = const [], final  List<TagGroupModel> roomTypeTags = const [], final  List<TagGroupModel> propertyTypeTags = const [], final  List<TagGroupModel> propertiesApartmentTags = const [], final  List<TagGroupModel> featuresFirstTags = const [], final  List<TagGroupModel> featuresSecondTags = const [], final  List<TagGroupModel> dealTermsTags = const [], final  List<TagGroupModel> contactInfoTags = const [], this.selectedCurrency = Currency.rub, this.cost = 0, this.deposit = 0, this.apartmentArea = 0, this.floor = 0, this.totalFloors = 0, this.address = "", this.apartmentNumber = 0, this.title = "", this.description = "", this.nubmer = "", this.additionalNumber = ""}): _rentTypeTags = rentTypeTags,_roomTypeTags = roomTypeTags,_propertyTypeTags = propertyTypeTags,_propertiesApartmentTags = propertiesApartmentTags,_featuresFirstTags = featuresFirstTags,_featuresSecondTags = featuresSecondTags,_dealTermsTags = dealTermsTags,_contactInfoTags = contactInfoTags;
  

 final  List<TagGroupModel> _rentTypeTags;
@override@JsonKey() List<TagGroupModel> get rentTypeTags {
  if (_rentTypeTags is EqualUnmodifiableListView) return _rentTypeTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentTypeTags);
}

 final  List<TagGroupModel> _roomTypeTags;
@override@JsonKey() List<TagGroupModel> get roomTypeTags {
  if (_roomTypeTags is EqualUnmodifiableListView) return _roomTypeTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roomTypeTags);
}

 final  List<TagGroupModel> _propertyTypeTags;
@override@JsonKey() List<TagGroupModel> get propertyTypeTags {
  if (_propertyTypeTags is EqualUnmodifiableListView) return _propertyTypeTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyTypeTags);
}

 final  List<TagGroupModel> _propertiesApartmentTags;
@override@JsonKey() List<TagGroupModel> get propertiesApartmentTags {
  if (_propertiesApartmentTags is EqualUnmodifiableListView) return _propertiesApartmentTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertiesApartmentTags);
}

 final  List<TagGroupModel> _featuresFirstTags;
@override@JsonKey() List<TagGroupModel> get featuresFirstTags {
  if (_featuresFirstTags is EqualUnmodifiableListView) return _featuresFirstTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuresFirstTags);
}

 final  List<TagGroupModel> _featuresSecondTags;
@override@JsonKey() List<TagGroupModel> get featuresSecondTags {
  if (_featuresSecondTags is EqualUnmodifiableListView) return _featuresSecondTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuresSecondTags);
}

 final  List<TagGroupModel> _dealTermsTags;
@override@JsonKey() List<TagGroupModel> get dealTermsTags {
  if (_dealTermsTags is EqualUnmodifiableListView) return _dealTermsTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dealTermsTags);
}

 final  List<TagGroupModel> _contactInfoTags;
@override@JsonKey() List<TagGroupModel> get contactInfoTags {
  if (_contactInfoTags is EqualUnmodifiableListView) return _contactInfoTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contactInfoTags);
}

@override@JsonKey() final  Currency selectedCurrency;
@override@JsonKey() final  double cost;
@override@JsonKey() final  double deposit;
@override@JsonKey() final  double apartmentArea;
@override@JsonKey() final  int floor;
@override@JsonKey() final  int totalFloors;
// TODO: Тут моделька адреса или города
@override@JsonKey() final  String address;
@override@JsonKey() final  int apartmentNumber;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String nubmer;
// Он будет браться из акк
@override@JsonKey() final  String additionalNumber;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdStateCopyWith<_CreateAdState> get copyWith => __$CreateAdStateCopyWithImpl<_CreateAdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdState&&const DeepCollectionEquality().equals(other._rentTypeTags, _rentTypeTags)&&const DeepCollectionEquality().equals(other._roomTypeTags, _roomTypeTags)&&const DeepCollectionEquality().equals(other._propertyTypeTags, _propertyTypeTags)&&const DeepCollectionEquality().equals(other._propertiesApartmentTags, _propertiesApartmentTags)&&const DeepCollectionEquality().equals(other._featuresFirstTags, _featuresFirstTags)&&const DeepCollectionEquality().equals(other._featuresSecondTags, _featuresSecondTags)&&const DeepCollectionEquality().equals(other._dealTermsTags, _dealTermsTags)&&const DeepCollectionEquality().equals(other._contactInfoTags, _contactInfoTags)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.nubmer, nubmer) || other.nubmer == nubmer)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_rentTypeTags),const DeepCollectionEquality().hash(_roomTypeTags),const DeepCollectionEquality().hash(_propertyTypeTags),const DeepCollectionEquality().hash(_propertiesApartmentTags),const DeepCollectionEquality().hash(_featuresFirstTags),const DeepCollectionEquality().hash(_featuresSecondTags),const DeepCollectionEquality().hash(_dealTermsTags),const DeepCollectionEquality().hash(_contactInfoTags),selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,nubmer,additionalNumber]);

@override
String toString() {
  return 'CreateAdState(rentTypeTags: $rentTypeTags, roomTypeTags: $roomTypeTags, propertyTypeTags: $propertyTypeTags, propertiesApartmentTags: $propertiesApartmentTags, featuresFirstTags: $featuresFirstTags, featuresSecondTags: $featuresSecondTags, dealTermsTags: $dealTermsTags, contactInfoTags: $contactInfoTags, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, nubmer: $nubmer, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateAdStateCopyWith<$Res> implements $CreateAdStateCopyWith<$Res> {
  factory _$CreateAdStateCopyWith(_CreateAdState value, $Res Function(_CreateAdState) _then) = __$CreateAdStateCopyWithImpl;
@override @useResult
$Res call({
 List<TagGroupModel> rentTypeTags, List<TagGroupModel> roomTypeTags, List<TagGroupModel> propertyTypeTags, List<TagGroupModel> propertiesApartmentTags, List<TagGroupModel> featuresFirstTags, List<TagGroupModel> featuresSecondTags, List<TagGroupModel> dealTermsTags, List<TagGroupModel> contactInfoTags, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String nubmer, String additionalNumber
});




}
/// @nodoc
class __$CreateAdStateCopyWithImpl<$Res>
    implements _$CreateAdStateCopyWith<$Res> {
  __$CreateAdStateCopyWithImpl(this._self, this._then);

  final _CreateAdState _self;
  final $Res Function(_CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentTypeTags = null,Object? roomTypeTags = null,Object? propertyTypeTags = null,Object? propertiesApartmentTags = null,Object? featuresFirstTags = null,Object? featuresSecondTags = null,Object? dealTermsTags = null,Object? contactInfoTags = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? nubmer = null,Object? additionalNumber = null,}) {
  return _then(_CreateAdState(
rentTypeTags: null == rentTypeTags ? _self._rentTypeTags : rentTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,roomTypeTags: null == roomTypeTags ? _self._roomTypeTags : roomTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,propertyTypeTags: null == propertyTypeTags ? _self._propertyTypeTags : propertyTypeTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,propertiesApartmentTags: null == propertiesApartmentTags ? _self._propertiesApartmentTags : propertiesApartmentTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresFirstTags: null == featuresFirstTags ? _self._featuresFirstTags : featuresFirstTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresSecondTags: null == featuresSecondTags ? _self._featuresSecondTags : featuresSecondTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,dealTermsTags: null == dealTermsTags ? _self._dealTermsTags : dealTermsTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,contactInfoTags: null == contactInfoTags ? _self._contactInfoTags : contactInfoTags // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,nubmer: null == nubmer ? _self.nubmer : nubmer // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
