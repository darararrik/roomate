// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParticipantData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'is_verified') bool? get isVerified;@JsonKey(name: 'role') String? get role;
/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantDataCopyWith<ParticipantData> get copyWith => _$ParticipantDataCopyWithImpl<ParticipantData>(this as ParticipantData, _$identity);

  /// Serializes this ParticipantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,role);

@override
String toString() {
  return 'ParticipantData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, role: $role)';
}


}

/// @nodoc
abstract mixin class $ParticipantDataCopyWith<$Res>  {
  factory $ParticipantDataCopyWith(ParticipantData value, $Res Function(ParticipantData) _then) = _$ParticipantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'role') String? role
});




}
/// @nodoc
class _$ParticipantDataCopyWithImpl<$Res>
    implements $ParticipantDataCopyWith<$Res> {
  _$ParticipantDataCopyWithImpl(this._self, this._then);

  final ParticipantData _self;
  final $Res Function(ParticipantData) _then;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantData].
extension ParticipantDataPatterns on ParticipantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantData value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantData value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'role')  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'role')  String? role)  $default,) {final _that = this;
switch (_that) {
case _ParticipantData():
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'role')  String? role)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantData implements ParticipantData {
  const _ParticipantData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'is_verified') this.isVerified, @JsonKey(name: 'role') this.role});
  factory _ParticipantData.fromJson(Map<String, dynamic> json) => _$ParticipantDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'is_verified') final  bool? isVerified;
@override@JsonKey(name: 'role') final  String? role;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantDataCopyWith<_ParticipantData> get copyWith => __$ParticipantDataCopyWithImpl<_ParticipantData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,role);

@override
String toString() {
  return 'ParticipantData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, role: $role)';
}


}

/// @nodoc
abstract mixin class _$ParticipantDataCopyWith<$Res> implements $ParticipantDataCopyWith<$Res> {
  factory _$ParticipantDataCopyWith(_ParticipantData value, $Res Function(_ParticipantData) _then) = __$ParticipantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'role') String? role
});




}
/// @nodoc
class __$ParticipantDataCopyWithImpl<$Res>
    implements _$ParticipantDataCopyWith<$Res> {
  __$ParticipantDataCopyWithImpl(this._self, this._then);

  final _ParticipantData _self;
  final $Res Function(_ParticipantData) _then;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? role = freezed,}) {
  return _then(_ParticipantData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
