// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityData {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'fias_id') String get fiasId;@JsonKey(name: 'region') String get region;
/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityDataCopyWith<CityData> get copyWith => _$CityDataCopyWithImpl<CityData>(this as CityData, _$identity);

  /// Serializes this CityData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.fiasId, fiasId) || other.fiasId == fiasId)&&(identical(other.region, region) || other.region == region));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,fiasId,region);

@override
String toString() {
  return 'CityData(id: $id, title: $title, fiasId: $fiasId, region: $region)';
}


}

/// @nodoc
abstract mixin class $CityDataCopyWith<$Res>  {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) _then) = _$CityDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'title') String title,@JsonKey(name: 'fias_id') String fiasId,@JsonKey(name: 'region') String region
});




}
/// @nodoc
class _$CityDataCopyWithImpl<$Res>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._self, this._then);

  final CityData _self;
  final $Res Function(CityData) _then;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? fiasId = null,Object? region = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,fiasId: null == fiasId ? _self.fiasId : fiasId // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CityData].
extension CityDataPatterns on CityData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityData value)  $default,){
final _that = this;
switch (_that) {
case _CityData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityData value)?  $default,){
final _that = this;
switch (_that) {
case _CityData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'fias_id')  String fiasId, @JsonKey(name: 'region')  String region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityData() when $default != null:
return $default(_that.id,_that.title,_that.fiasId,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'fias_id')  String fiasId, @JsonKey(name: 'region')  String region)  $default,) {final _that = this;
switch (_that) {
case _CityData():
return $default(_that.id,_that.title,_that.fiasId,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'fias_id')  String fiasId, @JsonKey(name: 'region')  String region)?  $default,) {final _that = this;
switch (_that) {
case _CityData() when $default != null:
return $default(_that.id,_that.title,_that.fiasId,_that.region);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityData implements CityData {
   _CityData({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'fias_id') this.fiasId = '', @JsonKey(name: 'region') this.region = ''});
  factory _CityData.fromJson(Map<String, dynamic> json) => _$CityDataFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'fias_id') final  String fiasId;
@override@JsonKey(name: 'region') final  String region;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityDataCopyWith<_CityData> get copyWith => __$CityDataCopyWithImpl<_CityData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.fiasId, fiasId) || other.fiasId == fiasId)&&(identical(other.region, region) || other.region == region));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,fiasId,region);

@override
String toString() {
  return 'CityData(id: $id, title: $title, fiasId: $fiasId, region: $region)';
}


}

/// @nodoc
abstract mixin class _$CityDataCopyWith<$Res> implements $CityDataCopyWith<$Res> {
  factory _$CityDataCopyWith(_CityData value, $Res Function(_CityData) _then) = __$CityDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'title') String title,@JsonKey(name: 'fias_id') String fiasId,@JsonKey(name: 'region') String region
});




}
/// @nodoc
class __$CityDataCopyWithImpl<$Res>
    implements _$CityDataCopyWith<$Res> {
  __$CityDataCopyWithImpl(this._self, this._then);

  final _CityData _self;
  final $Res Function(_CityData) _then;

/// Create a copy of CityData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? fiasId = null,Object? region = null,}) {
  return _then(_CityData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,fiasId: null == fiasId ? _self.fiasId : fiasId // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
