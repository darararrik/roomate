// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_preference_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupPreferenceItemModel {

 String get title; String get value;
/// Create a copy of GroupPreferenceItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupPreferenceItemModelCopyWith<GroupPreferenceItemModel> get copyWith => _$GroupPreferenceItemModelCopyWithImpl<GroupPreferenceItemModel>(this as GroupPreferenceItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupPreferenceItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'GroupPreferenceItemModel(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class $GroupPreferenceItemModelCopyWith<$Res>  {
  factory $GroupPreferenceItemModelCopyWith(GroupPreferenceItemModel value, $Res Function(GroupPreferenceItemModel) _then) = _$GroupPreferenceItemModelCopyWithImpl;
@useResult
$Res call({
 String title, String value
});




}
/// @nodoc
class _$GroupPreferenceItemModelCopyWithImpl<$Res>
    implements $GroupPreferenceItemModelCopyWith<$Res> {
  _$GroupPreferenceItemModelCopyWithImpl(this._self, this._then);

  final GroupPreferenceItemModel _self;
  final $Res Function(GroupPreferenceItemModel) _then;

/// Create a copy of GroupPreferenceItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? value = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupPreferenceItemModel].
extension GroupPreferenceItemModelPatterns on GroupPreferenceItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupPreferenceItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupPreferenceItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupPreferenceItemModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupPreferenceItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupPreferenceItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupPreferenceItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupPreferenceItemModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String value)  $default,) {final _that = this;
switch (_that) {
case _GroupPreferenceItemModel():
return $default(_that.title,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String value)?  $default,) {final _that = this;
switch (_that) {
case _GroupPreferenceItemModel() when $default != null:
return $default(_that.title,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _GroupPreferenceItemModel implements GroupPreferenceItemModel {
  const _GroupPreferenceItemModel({this.title = '', this.value = ''});
  

@override@JsonKey() final  String title;
@override@JsonKey() final  String value;

/// Create a copy of GroupPreferenceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupPreferenceItemModelCopyWith<_GroupPreferenceItemModel> get copyWith => __$GroupPreferenceItemModelCopyWithImpl<_GroupPreferenceItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupPreferenceItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,title,value);

@override
String toString() {
  return 'GroupPreferenceItemModel(title: $title, value: $value)';
}


}

/// @nodoc
abstract mixin class _$GroupPreferenceItemModelCopyWith<$Res> implements $GroupPreferenceItemModelCopyWith<$Res> {
  factory _$GroupPreferenceItemModelCopyWith(_GroupPreferenceItemModel value, $Res Function(_GroupPreferenceItemModel) _then) = __$GroupPreferenceItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String value
});




}
/// @nodoc
class __$GroupPreferenceItemModelCopyWithImpl<$Res>
    implements _$GroupPreferenceItemModelCopyWith<$Res> {
  __$GroupPreferenceItemModelCopyWithImpl(this._self, this._then);

  final _GroupPreferenceItemModel _self;
  final $Res Function(_GroupPreferenceItemModel) _then;

/// Create a copy of GroupPreferenceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? value = null,}) {
  return _then(_GroupPreferenceItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
