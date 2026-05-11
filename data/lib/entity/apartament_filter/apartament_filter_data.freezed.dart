// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApartamentFilterData {

@JsonKey(name: 'limit') int get limit;@JsonKey(name: 'offset') int get offset;@JsonKey(name: 'city_fias_id') String? get cityFiasId;@JsonKey(name: 'goal_id') int? get goalId;@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? get propertyTypeIds;@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? get roomsCountIds;@JsonKey(name: 'min_price') double? get minPrice;@JsonKey(name: 'max_price') double? get maxPrice;@JsonKey(name: 'rent_duration_id') int? get rentDurationId;@JsonKey(name: 'address_query') String? get addressQuery;@JsonKey(name: 'district') String? get district;@JsonKey(name: 'sort_by') String? get sortBy;@JsonKey(name: 'sort_order') String? get sortOrder;
/// Create a copy of ApartamentFilterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentFilterDataCopyWith<ApartamentFilterData> get copyWith => _$ApartamentFilterDataCopyWithImpl<ApartamentFilterData>(this as ApartamentFilterData, _$identity);

  /// Serializes this ApartamentFilterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentFilterData&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.district, district) || other.district == district)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,limit,offset,cityFiasId,goalId,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice,rentDurationId,addressQuery,district,sortBy,sortOrder);

@override
String toString() {
  return 'ApartamentFilterData(limit: $limit, offset: $offset, cityFiasId: $cityFiasId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, addressQuery: $addressQuery, district: $district, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ApartamentFilterDataCopyWith<$Res>  {
  factory $ApartamentFilterDataCopyWith(ApartamentFilterData value, $Res Function(ApartamentFilterData) _then) = _$ApartamentFilterDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'limit') int limit,@JsonKey(name: 'offset') int offset,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'goal_id') int? goalId,@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? propertyTypeIds,@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? roomsCountIds,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'address_query') String? addressQuery,@JsonKey(name: 'district') String? district,@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder
});




}
/// @nodoc
class _$ApartamentFilterDataCopyWithImpl<$Res>
    implements $ApartamentFilterDataCopyWith<$Res> {
  _$ApartamentFilterDataCopyWithImpl(this._self, this._then);

  final ApartamentFilterData _self;
  final $Res Function(ApartamentFilterData) _then;

/// Create a copy of ApartamentFilterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? offset = null,Object? cityFiasId = freezed,Object? goalId = freezed,Object? propertyTypeIds = freezed,Object? roomsCountIds = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = freezed,Object? addressQuery = freezed,Object? district = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_self.copyWith(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: freezed == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>?,roomsCountIds: freezed == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,addressQuery: freezed == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentFilterData].
extension ApartamentFilterDataPatterns on ApartamentFilterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentFilterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentFilterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentFilterData value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentFilterData value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentFilterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'goal_id')  int? goalId, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'address_query')  String? addressQuery, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentFilterData() when $default != null:
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.addressQuery,_that.district,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'goal_id')  int? goalId, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'address_query')  String? addressQuery, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilterData():
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.addressQuery,_that.district,_that.sortBy,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'goal_id')  int? goalId, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'address_query')  String? addressQuery, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentFilterData() when $default != null:
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.goalId,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.addressQuery,_that.district,_that.sortBy,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ApartamentFilterData implements ApartamentFilterData {
  const _ApartamentFilterData({@JsonKey(name: 'limit') this.limit = 20, @JsonKey(name: 'offset') this.offset = 0, @JsonKey(name: 'city_fias_id') this.cityFiasId, @JsonKey(name: 'goal_id') this.goalId, @JsonKey(name: 'property_type_ids', toJson: _idsToJson) final  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) final  List<int>? roomsCountIds, @JsonKey(name: 'min_price') this.minPrice, @JsonKey(name: 'max_price') this.maxPrice, @JsonKey(name: 'rent_duration_id') this.rentDurationId, @JsonKey(name: 'address_query') this.addressQuery, @JsonKey(name: 'district') this.district, @JsonKey(name: 'sort_by') this.sortBy, @JsonKey(name: 'sort_order') this.sortOrder}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds;
  factory _ApartamentFilterData.fromJson(Map<String, dynamic> json) => _$ApartamentFilterDataFromJson(json);

@override@JsonKey(name: 'limit') final  int limit;
@override@JsonKey(name: 'offset') final  int offset;
@override@JsonKey(name: 'city_fias_id') final  String? cityFiasId;
@override@JsonKey(name: 'goal_id') final  int? goalId;
 final  List<int>? _propertyTypeIds;
@override@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? get propertyTypeIds {
  final value = _propertyTypeIds;
  if (value == null) return null;
  if (_propertyTypeIds is EqualUnmodifiableListView) return _propertyTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _roomsCountIds;
@override@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? get roomsCountIds {
  final value = _roomsCountIds;
  if (value == null) return null;
  if (_roomsCountIds is EqualUnmodifiableListView) return _roomsCountIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'min_price') final  double? minPrice;
@override@JsonKey(name: 'max_price') final  double? maxPrice;
@override@JsonKey(name: 'rent_duration_id') final  int? rentDurationId;
@override@JsonKey(name: 'address_query') final  String? addressQuery;
@override@JsonKey(name: 'district') final  String? district;
@override@JsonKey(name: 'sort_by') final  String? sortBy;
@override@JsonKey(name: 'sort_order') final  String? sortOrder;

/// Create a copy of ApartamentFilterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentFilterDataCopyWith<_ApartamentFilterData> get copyWith => __$ApartamentFilterDataCopyWithImpl<_ApartamentFilterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApartamentFilterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentFilterData&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.goalId, goalId) || other.goalId == goalId)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.district, district) || other.district == district)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,limit,offset,cityFiasId,goalId,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice,rentDurationId,addressQuery,district,sortBy,sortOrder);

@override
String toString() {
  return 'ApartamentFilterData(limit: $limit, offset: $offset, cityFiasId: $cityFiasId, goalId: $goalId, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, addressQuery: $addressQuery, district: $district, sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ApartamentFilterDataCopyWith<$Res> implements $ApartamentFilterDataCopyWith<$Res> {
  factory _$ApartamentFilterDataCopyWith(_ApartamentFilterData value, $Res Function(_ApartamentFilterData) _then) = __$ApartamentFilterDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'limit') int limit,@JsonKey(name: 'offset') int offset,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'goal_id') int? goalId,@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? propertyTypeIds,@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? roomsCountIds,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'address_query') String? addressQuery,@JsonKey(name: 'district') String? district,@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder
});




}
/// @nodoc
class __$ApartamentFilterDataCopyWithImpl<$Res>
    implements _$ApartamentFilterDataCopyWith<$Res> {
  __$ApartamentFilterDataCopyWithImpl(this._self, this._then);

  final _ApartamentFilterData _self;
  final $Res Function(_ApartamentFilterData) _then;

/// Create a copy of ApartamentFilterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? offset = null,Object? cityFiasId = freezed,Object? goalId = freezed,Object? propertyTypeIds = freezed,Object? roomsCountIds = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = freezed,Object? addressQuery = freezed,Object? district = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,}) {
  return _then(_ApartamentFilterData(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,goalId: freezed == goalId ? _self.goalId : goalId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: freezed == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>?,roomsCountIds: freezed == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,addressQuery: freezed == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
