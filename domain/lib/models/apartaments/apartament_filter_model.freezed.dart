// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentFilterModel {

 int get cityId; int get goalId; List<int> get propertyTypeIds; List<int> get roomsCountIds; double? get minPrice; double? get maxPrice; int get rentDurationId; List<int> get districtIds; String get locationTitle; bool get childrenAllowed; bool get petsAllowed; ApartmentSortType get sortType;
/// Create a copy of ApartamentFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentFilterModelCopyWith<ApartamentFilterModel> get copyWith => _$ApartamentFilterModelCopyWithImpl<ApartamentFilterModel>(this as ApartamentFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentFilterModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other.districtIds, districtIds)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.sortType, sortType) || other.sortType == sortType));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,goalId,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice,rentDurationId,const DeepCollectionEquality().hash(districtIds),locationTitle,childrenAllowed,petsAllowed,sortType);

@override
String toString() {
  return 'ApartamentFilterModel(cityId: $cityId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, districtIds: $districtIds, locationTitle: $locationTitle, childrenAllowed: $childrenAllowed, petsAllowed: $petsAllowed, sortType: $sortType)';
}


}

/// @nodoc
abstract mixin class $ApartamentFilterModelCopyWith<$Res>  {
  factory $ApartamentFilterModelCopyWith(ApartamentFilterModel value, $Res Function(ApartamentFilterModel) _then) = _$ApartamentFilterModelCopyWithImpl;
@useResult
$Res call({
 int cityId, int goalId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, List<int> districtIds, String locationTitle, bool childrenAllowed, bool petsAllowed, ApartmentSortType sortType
});




}
/// @nodoc
class _$ApartamentFilterModelCopyWithImpl<$Res>
    implements $ApartamentFilterModelCopyWith<$Res> {
  _$ApartamentFilterModelCopyWithImpl(this._self, this._then);

  final ApartamentFilterModel _self;
  final $Res Function(ApartamentFilterModel) _then;

/// Create a copy of ApartamentFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = null,Object? goalId = null,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? districtIds = null,Object? locationTitle = null,Object? childrenAllowed = null,Object? petsAllowed = null,Object? sortType = null,}) {
  return _then(_self.copyWith(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeIds: null == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,districtIds: null == districtIds ? _self.districtIds : districtIds // ignore: cast_nullable_to_non_nullable
as List<int>,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as ApartmentSortType,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentFilterModel].
extension ApartamentFilterModelPatterns on ApartamentFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  List<int> districtIds,  String locationTitle,  bool childrenAllowed,  bool petsAllowed,  ApartmentSortType sortType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentFilterModel() when $default != null:
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.districtIds,_that.locationTitle,_that.childrenAllowed,_that.petsAllowed,_that.sortType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  List<int> districtIds,  String locationTitle,  bool childrenAllowed,  bool petsAllowed,  ApartmentSortType sortType)  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilterModel():
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.districtIds,_that.locationTitle,_that.childrenAllowed,_that.petsAllowed,_that.sortType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  List<int> districtIds,  String locationTitle,  bool childrenAllowed,  bool petsAllowed,  ApartmentSortType sortType)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilterModel() when $default != null:
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.districtIds,_that.locationTitle,_that.childrenAllowed,_that.petsAllowed,_that.sortType);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentFilterModel implements ApartamentFilterModel {
  const _ApartamentFilterModel({this.cityId = 0, this.goalId = 0, final  List<int> propertyTypeIds = const [], final  List<int> roomsCountIds = const [], this.minPrice, this.maxPrice, this.rentDurationId = 0, final  List<int> districtIds = const [], this.locationTitle = '', this.childrenAllowed = false, this.petsAllowed = false, this.sortType = ApartmentSortType.popularity}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds,_districtIds = districtIds;
  

@override@JsonKey() final  int cityId;
@override@JsonKey() final  int goalId;
 final  List<int> _propertyTypeIds;
@override@JsonKey() List<int> get propertyTypeIds {
  if (_propertyTypeIds is EqualUnmodifiableListView) return _propertyTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyTypeIds);
}

 final  List<int> _roomsCountIds;
@override@JsonKey() List<int> get roomsCountIds {
  if (_roomsCountIds is EqualUnmodifiableListView) return _roomsCountIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roomsCountIds);
}

@override final  double? minPrice;
@override final  double? maxPrice;
@override@JsonKey() final  int rentDurationId;
 final  List<int> _districtIds;
@override@JsonKey() List<int> get districtIds {
  if (_districtIds is EqualUnmodifiableListView) return _districtIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_districtIds);
}

@override@JsonKey() final  String locationTitle;
@override@JsonKey() final  bool childrenAllowed;
@override@JsonKey() final  bool petsAllowed;
@override@JsonKey() final  ApartmentSortType sortType;

/// Create a copy of ApartamentFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentFilterModelCopyWith<_ApartamentFilterModel> get copyWith => __$ApartamentFilterModelCopyWithImpl<_ApartamentFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentFilterModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other._districtIds, _districtIds)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.sortType, sortType) || other.sortType == sortType));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,goalId,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice,rentDurationId,const DeepCollectionEquality().hash(_districtIds),locationTitle,childrenAllowed,petsAllowed,sortType);

@override
String toString() {
  return 'ApartamentFilterModel(cityId: $cityId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, districtIds: $districtIds, locationTitle: $locationTitle, childrenAllowed: $childrenAllowed, petsAllowed: $petsAllowed, sortType: $sortType)';
}


}

/// @nodoc
abstract mixin class _$ApartamentFilterModelCopyWith<$Res> implements $ApartamentFilterModelCopyWith<$Res> {
  factory _$ApartamentFilterModelCopyWith(_ApartamentFilterModel value, $Res Function(_ApartamentFilterModel) _then) = __$ApartamentFilterModelCopyWithImpl;
@override @useResult
$Res call({
 int cityId, int goalId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, List<int> districtIds, String locationTitle, bool childrenAllowed, bool petsAllowed, ApartmentSortType sortType
});




}
/// @nodoc
class __$ApartamentFilterModelCopyWithImpl<$Res>
    implements _$ApartamentFilterModelCopyWith<$Res> {
  __$ApartamentFilterModelCopyWithImpl(this._self, this._then);

  final _ApartamentFilterModel _self;
  final $Res Function(_ApartamentFilterModel) _then;

/// Create a copy of ApartamentFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = null,Object? goalId = null,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? districtIds = null,Object? locationTitle = null,Object? childrenAllowed = null,Object? petsAllowed = null,Object? sortType = null,}) {
  return _then(_ApartamentFilterModel(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeIds: null == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,districtIds: null == districtIds ? _self._districtIds : districtIds // ignore: cast_nullable_to_non_nullable
as List<int>,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as ApartmentSortType,
  ));
}


}

// dart format on
