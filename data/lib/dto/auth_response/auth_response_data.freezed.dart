// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponseData {

@JsonKey(name: 'accessToken') String? get accessToken;@JsonKey(name: 'refreshToken') String? get refreshToken;@JsonKey(name: 'tokenType') String? get tokenType;@JsonKey(name: 'expiresInSeconds') int? get expiresInSeconds;@JsonKey(name: 'user') UserData? get user;
/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseDataCopyWith<AuthResponseData> get copyWith => _$AuthResponseDataCopyWithImpl<AuthResponseData>(this as AuthResponseData, _$identity);

  /// Serializes this AuthResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponseData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresInSeconds,user);

@override
String toString() {
  return 'AuthResponseData(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresInSeconds: $expiresInSeconds, user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthResponseDataCopyWith<$Res>  {
  factory $AuthResponseDataCopyWith(AuthResponseData value, $Res Function(AuthResponseData) _then) = _$AuthResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accessToken') String? accessToken,@JsonKey(name: 'refreshToken') String? refreshToken,@JsonKey(name: 'tokenType') String? tokenType,@JsonKey(name: 'expiresInSeconds') int? expiresInSeconds,@JsonKey(name: 'user') UserData? user
});


$UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthResponseDataCopyWithImpl<$Res>
    implements $AuthResponseDataCopyWith<$Res> {
  _$AuthResponseDataCopyWithImpl(this._self, this._then);

  final AuthResponseData _self;
  final $Res Function(AuthResponseData) _then;

/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresInSeconds = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresInSeconds: freezed == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponseData].
extension AuthResponseDataPatterns on AuthResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponseData value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'refreshToken')  String? refreshToken, @JsonKey(name: 'tokenType')  String? tokenType, @JsonKey(name: 'expiresInSeconds')  int? expiresInSeconds, @JsonKey(name: 'user')  UserData? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponseData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresInSeconds,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'refreshToken')  String? refreshToken, @JsonKey(name: 'tokenType')  String? tokenType, @JsonKey(name: 'expiresInSeconds')  int? expiresInSeconds, @JsonKey(name: 'user')  UserData? user)  $default,) {final _that = this;
switch (_that) {
case _AuthResponseData():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresInSeconds,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'refreshToken')  String? refreshToken, @JsonKey(name: 'tokenType')  String? tokenType, @JsonKey(name: 'expiresInSeconds')  int? expiresInSeconds, @JsonKey(name: 'user')  UserData? user)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponseData() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresInSeconds,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponseData implements AuthResponseData {
  const _AuthResponseData({@JsonKey(name: 'accessToken') this.accessToken, @JsonKey(name: 'refreshToken') this.refreshToken, @JsonKey(name: 'tokenType') this.tokenType, @JsonKey(name: 'expiresInSeconds') this.expiresInSeconds, @JsonKey(name: 'user') this.user});
  factory _AuthResponseData.fromJson(Map<String, dynamic> json) => _$AuthResponseDataFromJson(json);

@override@JsonKey(name: 'accessToken') final  String? accessToken;
@override@JsonKey(name: 'refreshToken') final  String? refreshToken;
@override@JsonKey(name: 'tokenType') final  String? tokenType;
@override@JsonKey(name: 'expiresInSeconds') final  int? expiresInSeconds;
@override@JsonKey(name: 'user') final  UserData? user;

/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseDataCopyWith<_AuthResponseData> get copyWith => __$AuthResponseDataCopyWithImpl<_AuthResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponseData&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresInSeconds, expiresInSeconds) || other.expiresInSeconds == expiresInSeconds)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresInSeconds,user);

@override
String toString() {
  return 'AuthResponseData(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresInSeconds: $expiresInSeconds, user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseDataCopyWith<$Res> implements $AuthResponseDataCopyWith<$Res> {
  factory _$AuthResponseDataCopyWith(_AuthResponseData value, $Res Function(_AuthResponseData) _then) = __$AuthResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accessToken') String? accessToken,@JsonKey(name: 'refreshToken') String? refreshToken,@JsonKey(name: 'tokenType') String? tokenType,@JsonKey(name: 'expiresInSeconds') int? expiresInSeconds,@JsonKey(name: 'user') UserData? user
});


@override $UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthResponseDataCopyWithImpl<$Res>
    implements _$AuthResponseDataCopyWith<$Res> {
  __$AuthResponseDataCopyWithImpl(this._self, this._then);

  final _AuthResponseData _self;
  final $Res Function(_AuthResponseData) _then;

/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresInSeconds = freezed,Object? user = freezed,}) {
  return _then(_AuthResponseData(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresInSeconds: freezed == expiresInSeconds ? _self.expiresInSeconds : expiresInSeconds // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of AuthResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
