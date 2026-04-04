// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StreetModel {

 int get id; String get name; String get city; String get district; String get regionLine;
/// Create a copy of StreetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreetModelCopyWith<StreetModel> get copyWith => _$StreetModelCopyWithImpl<StreetModel>(this as StreetModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.regionLine, regionLine) || other.regionLine == regionLine));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,city,district,regionLine);

@override
String toString() {
  return 'StreetModel(id: $id, name: $name, city: $city, district: $district, regionLine: $regionLine)';
}


}

/// @nodoc
abstract mixin class $StreetModelCopyWith<$Res>  {
  factory $StreetModelCopyWith(StreetModel value, $Res Function(StreetModel) _then) = _$StreetModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String city, String district, String regionLine
});




}
/// @nodoc
class _$StreetModelCopyWithImpl<$Res>
    implements $StreetModelCopyWith<$Res> {
  _$StreetModelCopyWithImpl(this._self, this._then);

  final StreetModel _self;
  final $Res Function(StreetModel) _then;

/// Create a copy of StreetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? city = null,Object? district = null,Object? regionLine = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,regionLine: null == regionLine ? _self.regionLine : regionLine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StreetModel].
extension StreetModelPatterns on StreetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreetModel value)  $default,){
final _that = this;
switch (_that) {
case _StreetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreetModel value)?  $default,){
final _that = this;
switch (_that) {
case _StreetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String city,  String district,  String regionLine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreetModel() when $default != null:
return $default(_that.id,_that.name,_that.city,_that.district,_that.regionLine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String city,  String district,  String regionLine)  $default,) {final _that = this;
switch (_that) {
case _StreetModel():
return $default(_that.id,_that.name,_that.city,_that.district,_that.regionLine);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String city,  String district,  String regionLine)?  $default,) {final _that = this;
switch (_that) {
case _StreetModel() when $default != null:
return $default(_that.id,_that.name,_that.city,_that.district,_that.regionLine);case _:
  return null;

}
}

}

/// @nodoc


class _StreetModel implements StreetModel {
   _StreetModel({this.id = 0, this.name = '', this.city = '', this.district = '', this.regionLine = ''});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String city;
@override@JsonKey() final  String district;
@override@JsonKey() final  String regionLine;

/// Create a copy of StreetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreetModelCopyWith<_StreetModel> get copyWith => __$StreetModelCopyWithImpl<_StreetModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreetModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.regionLine, regionLine) || other.regionLine == regionLine));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,city,district,regionLine);

@override
String toString() {
  return 'StreetModel(id: $id, name: $name, city: $city, district: $district, regionLine: $regionLine)';
}


}

/// @nodoc
abstract mixin class _$StreetModelCopyWith<$Res> implements $StreetModelCopyWith<$Res> {
  factory _$StreetModelCopyWith(_StreetModel value, $Res Function(_StreetModel) _then) = __$StreetModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String city, String district, String regionLine
});




}
/// @nodoc
class __$StreetModelCopyWithImpl<$Res>
    implements _$StreetModelCopyWith<$Res> {
  __$StreetModelCopyWithImpl(this._self, this._then);

  final _StreetModel _self;
  final $Res Function(_StreetModel) _then;

/// Create a copy of StreetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? city = null,Object? district = null,Object? regionLine = null,}) {
  return _then(_StreetModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,regionLine: null == regionLine ? _self.regionLine : regionLine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
