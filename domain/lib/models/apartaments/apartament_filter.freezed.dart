// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentFilter {

 int get cityId; int get goalId; List<int> get propertyTypeIds; List<int> get roomsCountIds; double? get minPrice; double? get maxPrice; int get rentDurationId; String get district;
/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentFilterCopyWith<ApartamentFilter> get copyWith => _$ApartamentFilterCopyWithImpl<ApartamentFilter>(this as ApartamentFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentFilter&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.district, district) || other.district == district));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,goalId,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice,rentDurationId,district);

@override
String toString() {
  return 'ApartamentFilter(cityId: $cityId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, district: $district)';
}


}

/// @nodoc
abstract mixin class $ApartamentFilterCopyWith<$Res>  {
  factory $ApartamentFilterCopyWith(ApartamentFilter value, $Res Function(ApartamentFilter) _then) = _$ApartamentFilterCopyWithImpl;
@useResult
$Res call({
 int cityId, int goalId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, String district
});




}
/// @nodoc
class _$ApartamentFilterCopyWithImpl<$Res>
    implements $ApartamentFilterCopyWith<$Res> {
  _$ApartamentFilterCopyWithImpl(this._self, this._then);

  final ApartamentFilter _self;
  final $Res Function(ApartamentFilter) _then;

/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = null,Object? goalId = null,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? district = null,}) {
  return _then(_self.copyWith(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeIds: null == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentFilter].
extension ApartamentFilterPatterns on ApartamentFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentFilter value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentFilter value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  String district)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.district);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  String district)  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilter():
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.district);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cityId,  int goalId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  String district)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
return $default(_that.cityId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.district);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentFilter implements ApartamentFilter {
  const _ApartamentFilter({this.cityId = 0, this.goalId = 0, final  List<int> propertyTypeIds = const [], final  List<int> roomsCountIds = const [], this.minPrice, this.maxPrice, this.rentDurationId = 0, this.district = ''}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds;
  

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
@override@JsonKey() final  String district;

/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentFilterCopyWith<_ApartamentFilter> get copyWith => __$ApartamentFilterCopyWithImpl<_ApartamentFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentFilter&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.district, district) || other.district == district));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,goalId,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice,rentDurationId,district);

@override
String toString() {
  return 'ApartamentFilter(cityId: $cityId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, district: $district)';
}


}

/// @nodoc
abstract mixin class _$ApartamentFilterCopyWith<$Res> implements $ApartamentFilterCopyWith<$Res> {
  factory _$ApartamentFilterCopyWith(_ApartamentFilter value, $Res Function(_ApartamentFilter) _then) = __$ApartamentFilterCopyWithImpl;
@override @useResult
$Res call({
 int cityId, int goalId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, String district
});




}
/// @nodoc
class __$ApartamentFilterCopyWithImpl<$Res>
    implements _$ApartamentFilterCopyWith<$Res> {
  __$ApartamentFilterCopyWithImpl(this._self, this._then);

  final _ApartamentFilter _self;
  final $Res Function(_ApartamentFilter) _then;

/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = null,Object? goalId = null,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? district = null,}) {
  return _then(_ApartamentFilter(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,goalId: null == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeIds: null == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
