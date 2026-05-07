// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityModel {

 int get id; String get title; String get fiasId; String get region;
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityModelCopyWith<CityModel> get copyWith => _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.fiasId, fiasId) || other.fiasId == fiasId)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,fiasId,region);

@override
String toString() {
  return 'CityModel(id: $id, title: $title, fiasId: $fiasId, region: $region)';
}


}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res>  {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) = _$CityModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String fiasId, String region
});




}
/// @nodoc
class _$CityModelCopyWithImpl<$Res>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

/// Create a copy of CityModel
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


/// Adds pattern-matching-related methods to [CityModel].
extension CityModelPatterns on CityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityModel value)  $default,){
final _that = this;
switch (_that) {
case _CityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityModel value)?  $default,){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String fiasId,  String region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String fiasId,  String region)  $default,) {final _that = this;
switch (_that) {
case _CityModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String fiasId,  String region)?  $default,) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.id,_that.title,_that.fiasId,_that.region);case _:
  return null;

}
}

}

/// @nodoc


class _CityModel implements CityModel {
   _CityModel({this.id = 0, this.title = '', this.fiasId = '', this.region = ''});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String fiasId;
@override@JsonKey() final  String region;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityModelCopyWith<_CityModel> get copyWith => __$CityModelCopyWithImpl<_CityModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.fiasId, fiasId) || other.fiasId == fiasId)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,fiasId,region);

@override
String toString() {
  return 'CityModel(id: $id, title: $title, fiasId: $fiasId, region: $region)';
}


}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(_CityModel value, $Res Function(_CityModel) _then) = __$CityModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String fiasId, String region
});




}
/// @nodoc
class __$CityModelCopyWithImpl<$Res>
    implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? fiasId = null,Object? region = null,}) {
  return _then(_CityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,fiasId: null == fiasId ? _self.fiasId : fiasId // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
