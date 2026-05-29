// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'who_search_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WhoSearchFilterModel {

 int get limit; int get offset; String get smartQuery; String get cityFiasId; String get district; GenderEnum? get desiredGender; int? get minAge; int? get maxAge; int? get minParticipantsCount; int? get maxParticipantsCount; List<int> get propertyTypeIds; List<int> get roomsCountIds; double? get minPrice; double? get maxPrice; int get rentDurationId; bool get childrenAllowed; bool get partnerAllowed; bool get petsAllowed; bool get smokingAllowed; WhoSearchSortType get sortType; String get locationTitle; String get addressQuery; bool get utilitiesPayment;
/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WhoSearchFilterModelCopyWith<WhoSearchFilterModel> get copyWith => _$WhoSearchFilterModelCopyWithImpl<WhoSearchFilterModel>(this as WhoSearchFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WhoSearchFilterModel&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.smartQuery, smartQuery) || other.smartQuery == smartQuery)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minParticipantsCount, minParticipantsCount) || other.minParticipantsCount == minParticipantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other.propertyTypeIds, propertyTypeIds)&&const DeepCollectionEquality().equals(other.roomsCountIds, roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed)&&(identical(other.sortType, sortType) || other.sortType == sortType)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.utilitiesPayment, utilitiesPayment) || other.utilitiesPayment == utilitiesPayment));
}


@override
int get hashCode => Object.hashAll([runtimeType,limit,offset,smartQuery,cityFiasId,district,desiredGender,minAge,maxAge,minParticipantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(propertyTypeIds),const DeepCollectionEquality().hash(roomsCountIds),minPrice,maxPrice,rentDurationId,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed,sortType,locationTitle,addressQuery,utilitiesPayment]);

@override
String toString() {
  return 'WhoSearchFilterModel(limit: $limit, offset: $offset, smartQuery: $smartQuery, cityFiasId: $cityFiasId, district: $district, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, minParticipantsCount: $minParticipantsCount, maxParticipantsCount: $maxParticipantsCount, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed, sortType: $sortType, locationTitle: $locationTitle, addressQuery: $addressQuery, utilitiesPayment: $utilitiesPayment)';
}


}

/// @nodoc
abstract mixin class $WhoSearchFilterModelCopyWith<$Res>  {
  factory $WhoSearchFilterModelCopyWith(WhoSearchFilterModel value, $Res Function(WhoSearchFilterModel) _then) = _$WhoSearchFilterModelCopyWithImpl;
@useResult
$Res call({
 int limit, int offset, String smartQuery, String cityFiasId, String district, GenderEnum? desiredGender, int? minAge, int? maxAge, int? minParticipantsCount, int? maxParticipantsCount, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, bool childrenAllowed, bool partnerAllowed, bool petsAllowed, bool smokingAllowed, WhoSearchSortType sortType, String locationTitle, String addressQuery, bool utilitiesPayment
});




}
/// @nodoc
class _$WhoSearchFilterModelCopyWithImpl<$Res>
    implements $WhoSearchFilterModelCopyWith<$Res> {
  _$WhoSearchFilterModelCopyWithImpl(this._self, this._then);

  final WhoSearchFilterModel _self;
  final $Res Function(WhoSearchFilterModel) _then;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? limit = null,Object? offset = null,Object? smartQuery = null,Object? cityFiasId = null,Object? district = null,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minParticipantsCount = freezed,Object? maxParticipantsCount = freezed,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? childrenAllowed = null,Object? partnerAllowed = null,Object? petsAllowed = null,Object? smokingAllowed = null,Object? sortType = null,Object? locationTitle = null,Object? addressQuery = null,Object? utilitiesPayment = null,}) {
  return _then(_self.copyWith(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,smartQuery: null == smartQuery ? _self.smartQuery : smartQuery // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minParticipantsCount: freezed == minParticipantsCount ? _self.minParticipantsCount : minParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: null == propertyTypeIds ? _self.propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self.roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,partnerAllowed: null == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,smokingAllowed: null == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as WhoSearchSortType,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,addressQuery: null == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String,utilitiesPayment: null == utilitiesPayment ? _self.utilitiesPayment : utilitiesPayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WhoSearchFilterModel].
extension WhoSearchFilterModelPatterns on WhoSearchFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WhoSearchFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WhoSearchFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WhoSearchFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int limit,  int offset,  String smartQuery,  String cityFiasId,  String district,  GenderEnum? desiredGender,  int? minAge,  int? maxAge,  int? minParticipantsCount,  int? maxParticipantsCount,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed,  WhoSearchSortType sortType,  String locationTitle,  String addressQuery,  bool utilitiesPayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
return $default(_that.limit,_that.offset,_that.smartQuery,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.sortType,_that.locationTitle,_that.addressQuery,_that.utilitiesPayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int limit,  int offset,  String smartQuery,  String cityFiasId,  String district,  GenderEnum? desiredGender,  int? minAge,  int? maxAge,  int? minParticipantsCount,  int? maxParticipantsCount,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed,  WhoSearchSortType sortType,  String locationTitle,  String addressQuery,  bool utilitiesPayment)  $default,) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel():
return $default(_that.limit,_that.offset,_that.smartQuery,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.sortType,_that.locationTitle,_that.addressQuery,_that.utilitiesPayment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int limit,  int offset,  String smartQuery,  String cityFiasId,  String district,  GenderEnum? desiredGender,  int? minAge,  int? maxAge,  int? minParticipantsCount,  int? maxParticipantsCount,  List<int> propertyTypeIds,  List<int> roomsCountIds,  double? minPrice,  double? maxPrice,  int rentDurationId,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed,  WhoSearchSortType sortType,  String locationTitle,  String addressQuery,  bool utilitiesPayment)?  $default,) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
return $default(_that.limit,_that.offset,_that.smartQuery,_that.cityFiasId,_that.district,_that.desiredGender,_that.minAge,_that.maxAge,_that.minParticipantsCount,_that.maxParticipantsCount,_that.propertyTypeIds,_that.roomsCountIds,_that.minPrice,_that.maxPrice,_that.rentDurationId,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed,_that.sortType,_that.locationTitle,_that.addressQuery,_that.utilitiesPayment);case _:
  return null;

}
}

}

/// @nodoc


class _WhoSearchFilterModel implements WhoSearchFilterModel {
  const _WhoSearchFilterModel({this.limit = 20, this.offset = 0, this.smartQuery = '', this.cityFiasId = '', this.district = '', this.desiredGender, this.minAge, this.maxAge, this.minParticipantsCount, this.maxParticipantsCount, final  List<int> propertyTypeIds = const [], final  List<int> roomsCountIds = const [], this.minPrice, this.maxPrice, this.rentDurationId = 0, this.childrenAllowed = false, this.partnerAllowed = false, this.petsAllowed = false, this.smokingAllowed = false, this.sortType = WhoSearchSortType.matchPercentDesc, this.locationTitle = '', this.addressQuery = '', this.utilitiesPayment = false}): _propertyTypeIds = propertyTypeIds,_roomsCountIds = roomsCountIds;
  

@override@JsonKey() final  int limit;
@override@JsonKey() final  int offset;
@override@JsonKey() final  String smartQuery;
@override@JsonKey() final  String cityFiasId;
@override@JsonKey() final  String district;
@override final  GenderEnum? desiredGender;
@override final  int? minAge;
@override final  int? maxAge;
@override final  int? minParticipantsCount;
@override final  int? maxParticipantsCount;
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
@override@JsonKey() final  bool childrenAllowed;
@override@JsonKey() final  bool partnerAllowed;
@override@JsonKey() final  bool petsAllowed;
@override@JsonKey() final  bool smokingAllowed;
@override@JsonKey() final  WhoSearchSortType sortType;
@override@JsonKey() final  String locationTitle;
@override@JsonKey() final  String addressQuery;
@override@JsonKey() final  bool utilitiesPayment;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WhoSearchFilterModelCopyWith<_WhoSearchFilterModel> get copyWith => __$WhoSearchFilterModelCopyWithImpl<_WhoSearchFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WhoSearchFilterModel&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.smartQuery, smartQuery) || other.smartQuery == smartQuery)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minParticipantsCount, minParticipantsCount) || other.minParticipantsCount == minParticipantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other._propertyTypeIds, _propertyTypeIds)&&const DeepCollectionEquality().equals(other._roomsCountIds, _roomsCountIds)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed)&&(identical(other.sortType, sortType) || other.sortType == sortType)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.utilitiesPayment, utilitiesPayment) || other.utilitiesPayment == utilitiesPayment));
}


@override
int get hashCode => Object.hashAll([runtimeType,limit,offset,smartQuery,cityFiasId,district,desiredGender,minAge,maxAge,minParticipantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(_propertyTypeIds),const DeepCollectionEquality().hash(_roomsCountIds),minPrice,maxPrice,rentDurationId,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed,sortType,locationTitle,addressQuery,utilitiesPayment]);

@override
String toString() {
  return 'WhoSearchFilterModel(limit: $limit, offset: $offset, smartQuery: $smartQuery, cityFiasId: $cityFiasId, district: $district, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, minParticipantsCount: $minParticipantsCount, maxParticipantsCount: $maxParticipantsCount, propertyTypeIds: $propertyTypeIds, roomsCountIds: $roomsCountIds, minPrice: $minPrice, maxPrice: $maxPrice, rentDurationId: $rentDurationId, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed, sortType: $sortType, locationTitle: $locationTitle, addressQuery: $addressQuery, utilitiesPayment: $utilitiesPayment)';
}


}

/// @nodoc
abstract mixin class _$WhoSearchFilterModelCopyWith<$Res> implements $WhoSearchFilterModelCopyWith<$Res> {
  factory _$WhoSearchFilterModelCopyWith(_WhoSearchFilterModel value, $Res Function(_WhoSearchFilterModel) _then) = __$WhoSearchFilterModelCopyWithImpl;
@override @useResult
$Res call({
 int limit, int offset, String smartQuery, String cityFiasId, String district, GenderEnum? desiredGender, int? minAge, int? maxAge, int? minParticipantsCount, int? maxParticipantsCount, List<int> propertyTypeIds, List<int> roomsCountIds, double? minPrice, double? maxPrice, int rentDurationId, bool childrenAllowed, bool partnerAllowed, bool petsAllowed, bool smokingAllowed, WhoSearchSortType sortType, String locationTitle, String addressQuery, bool utilitiesPayment
});




}
/// @nodoc
class __$WhoSearchFilterModelCopyWithImpl<$Res>
    implements _$WhoSearchFilterModelCopyWith<$Res> {
  __$WhoSearchFilterModelCopyWithImpl(this._self, this._then);

  final _WhoSearchFilterModel _self;
  final $Res Function(_WhoSearchFilterModel) _then;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? limit = null,Object? offset = null,Object? smartQuery = null,Object? cityFiasId = null,Object? district = null,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minParticipantsCount = freezed,Object? maxParticipantsCount = freezed,Object? propertyTypeIds = null,Object? roomsCountIds = null,Object? minPrice = freezed,Object? maxPrice = freezed,Object? rentDurationId = null,Object? childrenAllowed = null,Object? partnerAllowed = null,Object? petsAllowed = null,Object? smokingAllowed = null,Object? sortType = null,Object? locationTitle = null,Object? addressQuery = null,Object? utilitiesPayment = null,}) {
  return _then(_WhoSearchFilterModel(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,smartQuery: null == smartQuery ? _self.smartQuery : smartQuery // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minParticipantsCount: freezed == minParticipantsCount ? _self.minParticipantsCount : minParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeIds: null == propertyTypeIds ? _self._propertyTypeIds : propertyTypeIds // ignore: cast_nullable_to_non_nullable
as List<int>,roomsCountIds: null == roomsCountIds ? _self._roomsCountIds : roomsCountIds // ignore: cast_nullable_to_non_nullable
as List<int>,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,partnerAllowed: null == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,smokingAllowed: null == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool,sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as WhoSearchSortType,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,addressQuery: null == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String,utilitiesPayment: null == utilitiesPayment ? _self.utilitiesPayment : utilitiesPayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
