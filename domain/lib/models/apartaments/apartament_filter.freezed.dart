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

 String get city; int? get categoryId; List<int> get propertyTypeIds; List<int> get roomsCountIds; double? get minPrice; double? get maxPrice;
/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentFilterCopyWith<ApartamentFilter> get copyWith => _$ApartamentFilterCopyWithImpl<ApartamentFilter>(this as ApartamentFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentFilter&&(identical(other.city, city) || other.city == city)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,city,categoryId,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice);

@override
String toString() {
  return 'ApartamentFilter(city: $city, categoryId: $categoryId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $ApartamentFilterCopyWith<$Res>  {
  factory $ApartamentFilterCopyWith(ApartamentFilter value, $Res Function(ApartamentFilter) _then) = _$ApartamentFilterCopyWithImpl;
@useResult
$Res call({
 String city, int? categoryId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice
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
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? categoryId = freezed,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: null == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  int? categoryId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
return $default(_that.city,_that.categoryId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  int? categoryId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice)  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilter():
return $default(_that.city,_that.categoryId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  int? categoryId,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilter() when $default != null:
return $default(_that.city,_that.categoryId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentFilter implements ApartamentFilter {
  const _ApartamentFilter({this.city = 'Омск', this.categoryId, final  List<int> propertyTypeIds = const [], final  List<int> roomsCountIds = const [], this.minPrice, this.maxPrice}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds;
  

@override@JsonKey() final  String city;
@override final  int? categoryId;
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

/// Create a copy of ApartamentFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentFilterCopyWith<_ApartamentFilter> get copyWith => __$ApartamentFilterCopyWithImpl<_ApartamentFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentFilter&&(identical(other.city, city) || other.city == city)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,city,categoryId,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice);

@override
String toString() {
  return 'ApartamentFilter(city: $city, categoryId: $categoryId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$ApartamentFilterCopyWith<$Res> implements $ApartamentFilterCopyWith<$Res> {
  factory _$ApartamentFilterCopyWith(_ApartamentFilter value, $Res Function(_ApartamentFilter) _then) = __$ApartamentFilterCopyWithImpl;
@override @useResult
$Res call({
 String city, int? categoryId, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice
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
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? categoryId = freezed,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_ApartamentFilter(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: null == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
