// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_filter_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupFilterData {

@JsonKey(name: 'limit') int get limit;@JsonKey(name: 'offset') int get offset;@JsonKey(name: 'city_fias_id') String? get cityFiasId;@JsonKey(name: 'district') String? get district;@JsonKey(name: 'desired_gender') String? get desiredGender;@JsonKey(name: 'min_age') int? get minAge;@JsonKey(name: 'max_age') int? get maxAge;@JsonKey(name: 'min_participants_count') int? get minParticipantsCount;@JsonKey(name: 'max_participants_count') int? get maxParticipantsCount;@JsonKey(name: "smart_query") String? get smartQuery;@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? get propertyTypeIds;@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? get roomsCountIds;@JsonKey(name: 'min_price') double? get minPrice;@JsonKey(name: 'max_price') double? get maxPrice;@JsonKey(name: 'rent_duration_id') int? get rentDurationId;@JsonKey(name: 'sort_by') String? get sortBy;@JsonKey(name: 'sort_order') String? get sortOrder;@JsonKey(name: 'utilities_payment_id') int? get utilitiesPaymentId;@JsonKey(name: 'children_allowed') bool? get childrenAllowed;@JsonKey(name: 'partner_allowed') bool? get partnerAllowed;@JsonKey(name: 'pets_allowed') bool? get petsAllowed;@JsonKey(name: 'smoking_allowed') bool? get smokingAllowed;@JsonKey(name: 'utilities_paid') bool? get utilitiesPaid;
/// Create a copy of GroupFilterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupFilterDataCopyWith<GroupFilterData> get copyWith => _$GroupFilterDataCopyWithImpl<GroupFilterData>(this as GroupFilterData, _$identity);

  /// Serializes this GroupFilterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupFilterData&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minParticipantsCount, minParticipantsCount) || other.minParticipantsCount == minParticipantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.smartQuery, smartQuery) || other.smartQuery == smartQuery)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.utilitiesPaymentId, utilitiesPaymentId) || other.utilitiesPaymentId == utilitiesPaymentId)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed)&&(identical(other.utilitiesPaid, utilitiesPaid) || other.utilitiesPaid == utilitiesPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,limit,offset,cityFiasId,district,desiredGender,minAge,maxAge,minParticipantsCount,maxParticipantsCount,smartQuery,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice,rentDurationId,sortBy,sortOrder,utilitiesPaymentId,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed,utilitiesPaid]);

@override
String toString() {
  return 'GroupFilterData(limit: $limit, offset: $offset, cityFiasId: $cityFiasId, district: $district, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, minParticipantsCount: $minParticipantsCount, maxParticipantsCount: $maxParticipantsCount, smartQuery: $smartQuery, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, sortBy: $sortBy, sortOrder: $sortOrder, utilitiesPaymentId: $utilitiesPaymentId, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed, utilitiesPaid: $utilitiesPaid)';
}


}

/// @nodoc
abstract mixin class $GroupFilterDataCopyWith<$Res>  {
  factory $GroupFilterDataCopyWith(GroupFilterData value, $Res Function(GroupFilterData) _then) = _$GroupFilterDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'limit') int limit,@JsonKey(name: 'offset') int offset,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'min_participants_count') int? minParticipantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: "smart_query") String? smartQuery,@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? propertyTypeIds,@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? roomsCountIds,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder,@JsonKey(name: 'utilities_payment_id') int? utilitiesPaymentId,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed,@JsonKey(name: 'utilities_paid') bool? utilitiesPaid
});




}
/// @nodoc
class _$GroupFilterDataCopyWithImpl<$Res>
    implements $GroupFilterDataCopyWith<$Res> {
  _$GroupFilterDataCopyWithImpl(this._self, this._then);

  final GroupFilterData _self;
  final $Res Function(GroupFilterData) _then;

/// Create a copy of GroupFilterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? offset = null,Object? cityFiasId = freezed,Object? district = freezed,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minParticipantsCount = freezed,Object? maxParticipantsCount = freezed,Object? smartQuery = freezed,Object? propertyTypeIds = freezed,Object? roomsCountIds = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? utilitiesPaymentId = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,Object? utilitiesPaid = freezed,}) {
  return _then(_self.copyWith(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minParticipantsCount: freezed == minParticipantsCount ? _self.minParticipantsCount : minParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,smartQuery: freezed == smartQuery ? _self.smartQuery : smartQuery // ignore: cast_nullable_to_non_nullable
as String?,propertyTypeIds: freezed == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>?,roomsCountIds: freezed == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,utilitiesPaymentId: freezed == utilitiesPaymentId ? _self.utilitiesPaymentId : utilitiesPaymentId // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,utilitiesPaid: freezed == utilitiesPaid ? _self.utilitiesPaid : utilitiesPaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupFilterData].
extension GroupFilterDataPatterns on GroupFilterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupFilterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupFilterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupFilterData value)  $default,){
final _that = this;
switch (_that) {
case _GroupFilterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupFilterData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupFilterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'min_participants_count')  int? minParticipantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: "smart_query")  String? smartQuery, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'utilities_payment_id')  int? utilitiesPaymentId, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed, @JsonKey(name: 'utilities_paid')  bool? utilitiesPaid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupFilterData() when $default != null:
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.smartQuery,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.sortBy,_that.sortOrder,_that.utilitiesPaymentId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.utilitiesPaid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'min_participants_count')  int? minParticipantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: "smart_query")  String? smartQuery, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'utilities_payment_id')  int? utilitiesPaymentId, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed, @JsonKey(name: 'utilities_paid')  bool? utilitiesPaid)  $default,) {final _that = this;
switch (_that) {
case _GroupFilterData():
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.smartQuery,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.sortBy,_that.sortOrder,_that.utilitiesPaymentId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.utilitiesPaid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'limit')  int limit, @JsonKey(name: 'offset')  int offset, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'min_participants_count')  int? minParticipantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: "smart_query")  String? smartQuery, @JsonKey(name: 'property_type_ids', toJson: _idsToJson)  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson)  List<int>? roomsCountIds, @JsonKey(name: 'min_price')  double? minPrice, @JsonKey(name: 'max_price')  double? maxPrice, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'sort_by')  String? sortBy, @JsonKey(name: 'sort_order')  String? sortOrder, @JsonKey(name: 'utilities_payment_id')  int? utilitiesPaymentId, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed, @JsonKey(name: 'utilities_paid')  bool? utilitiesPaid)?  $default,) {final _that = this;
switch (_that) {
case _GroupFilterData() when $default != null:
return $default(_that.limit,_that.offset,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.smartQuery,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.sortBy,_that.sortOrder,_that.utilitiesPaymentId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.utilitiesPaid);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _GroupFilterData implements GroupFilterData {
  const _GroupFilterData({@JsonKey(name: 'limit') this.limit = 20, @JsonKey(name: 'offset') this.offset = 0, @JsonKey(name: 'city_fias_id') this.cityFiasId, @JsonKey(name: 'district') this.district, @JsonKey(name: 'desired_gender') this.desiredGender, @JsonKey(name: 'min_age') this.minAge, @JsonKey(name: 'max_age') this.maxAge, @JsonKey(name: 'min_participants_count') this.minParticipantsCount, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount, @JsonKey(name: "smart_query") this.smartQuery, @JsonKey(name: 'property_type_ids', toJson: _idsToJson) final  List<int>? propertyTypeIds, @JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) final  List<int>? roomsCountIds, @JsonKey(name: 'min_price') this.minPrice, @JsonKey(name: 'max_price') this.maxPrice, @JsonKey(name: 'rent_duration_id') this.rentDurationId, @JsonKey(name: 'sort_by') this.sortBy, @JsonKey(name: 'sort_order') this.sortOrder, @JsonKey(name: 'utilities_payment_id') this.utilitiesPaymentId, @JsonKey(name: 'children_allowed') this.childrenAllowed, @JsonKey(name: 'partner_allowed') this.partnerAllowed, @JsonKey(name: 'pets_allowed') this.petsAllowed, @JsonKey(name: 'smoking_allowed') this.smokingAllowed, @JsonKey(name: 'utilities_paid') this.utilitiesPaid}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds;
  factory _GroupFilterData.fromJson(Map<String, dynamic> json) => _$GroupFilterDataFromJson(json);

@override@JsonKey(name: 'limit') final  int limit;
@override@JsonKey(name: 'offset') final  int offset;
@override@JsonKey(name: 'city_fias_id') final  String? cityFiasId;
@override@JsonKey(name: 'district') final  String? district;
@override@JsonKey(name: 'desired_gender') final  String? desiredGender;
@override@JsonKey(name: 'min_age') final  int? minAge;
@override@JsonKey(name: 'max_age') final  int? maxAge;
@override@JsonKey(name: 'min_participants_count') final  int? minParticipantsCount;
@override@JsonKey(name: 'max_participants_count') final  int? maxParticipantsCount;
@override@JsonKey(name: "smart_query") final  String? smartQuery;
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
@override@JsonKey(name: 'sort_by') final  String? sortBy;
@override@JsonKey(name: 'sort_order') final  String? sortOrder;
@override@JsonKey(name: 'utilities_payment_id') final  int? utilitiesPaymentId;
@override@JsonKey(name: 'children_allowed') final  bool? childrenAllowed;
@override@JsonKey(name: 'partner_allowed') final  bool? partnerAllowed;
@override@JsonKey(name: 'pets_allowed') final  bool? petsAllowed;
@override@JsonKey(name: 'smoking_allowed') final  bool? smokingAllowed;
@override@JsonKey(name: 'utilities_paid') final  bool? utilitiesPaid;

/// Create a copy of GroupFilterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupFilterDataCopyWith<_GroupFilterData> get copyWith => __$GroupFilterDataCopyWithImpl<_GroupFilterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupFilterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupFilterData&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minParticipantsCount, minParticipantsCount) || other.minParticipantsCount == minParticipantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.smartQuery, smartQuery) || other.smartQuery == smartQuery)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.utilitiesPaymentId, utilitiesPaymentId) || other.utilitiesPaymentId == utilitiesPaymentId)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed)&&(identical(other.utilitiesPaid, utilitiesPaid) || other.utilitiesPaid == utilitiesPaid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,limit,offset,cityFiasId,district,desiredGender,minAge,maxAge,minParticipantsCount,maxParticipantsCount,smartQuery,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice,rentDurationId,sortBy,sortOrder,utilitiesPaymentId,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed,utilitiesPaid]);

@override
String toString() {
  return 'GroupFilterData(limit: $limit, offset: $offset, cityFiasId: $cityFiasId, district: $district, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, minParticipantsCount: $minParticipantsCount, maxParticipantsCount: $maxParticipantsCount, smartQuery: $smartQuery, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, sortBy: $sortBy, sortOrder: $sortOrder, utilitiesPaymentId: $utilitiesPaymentId, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed, utilitiesPaid: $utilitiesPaid)';
}


}

/// @nodoc
abstract mixin class _$GroupFilterDataCopyWith<$Res> implements $GroupFilterDataCopyWith<$Res> {
  factory _$GroupFilterDataCopyWith(_GroupFilterData value, $Res Function(_GroupFilterData) _then) = __$GroupFilterDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'limit') int limit,@JsonKey(name: 'offset') int offset,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'min_participants_count') int? minParticipantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: "smart_query") String? smartQuery,@JsonKey(name: 'property_type_ids', toJson: _idsToJson) List<int>? propertyTypeIds,@JsonKey(name: 'rooms_count_ids', toJson: _idsToJson) List<int>? roomsCountIds,@JsonKey(name: 'min_price') double? minPrice,@JsonKey(name: 'max_price') double? maxPrice,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'sort_by') String? sortBy,@JsonKey(name: 'sort_order') String? sortOrder,@JsonKey(name: 'utilities_payment_id') int? utilitiesPaymentId,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed,@JsonKey(name: 'utilities_paid') bool? utilitiesPaid
});




}
/// @nodoc
class __$GroupFilterDataCopyWithImpl<$Res>
    implements _$GroupFilterDataCopyWith<$Res> {
  __$GroupFilterDataCopyWithImpl(this._self, this._then);

  final _GroupFilterData _self;
  final $Res Function(_GroupFilterData) _then;

/// Create a copy of GroupFilterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? offset = null,Object? cityFiasId = freezed,Object? district = freezed,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minParticipantsCount = freezed,Object? maxParticipantsCount = freezed,Object? smartQuery = freezed,Object? propertyTypeIds = freezed,Object? roomsCountIds = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = freezed,Object? sortBy = freezed,Object? sortOrder = freezed,Object? utilitiesPaymentId = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,Object? utilitiesPaid = freezed,}) {
  return _then(_GroupFilterData(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minParticipantsCount: freezed == minParticipantsCount ? _self.minParticipantsCount : minParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,smartQuery: freezed == smartQuery ? _self.smartQuery : smartQuery // ignore: cast_nullable_to_non_nullable
as String?,propertyTypeIds: freezed == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>?,roomsCountIds: freezed == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,utilitiesPaymentId: freezed == utilitiesPaymentId ? _self.utilitiesPaymentId : utilitiesPaymentId // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,utilitiesPaid: freezed == utilitiesPaid ? _self.utilitiesPaid : utilitiesPaid // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
