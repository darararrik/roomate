// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_suggestion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationSuggestionDto {

@JsonKey(name: 'value') String get value;@JsonKey(name: 'unrestricted_value') String get unrestrictedValue;@JsonKey(name: 'country') String get country;@JsonKey(name: 'region') String get region;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'city_fias_id') String? get cityFiasId;@JsonKey(name: 'district') String? get district;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'street_fias_id') String? get streetFiasId;@JsonKey(name: 'house') String? get house;@JsonKey(name: 'house_fias_id') String? get houseFiasId;@JsonKey(name: 'geo_lat') double? get geoLat;@JsonKey(name: 'geo_lon') double? get geoLon;
/// Create a copy of LocationSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationSuggestionDtoCopyWith<LocationSuggestionDto> get copyWith => _$LocationSuggestionDtoCopyWithImpl<LocationSuggestionDto>(this as LocationSuggestionDto, _$identity);

  /// Serializes this LocationSuggestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationSuggestionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'LocationSuggestionDto(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class $LocationSuggestionDtoCopyWith<$Res>  {
  factory $LocationSuggestionDtoCopyWith(LocationSuggestionDto value, $Res Function(LocationSuggestionDto) _then) = _$LocationSuggestionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'value') String value,@JsonKey(name: 'unrestricted_value') String unrestrictedValue,@JsonKey(name: 'country') String country,@JsonKey(name: 'region') String region,@JsonKey(name: 'city') String? city,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'street') String? street,@JsonKey(name: 'street_fias_id') String? streetFiasId,@JsonKey(name: 'house') String? house,@JsonKey(name: 'house_fias_id') String? houseFiasId,@JsonKey(name: 'geo_lat') double? geoLat,@JsonKey(name: 'geo_lon') double? geoLon
});




}
/// @nodoc
class _$LocationSuggestionDtoCopyWithImpl<$Res>
    implements $LocationSuggestionDtoCopyWith<$Res> {
  _$LocationSuggestionDtoCopyWithImpl(this._self, this._then);

  final LocationSuggestionDto _self;
  final $Res Function(LocationSuggestionDto) _then;

/// Create a copy of LocationSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? unrestrictedValue = null,Object? country = null,Object? region = null,Object? city = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? street = freezed,Object? streetFiasId = freezed,Object? house = freezed,Object? houseFiasId = freezed,Object? geoLat = freezed,Object? geoLon = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,unrestrictedValue: null == unrestrictedValue ? _self.unrestrictedValue : unrestrictedValue // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,streetFiasId: freezed == streetFiasId ? _self.streetFiasId : streetFiasId // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,houseFiasId: freezed == houseFiasId ? _self.houseFiasId : houseFiasId // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLon: freezed == geoLon ? _self.geoLon : geoLon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationSuggestionDto].
extension LocationSuggestionDtoPatterns on LocationSuggestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationSuggestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationSuggestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationSuggestionDto value)  $default,){
final _that = this;
switch (_that) {
case _LocationSuggestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationSuggestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _LocationSuggestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String value, @JsonKey(name: 'unrestricted_value')  String unrestrictedValue, @JsonKey(name: 'country')  String country, @JsonKey(name: 'region')  String region, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'street_fias_id')  String? streetFiasId, @JsonKey(name: 'house')  String? house, @JsonKey(name: 'house_fias_id')  String? houseFiasId, @JsonKey(name: 'geo_lat')  double? geoLat, @JsonKey(name: 'geo_lon')  double? geoLon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationSuggestionDto() when $default != null:
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'value')  String value, @JsonKey(name: 'unrestricted_value')  String unrestrictedValue, @JsonKey(name: 'country')  String country, @JsonKey(name: 'region')  String region, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'street_fias_id')  String? streetFiasId, @JsonKey(name: 'house')  String? house, @JsonKey(name: 'house_fias_id')  String? houseFiasId, @JsonKey(name: 'geo_lat')  double? geoLat, @JsonKey(name: 'geo_lon')  double? geoLon)  $default,) {final _that = this;
switch (_that) {
case _LocationSuggestionDto():
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'value')  String value, @JsonKey(name: 'unrestricted_value')  String unrestrictedValue, @JsonKey(name: 'country')  String country, @JsonKey(name: 'region')  String region, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'city_fias_id')  String? cityFiasId, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'street_fias_id')  String? streetFiasId, @JsonKey(name: 'house')  String? house, @JsonKey(name: 'house_fias_id')  String? houseFiasId, @JsonKey(name: 'geo_lat')  double? geoLat, @JsonKey(name: 'geo_lon')  double? geoLon)?  $default,) {final _that = this;
switch (_that) {
case _LocationSuggestionDto() when $default != null:
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationSuggestionDto implements LocationSuggestionDto {
   _LocationSuggestionDto({@JsonKey(name: 'value') this.value = '', @JsonKey(name: 'unrestricted_value') this.unrestrictedValue = '', @JsonKey(name: 'country') this.country = '', @JsonKey(name: 'region') this.region = '', @JsonKey(name: 'city') this.city, @JsonKey(name: 'city_fias_id') this.cityFiasId, @JsonKey(name: 'district') this.district, @JsonKey(name: 'street') this.street, @JsonKey(name: 'street_fias_id') this.streetFiasId, @JsonKey(name: 'house') this.house, @JsonKey(name: 'house_fias_id') this.houseFiasId, @JsonKey(name: 'geo_lat') this.geoLat, @JsonKey(name: 'geo_lon') this.geoLon});
  factory _LocationSuggestionDto.fromJson(Map<String, dynamic> json) => _$LocationSuggestionDtoFromJson(json);

@override@JsonKey(name: 'value') final  String value;
@override@JsonKey(name: 'unrestricted_value') final  String unrestrictedValue;
@override@JsonKey(name: 'country') final  String country;
@override@JsonKey(name: 'region') final  String region;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'city_fias_id') final  String? cityFiasId;
@override@JsonKey(name: 'district') final  String? district;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'street_fias_id') final  String? streetFiasId;
@override@JsonKey(name: 'house') final  String? house;
@override@JsonKey(name: 'house_fias_id') final  String? houseFiasId;
@override@JsonKey(name: 'geo_lat') final  double? geoLat;
@override@JsonKey(name: 'geo_lon') final  double? geoLon;

/// Create a copy of LocationSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSuggestionDtoCopyWith<_LocationSuggestionDto> get copyWith => __$LocationSuggestionDtoCopyWithImpl<_LocationSuggestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationSuggestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSuggestionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'LocationSuggestionDto(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class _$LocationSuggestionDtoCopyWith<$Res> implements $LocationSuggestionDtoCopyWith<$Res> {
  factory _$LocationSuggestionDtoCopyWith(_LocationSuggestionDto value, $Res Function(_LocationSuggestionDto) _then) = __$LocationSuggestionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'value') String value,@JsonKey(name: 'unrestricted_value') String unrestrictedValue,@JsonKey(name: 'country') String country,@JsonKey(name: 'region') String region,@JsonKey(name: 'city') String? city,@JsonKey(name: 'city_fias_id') String? cityFiasId,@JsonKey(name: 'district') String? district,@JsonKey(name: 'street') String? street,@JsonKey(name: 'street_fias_id') String? streetFiasId,@JsonKey(name: 'house') String? house,@JsonKey(name: 'house_fias_id') String? houseFiasId,@JsonKey(name: 'geo_lat') double? geoLat,@JsonKey(name: 'geo_lon') double? geoLon
});




}
/// @nodoc
class __$LocationSuggestionDtoCopyWithImpl<$Res>
    implements _$LocationSuggestionDtoCopyWith<$Res> {
  __$LocationSuggestionDtoCopyWithImpl(this._self, this._then);

  final _LocationSuggestionDto _self;
  final $Res Function(_LocationSuggestionDto) _then;

/// Create a copy of LocationSuggestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? unrestrictedValue = null,Object? country = null,Object? region = null,Object? city = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? street = freezed,Object? streetFiasId = freezed,Object? house = freezed,Object? houseFiasId = freezed,Object? geoLat = freezed,Object? geoLon = freezed,}) {
  return _then(_LocationSuggestionDto(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,unrestrictedValue: null == unrestrictedValue ? _self.unrestrictedValue : unrestrictedValue // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,streetFiasId: freezed == streetFiasId ? _self.streetFiasId : streetFiasId // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,houseFiasId: freezed == houseFiasId ? _self.houseFiasId : houseFiasId // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLon: freezed == geoLon ? _self.geoLon : geoLon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
