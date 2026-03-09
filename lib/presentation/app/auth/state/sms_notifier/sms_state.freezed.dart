// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SmsState {

 int get timerCount;
/// Create a copy of SmsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SmsStateCopyWith<SmsState> get copyWith => _$SmsStateCopyWithImpl<SmsState>(this as SmsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SmsState&&(identical(other.timerCount, timerCount) || other.timerCount == timerCount));
}


@override
int get hashCode => Object.hash(runtimeType,timerCount);

@override
String toString() {
  return 'SmsState(timerCount: $timerCount)';
}


}

/// @nodoc
abstract mixin class $SmsStateCopyWith<$Res>  {
  factory $SmsStateCopyWith(SmsState value, $Res Function(SmsState) _then) = _$SmsStateCopyWithImpl;
@useResult
$Res call({
 int timerCount
});




}
/// @nodoc
class _$SmsStateCopyWithImpl<$Res>
    implements $SmsStateCopyWith<$Res> {
  _$SmsStateCopyWithImpl(this._self, this._then);

  final SmsState _self;
  final $Res Function(SmsState) _then;

/// Create a copy of SmsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timerCount = null,}) {
  return _then(_self.copyWith(
timerCount: null == timerCount ? _self.timerCount : timerCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SmsState].
extension SmsStatePatterns on SmsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SmsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SmsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SmsState value)  $default,){
final _that = this;
switch (_that) {
case _SmsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SmsState value)?  $default,){
final _that = this;
switch (_that) {
case _SmsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timerCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SmsState() when $default != null:
return $default(_that.timerCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timerCount)  $default,) {final _that = this;
switch (_that) {
case _SmsState():
return $default(_that.timerCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timerCount)?  $default,) {final _that = this;
switch (_that) {
case _SmsState() when $default != null:
return $default(_that.timerCount);case _:
  return null;

}
}

}

/// @nodoc


class _SmsState extends SmsState {
  const _SmsState({this.timerCount = 59}): super._();
  

@override@JsonKey() final  int timerCount;

/// Create a copy of SmsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SmsStateCopyWith<_SmsState> get copyWith => __$SmsStateCopyWithImpl<_SmsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SmsState&&(identical(other.timerCount, timerCount) || other.timerCount == timerCount));
}


@override
int get hashCode => Object.hash(runtimeType,timerCount);

@override
String toString() {
  return 'SmsState(timerCount: $timerCount)';
}


}

/// @nodoc
abstract mixin class _$SmsStateCopyWith<$Res> implements $SmsStateCopyWith<$Res> {
  factory _$SmsStateCopyWith(_SmsState value, $Res Function(_SmsState) _then) = __$SmsStateCopyWithImpl;
@override @useResult
$Res call({
 int timerCount
});




}
/// @nodoc
class __$SmsStateCopyWithImpl<$Res>
    implements _$SmsStateCopyWith<$Res> {
  __$SmsStateCopyWithImpl(this._self, this._then);

  final _SmsState _self;
  final $Res Function(_SmsState) _then;

/// Create a copy of SmsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timerCount = null,}) {
  return _then(_SmsState(
timerCount: null == timerCount ? _self.timerCount : timerCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
