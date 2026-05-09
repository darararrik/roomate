// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationSuggestionModel {

 String get value; String get unrestrictedValue; String get country; String get region; String? get city; String? get cityFiasId; String? get district; String? get street; String? get streetFiasId; String? get house; String? get houseFiasId; double? get geoLat; double? get geoLon;
/// Create a copy of LocationSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationSuggestionModelCopyWith<LocationSuggestionModel> get copyWith => _$LocationSuggestionModelCopyWithImpl<LocationSuggestionModel>(this as LocationSuggestionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationSuggestionModel&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}


@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'LocationSuggestionModel(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class $LocationSuggestionModelCopyWith<$Res>  {
  factory $LocationSuggestionModelCopyWith(LocationSuggestionModel value, $Res Function(LocationSuggestionModel) _then) = _$LocationSuggestionModelCopyWithImpl;
@useResult
$Res call({
 String value, String unrestrictedValue, String country, String region, String? city, String? cityFiasId, String? district, String? street, String? streetFiasId, String? house, String? houseFiasId, double? geoLat, double? geoLon
});




}
/// @nodoc
class _$LocationSuggestionModelCopyWithImpl<$Res>
    implements $LocationSuggestionModelCopyWith<$Res> {
  _$LocationSuggestionModelCopyWithImpl(this._self, this._then);

  final LocationSuggestionModel _self;
  final $Res Function(LocationSuggestionModel) _then;

/// Create a copy of LocationSuggestionModel
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


/// Adds pattern-matching-related methods to [LocationSuggestionModel].
extension LocationSuggestionModelPatterns on LocationSuggestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationSuggestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationSuggestionModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationSuggestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationSuggestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value,  String unrestrictedValue,  String country,  String region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value,  String unrestrictedValue,  String country,  String region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)  $default,) {final _that = this;
switch (_that) {
case _LocationSuggestionModel():
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value,  String unrestrictedValue,  String country,  String region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)?  $default,) {final _that = this;
switch (_that) {
case _LocationSuggestionModel() when $default != null:
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
  return null;

}
}

}

/// @nodoc


class _LocationSuggestionModel implements LocationSuggestionModel {
  const _LocationSuggestionModel({this.value = '', this.unrestrictedValue = '', this.country = '', this.region = '', this.city, this.cityFiasId, this.district, this.street, this.streetFiasId, this.house, this.houseFiasId, this.geoLat, this.geoLon});
  

@override@JsonKey() final  String value;
@override@JsonKey() final  String unrestrictedValue;
@override@JsonKey() final  String country;
@override@JsonKey() final  String region;
@override final  String? city;
@override final  String? cityFiasId;
@override final  String? district;
@override final  String? street;
@override final  String? streetFiasId;
@override final  String? house;
@override final  String? houseFiasId;
@override final  double? geoLat;
@override final  double? geoLon;

/// Create a copy of LocationSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSuggestionModelCopyWith<_LocationSuggestionModel> get copyWith => __$LocationSuggestionModelCopyWithImpl<_LocationSuggestionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSuggestionModel&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}


@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'LocationSuggestionModel(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class _$LocationSuggestionModelCopyWith<$Res> implements $LocationSuggestionModelCopyWith<$Res> {
  factory _$LocationSuggestionModelCopyWith(_LocationSuggestionModel value, $Res Function(_LocationSuggestionModel) _then) = __$LocationSuggestionModelCopyWithImpl;
@override @useResult
$Res call({
 String value, String unrestrictedValue, String country, String region, String? city, String? cityFiasId, String? district, String? street, String? streetFiasId, String? house, String? houseFiasId, double? geoLat, double? geoLon
});




}
/// @nodoc
class __$LocationSuggestionModelCopyWithImpl<$Res>
    implements _$LocationSuggestionModelCopyWith<$Res> {
  __$LocationSuggestionModelCopyWithImpl(this._self, this._then);

  final _LocationSuggestionModel _self;
  final $Res Function(_LocationSuggestionModel) _then;

/// Create a copy of LocationSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? unrestrictedValue = null,Object? country = null,Object? region = null,Object? city = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? street = freezed,Object? streetFiasId = freezed,Object? house = freezed,Object? houseFiasId = freezed,Object? geoLat = freezed,Object? geoLon = freezed,}) {
  return _then(_LocationSuggestionModel(
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
