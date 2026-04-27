// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInResponseData {

@JsonKey(name: 'message') String? get message;@JsonKey(name: 'expires_in_seconds') int? get expiresInSeconds;
/// Create a copy of SignInResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInResponseDataCopyWith<SignInResponseData> get copyWith => _$SignInResponseDataCopyWithImpl<SignInResponseData>(this as SignInResponseData, _$identity);

  /// Serializes this SignInResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInResponseData&&(identical(other.message, message) || other.message == message)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,expiresInSeconds);

@override
String toString() {
  return 'SignInResponseData(message: $message, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class $SignInResponseDataCopyWith<$Res>  {
  factory $SignInResponseDataCopyWith(SignInResponseData value, $Res Function(SignInResponseData) _then) = _$SignInResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') String? message,@JsonKey(name: 'expires_in_seconds') int? expiresInSeconds
});




}
/// @nodoc
class _$SignInResponseDataCopyWithImpl<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  _$SignInResponseDataCopyWithImpl(this._self, this._then);

  final SignInResponseData _self;
  final $Res Function(SignInResponseData) _then;

/// Create a copy of SignInResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? expiresInSeconds = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,expiresInSeconds: freezed == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInResponseData].
extension SignInResponseDataPatterns on SignInResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInResponseData value)  $default,){
final _that = this;
switch (_that) {
case _SignInResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _SignInResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'expires_in_seconds')  int? expiresInSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInResponseData() when $default != null:
return $default(_that.message,_that.expiresInSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'expires_in_seconds')  int? expiresInSeconds)  $default,) {final _that = this;
switch (_that) {
case _SignInResponseData():
return $default(_that.message,_that.expiresInSeconds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'expires_in_seconds')  int? expiresInSeconds)?  $default,) {final _that = this;
switch (_that) {
case _SignInResponseData() when $default != null:
return $default(_that.message,_that.expiresInSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInResponseData implements SignInResponseData {
  const _SignInResponseData({@JsonKey(name: 'message') this.message, @JsonKey(name: 'expires_in_seconds') this.expiresInSeconds});
  factory _SignInResponseData.fromJson(Map<String, dynamic> json) => _$SignInResponseDataFromJson(json);

@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'expires_in_seconds') final  int? expiresInSeconds;

/// Create a copy of SignInResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInResponseDataCopyWith<_SignInResponseData> get copyWith => __$SignInResponseDataCopyWithImpl<_SignInResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInResponseData&&(identical(other.message, message) || other.message == message)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,expiresInSeconds);

@override
String toString() {
  return 'SignInResponseData(message: $message, expiresInSeconds: $expiresInSeconds)';
}


}

/// @nodoc
abstract mixin class _$SignInResponseDataCopyWith<$Res> implements $SignInResponseDataCopyWith<$Res> {
  factory _$SignInResponseDataCopyWith(_SignInResponseData value, $Res Function(_SignInResponseData) _then) = __$SignInResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') String? message,@JsonKey(name: 'expires_in_seconds') int? expiresInSeconds
});




}
/// @nodoc
class __$SignInResponseDataCopyWithImpl<$Res>
    implements _$SignInResponseDataCopyWith<$Res> {
  __$SignInResponseDataCopyWithImpl(this._self, this._then);

  final _SignInResponseData _self;
  final $Res Function(_SignInResponseData) _then;

/// Create a copy of SignInResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? expiresInSeconds = freezed,}) {
  return _then(_SignInResponseData(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,expiresInSeconds: freezed == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
