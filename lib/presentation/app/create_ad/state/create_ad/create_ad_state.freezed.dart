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

/// Выбранные теги: ключ = typeId, значение = список tagId
 Map<int, List<int>> get selectedTagIdsByType; Currency get selectedCurrency; double get cost; double get deposit; double get apartmentArea; int get floor; int get totalFloors; String get address; int get apartmentNumber; String get title; String get description; String get mainPhone; String get additionalNumber;
/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdStateCopyWith<CreateAdState> get copyWith => _$CreateAdStateCopyWithImpl<CreateAdState>(this as CreateAdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdState&&const DeepCollectionEquality().equals(other.selectedTagIdsByType, selectedTagIdsByType)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedTagIdsByType),selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,mainPhone,additionalNumber);

@override
String toString() {
  return 'CreateAdState(selectedTagIdsByType: $selectedTagIdsByType, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateAdStateCopyWith<$Res>  {
  factory $CreateAdStateCopyWith(CreateAdState value, $Res Function(CreateAdState) _then) = _$CreateAdStateCopyWithImpl;
@useResult
$Res call({
 Map<int, List<int>> selectedTagIdsByType, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String mainPhone, String additionalNumber
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
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTagIdsByType = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? mainPhone = null,Object? additionalNumber = null,}) {
  return _then(_self.copyWith(
selectedTagIdsByType: null == selectedTagIdsByType ? _self.selectedTagIdsByType : selectedTagIdsByType // ignore: cast_nullable_to_non_nullable
as Map<int, List<int>>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainPhone: null == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<int, List<int>> selectedTagIdsByType,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.selectedTagIdsByType,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<int, List<int>> selectedTagIdsByType,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateAdState():
return $default(_that.selectedTagIdsByType,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<int, List<int>> selectedTagIdsByType,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.selectedTagIdsByType,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdState implements CreateAdState {
  const _CreateAdState({final  Map<int, List<int>> selectedTagIdsByType = const {}, this.selectedCurrency = Currency.rub, this.cost = 0, this.deposit = 0, this.apartmentArea = 0, this.floor = 0, this.totalFloors = 0, this.address = "", this.apartmentNumber = 0, this.title = "", this.description = "", this.mainPhone = "", this.additionalNumber = ""}): _selectedTagIdsByType = selectedTagIdsByType;
  

/// Выбранные теги: ключ = typeId, значение = список tagId
 final  Map<int, List<int>> _selectedTagIdsByType;
/// Выбранные теги: ключ = typeId, значение = список tagId
@override@JsonKey() Map<int, List<int>> get selectedTagIdsByType {
  if (_selectedTagIdsByType is EqualUnmodifiableMapView) return _selectedTagIdsByType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedTagIdsByType);
}

@override@JsonKey() final  Currency selectedCurrency;
@override@JsonKey() final  double cost;
@override@JsonKey() final  double deposit;
@override@JsonKey() final  double apartmentArea;
@override@JsonKey() final  int floor;
@override@JsonKey() final  int totalFloors;
@override@JsonKey() final  String address;
@override@JsonKey() final  int apartmentNumber;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String mainPhone;
@override@JsonKey() final  String additionalNumber;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdStateCopyWith<_CreateAdState> get copyWith => __$CreateAdStateCopyWithImpl<_CreateAdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdState&&const DeepCollectionEquality().equals(other._selectedTagIdsByType, _selectedTagIdsByType)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedTagIdsByType),selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,mainPhone,additionalNumber);

@override
String toString() {
  return 'CreateAdState(selectedTagIdsByType: $selectedTagIdsByType, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateAdStateCopyWith<$Res> implements $CreateAdStateCopyWith<$Res> {
  factory _$CreateAdStateCopyWith(_CreateAdState value, $Res Function(_CreateAdState) _then) = __$CreateAdStateCopyWithImpl;
@override @useResult
$Res call({
 Map<int, List<int>> selectedTagIdsByType, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String mainPhone, String additionalNumber
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
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTagIdsByType = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? mainPhone = null,Object? additionalNumber = null,}) {
  return _then(_CreateAdState(
selectedTagIdsByType: null == selectedTagIdsByType ? _self._selectedTagIdsByType : selectedTagIdsByType // ignore: cast_nullable_to_non_nullable
as Map<int, List<int>>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainPhone: null == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
