// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreetDto {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'district') String? get district;@JsonKey(name: 'region_line') String? get regionLine;
/// Create a copy of StreetDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreetDtoCopyWith<StreetDto> get copyWith => _$StreetDtoCopyWithImpl<StreetDto>(this as StreetDto, _$identity);

  /// Serializes this StreetDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreetDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.district, district) || other.district == district)&&(identical(other.regionLine, regionLine) || other.regionLine == regionLine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,district,regionLine);

@override
String toString() {
  return 'StreetDto(id: $id, name: $name, district: $district, regionLine: $regionLine)';
}


}

/// @nodoc
abstract mixin class $StreetDtoCopyWith<$Res>  {
  factory $StreetDtoCopyWith(StreetDto value, $Res Function(StreetDto) _then) = _$StreetDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'district') String? district,@JsonKey(name: 'region_line') String? regionLine
});




}
/// @nodoc
class _$StreetDtoCopyWithImpl<$Res>
    implements $StreetDtoCopyWith<$Res> {
  _$StreetDtoCopyWithImpl(this._self, this._then);

  final StreetDto _self;
  final $Res Function(StreetDto) _then;

/// Create a copy of StreetDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? district = freezed,Object? regionLine = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,regionLine: freezed == regionLine ? _self.regionLine : regionLine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StreetDto].
extension StreetDtoPatterns on StreetDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreetDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreetDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreetDto value)  $default,){
final _that = this;
switch (_that) {
case _StreetDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreetDto value)?  $default,){
final _that = this;
switch (_that) {
case _StreetDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'region_line')  String? regionLine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreetDto() when $default != null:
return $default(_that.id,_that.name,_that.district,_that.regionLine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'region_line')  String? regionLine)  $default,) {final _that = this;
switch (_that) {
case _StreetDto():
return $default(_that.id,_that.name,_that.district,_that.regionLine);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'district')  String? district, @JsonKey(name: 'region_line')  String? regionLine)?  $default,) {final _that = this;
switch (_that) {
case _StreetDto() when $default != null:
return $default(_that.id,_that.name,_that.district,_that.regionLine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreetDto implements StreetDto {
  const _StreetDto({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'district') this.district, @JsonKey(name: 'region_line') this.regionLine});
  factory _StreetDto.fromJson(Map<String, dynamic> json) => _$StreetDtoFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'district') final  String? district;
@override@JsonKey(name: 'region_line') final  String? regionLine;

/// Create a copy of StreetDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreetDtoCopyWith<_StreetDto> get copyWith => __$StreetDtoCopyWithImpl<_StreetDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreetDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreetDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.district, district) || other.district == district)&&(identical(other.regionLine, regionLine) || other.regionLine == regionLine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,district,regionLine);

@override
String toString() {
  return 'StreetDto(id: $id, name: $name, district: $district, regionLine: $regionLine)';
}


}

/// @nodoc
abstract mixin class _$StreetDtoCopyWith<$Res> implements $StreetDtoCopyWith<$Res> {
  factory _$StreetDtoCopyWith(_StreetDto value, $Res Function(_StreetDto) _then) = __$StreetDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'district') String? district,@JsonKey(name: 'region_line') String? regionLine
});




}
/// @nodoc
class __$StreetDtoCopyWithImpl<$Res>
    implements _$StreetDtoCopyWith<$Res> {
  __$StreetDtoCopyWithImpl(this._self, this._then);

  final _StreetDto _self;
  final $Res Function(_StreetDto) _then;

/// Create a copy of StreetDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? district = freezed,Object? regionLine = freezed,}) {
  return _then(_StreetDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,regionLine: freezed == regionLine ? _self.regionLine : regionLine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
