// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_preference_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupPreferenceItemData {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'value') String? get value;
/// Create a copy of GroupPreferenceItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupPreferenceItemDataCopyWith<GroupPreferenceItemData> get copyWith => _$GroupPreferenceItemDataCopyWithImpl<GroupPreferenceItemData>(this as GroupPreferenceItemData, _$identity);

  /// Serializes this GroupPreferenceItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupPreferenceItemData&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'GroupPreferenceItemData(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class $GroupPreferenceItemDataCopyWith<$Res>  {
  factory $GroupPreferenceItemDataCopyWith(GroupPreferenceItemData value, $Res Function(GroupPreferenceItemData) _then) = _$GroupPreferenceItemDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'value') String? value
});




}
/// @nodoc
class _$GroupPreferenceItemDataCopyWithImpl<$Res>
    implements $GroupPreferenceItemDataCopyWith<$Res> {
  _$GroupPreferenceItemDataCopyWithImpl(this._self, this._then);

  final GroupPreferenceItemData _self;
  final $Res Function(GroupPreferenceItemData) _then;

/// Create a copy of GroupPreferenceItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupPreferenceItemData].
extension GroupPreferenceItemDataPatterns on GroupPreferenceItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupPreferenceItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupPreferenceItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupPreferenceItemData value)  $default,){
final _that = this;
switch (_that) {
case _GroupPreferenceItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupPreferenceItemData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupPreferenceItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'value')  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupPreferenceItemData() when $default != null:
return $default(_that.title,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'value')  String? value)  $default,) {final _that = this;
switch (_that) {
case _GroupPreferenceItemData():
return $default(_that.title,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String? title, @JsonKey(name: 'value')  String? value)?  $default,) {final _that = this;
switch (_that) {
case _GroupPreferenceItemData() when $default != null:
return $default(_that.title,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupPreferenceItemData implements GroupPreferenceItemData {
  const _GroupPreferenceItemData({@JsonKey(name: 'title') this.title, @JsonKey(name: 'value') this.value});
  factory _GroupPreferenceItemData.fromJson(Map<String, dynamic> json) => _$GroupPreferenceItemDataFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'value') final  String? value;

/// Create a copy of GroupPreferenceItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupPreferenceItemDataCopyWith<_GroupPreferenceItemData> get copyWith => __$GroupPreferenceItemDataCopyWithImpl<_GroupPreferenceItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupPreferenceItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupPreferenceItemData&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'GroupPreferenceItemData(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class _$GroupPreferenceItemDataCopyWith<$Res> implements $GroupPreferenceItemDataCopyWith<$Res> {
  factory _$GroupPreferenceItemDataCopyWith(_GroupPreferenceItemData value, $Res Function(_GroupPreferenceItemData) _then) = __$GroupPreferenceItemDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'value') String? value
});




}
/// @nodoc
class __$GroupPreferenceItemDataCopyWithImpl<$Res>
    implements _$GroupPreferenceItemDataCopyWith<$Res> {
  __$GroupPreferenceItemDataCopyWithImpl(this._self, this._then);

  final _GroupPreferenceItemData _self;
  final $Res Function(_GroupPreferenceItemData) _then;

/// Create a copy of GroupPreferenceItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? value = freezed,}) {
  return _then(_GroupPreferenceItemData(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
