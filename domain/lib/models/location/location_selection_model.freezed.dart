// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_selection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationSelectionModel {

 int get cityId; String get cityTitle; String get cityFiasId; String get addressQuery; String get displayTitle; LocationSuggestionModel get addressDetails;
/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationSelectionModelCopyWith<LocationSelectionModel> get copyWith => _$LocationSelectionModelCopyWithImpl<LocationSelectionModel>(this as LocationSelectionModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationSelectionModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityTitle, cityTitle) || other.cityTitle == cityTitle)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.displayTitle, displayTitle) || other.displayTitle == displayTitle)&&(identical(other.addressDetails, addressDetails) || other.addressDetails == addressDetails));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,cityTitle,cityFiasId,addressQuery,displayTitle,addressDetails);

@override
String toString() {
  return 'LocationSelectionModel(cityId: $cityId, cityTitle: $cityTitle, cityFiasId: $cityFiasId, addressQuery: $addressQuery, displayTitle: $displayTitle, addressDetails: $addressDetails)';
}


}

/// @nodoc
abstract mixin class $LocationSelectionModelCopyWith<$Res>  {
  factory $LocationSelectionModelCopyWith(LocationSelectionModel value, $Res Function(LocationSelectionModel) _then) = _$LocationSelectionModelCopyWithImpl;
@useResult
$Res call({
 int cityId, String cityTitle, String cityFiasId, String addressQuery, String displayTitle, LocationSuggestionModel addressDetails
});


$LocationSuggestionModelCopyWith<$Res> get addressDetails;

}
/// @nodoc
class _$LocationSelectionModelCopyWithImpl<$Res>
    implements $LocationSelectionModelCopyWith<$Res> {
  _$LocationSelectionModelCopyWithImpl(this._self, this._then);

  final LocationSelectionModel _self;
  final $Res Function(LocationSelectionModel) _then;

/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityId = null,Object? cityTitle = null,Object? cityFiasId = null,Object? addressQuery = null,Object? displayTitle = null,Object? addressDetails = null,}) {
  return _then(_self.copyWith(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityTitle: null == cityTitle ? _self.cityTitle : cityTitle // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,addressQuery: null == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String,displayTitle: null == displayTitle ? _self.displayTitle : displayTitle // ignore: cast_nullable_to_non_nullable
as String,addressDetails: null == addressDetails ? _self.addressDetails : addressDetails // ignore: cast_nullable_to_non_nullable
as LocationSuggestionModel,
  ));
}
/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationSuggestionModelCopyWith<$Res> get addressDetails {
  
  return $LocationSuggestionModelCopyWith<$Res>(_self.addressDetails, (value) {
    return _then(_self.copyWith(addressDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocationSelectionModel].
extension LocationSelectionModelPatterns on LocationSelectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationSelectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationSelectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationSelectionModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationSelectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationSelectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationSelectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int cityId,  String cityTitle,  String cityFiasId,  String addressQuery,  String displayTitle,  LocationSuggestionModel addressDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationSelectionModel() when $default != null:
return $default(_that.cityId,_that.cityTitle,_that.cityFiasId,_that.addressQuery,_that.displayTitle,_that.addressDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int cityId,  String cityTitle,  String cityFiasId,  String addressQuery,  String displayTitle,  LocationSuggestionModel addressDetails)  $default,) {final _that = this;
switch (_that) {
case _LocationSelectionModel():
return $default(_that.cityId,_that.cityTitle,_that.cityFiasId,_that.addressQuery,_that.displayTitle,_that.addressDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int cityId,  String cityTitle,  String cityFiasId,  String addressQuery,  String displayTitle,  LocationSuggestionModel addressDetails)?  $default,) {final _that = this;
switch (_that) {
case _LocationSelectionModel() when $default != null:
return $default(_that.cityId,_that.cityTitle,_that.cityFiasId,_that.addressQuery,_that.displayTitle,_that.addressDetails);case _:
  return null;

}
}

}

/// @nodoc


class _LocationSelectionModel implements LocationSelectionModel {
  const _LocationSelectionModel({this.cityId = 0, this.cityTitle = '', this.cityFiasId = '', this.addressQuery = '', this.displayTitle = '', this.addressDetails = const LocationSuggestionModel()});
  

@override@JsonKey() final  int cityId;
@override@JsonKey() final  String cityTitle;
@override@JsonKey() final  String cityFiasId;
@override@JsonKey() final  String addressQuery;
@override@JsonKey() final  String displayTitle;
@override@JsonKey() final  LocationSuggestionModel addressDetails;

/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSelectionModelCopyWith<_LocationSelectionModel> get copyWith => __$LocationSelectionModelCopyWithImpl<_LocationSelectionModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSelectionModel&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityTitle, cityTitle) || other.cityTitle == cityTitle)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.addressQuery, addressQuery) || other.addressQuery == addressQuery)&&(identical(other.displayTitle, displayTitle) || other.displayTitle == displayTitle)&&(identical(other.addressDetails, addressDetails) || other.addressDetails == addressDetails));
}


@override
int get hashCode => Object.hash(runtimeType,cityId,cityTitle,cityFiasId,addressQuery,displayTitle,addressDetails);

@override
String toString() {
  return 'LocationSelectionModel(cityId: $cityId, cityTitle: $cityTitle, cityFiasId: $cityFiasId, addressQuery: $addressQuery, displayTitle: $displayTitle, addressDetails: $addressDetails)';
}


}

/// @nodoc
abstract mixin class _$LocationSelectionModelCopyWith<$Res> implements $LocationSelectionModelCopyWith<$Res> {
  factory _$LocationSelectionModelCopyWith(_LocationSelectionModel value, $Res Function(_LocationSelectionModel) _then) = __$LocationSelectionModelCopyWithImpl;
@override @useResult
$Res call({
 int cityId, String cityTitle, String cityFiasId, String addressQuery, String displayTitle, LocationSuggestionModel addressDetails
});


@override $LocationSuggestionModelCopyWith<$Res> get addressDetails;

}
/// @nodoc
class __$LocationSelectionModelCopyWithImpl<$Res>
    implements _$LocationSelectionModelCopyWith<$Res> {
  __$LocationSelectionModelCopyWithImpl(this._self, this._then);

  final _LocationSelectionModel _self;
  final $Res Function(_LocationSelectionModel) _then;

/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityId = null,Object? cityTitle = null,Object? cityFiasId = null,Object? addressQuery = null,Object? displayTitle = null,Object? addressDetails = null,}) {
  return _then(_LocationSelectionModel(
cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,cityTitle: null == cityTitle ? _self.cityTitle : cityTitle // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,addressQuery: null == addressQuery ? _self.addressQuery : addressQuery // ignore: cast_nullable_to_non_nullable
as String,displayTitle: null == displayTitle ? _self.displayTitle : displayTitle // ignore: cast_nullable_to_non_nullable
as String,addressDetails: null == addressDetails ? _self.addressDetails : addressDetails // ignore: cast_nullable_to_non_nullable
as LocationSuggestionModel,
  ));
}

/// Create a copy of LocationSelectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationSuggestionModelCopyWith<$Res> get addressDetails {
  
  return $LocationSuggestionModelCopyWith<$Res>(_self.addressDetails, (value) {
    return _then(_self.copyWith(addressDetails: value));
  });
}
}

// dart format on
