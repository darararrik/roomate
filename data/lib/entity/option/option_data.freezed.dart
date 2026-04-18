// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionData {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;
/// Create a copy of OptionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionDataCopyWith<OptionData> get copyWith => _$OptionDataCopyWithImpl<OptionData>(this as OptionData, _$identity);

  /// Serializes this OptionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'OptionData(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $OptionDataCopyWith<$Res>  {
  factory $OptionDataCopyWith(OptionData value, $Res Function(OptionData) _then) = _$OptionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class _$OptionDataCopyWithImpl<$Res>
    implements $OptionDataCopyWith<$Res> {
  _$OptionDataCopyWithImpl(this._self, this._then);

  final OptionData _self;
  final $Res Function(OptionData) _then;

/// Create a copy of OptionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionData].
extension OptionDataPatterns on OptionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionData value)  $default,){
final _that = this;
switch (_that) {
case _OptionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionData value)?  $default,){
final _that = this;
switch (_that) {
case _OptionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionData() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)  $default,) {final _that = this;
switch (_that) {
case _OptionData():
return $default(_that.id,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)?  $default,) {final _that = this;
switch (_that) {
case _OptionData() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionData implements OptionData {
  const _OptionData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title});
  factory _OptionData.fromJson(Map<String, dynamic> json) => _$OptionDataFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String? title;

/// Create a copy of OptionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionDataCopyWith<_OptionData> get copyWith => __$OptionDataCopyWithImpl<_OptionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'OptionData(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$OptionDataCopyWith<$Res> implements $OptionDataCopyWith<$Res> {
  factory _$OptionDataCopyWith(_OptionData value, $Res Function(_OptionData) _then) = __$OptionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class __$OptionDataCopyWithImpl<$Res>
    implements _$OptionDataCopyWith<$Res> {
  __$OptionDataCopyWithImpl(this._self, this._then);

  final _OptionData _self;
  final $Res Function(_OptionData) _then;

/// Create a copy of OptionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_OptionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
