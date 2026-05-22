// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TenantProfileData {

@JsonKey(name: 'about') String get about;@JsonKey(name: 'preferences') SelectedUserPreferencesData? get preferences;
/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantProfileDataCopyWith<TenantProfileData> get copyWith => _$TenantProfileDataCopyWithImpl<TenantProfileData>(this as TenantProfileData, _$identity);

  /// Serializes this TenantProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantProfileData&&(identical(other.about, about) || other.about == about)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,about,preferences);

@override
String toString() {
  return 'TenantProfileData(about: $about, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $TenantProfileDataCopyWith<$Res>  {
  factory $TenantProfileDataCopyWith(TenantProfileData value, $Res Function(TenantProfileData) _then) = _$TenantProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'about') String about,@JsonKey(name: 'preferences') SelectedUserPreferencesData? preferences
});


$SelectedUserPreferencesDataCopyWith<$Res>? get preferences;

}
/// @nodoc
class _$TenantProfileDataCopyWithImpl<$Res>
    implements $TenantProfileDataCopyWith<$Res> {
  _$TenantProfileDataCopyWithImpl(this._self, this._then);

  final TenantProfileData _self;
  final $Res Function(TenantProfileData) _then;

/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? about = null,Object? preferences = freezed,}) {
  return _then(_self.copyWith(
about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesData?,
  ));
}
/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedUserPreferencesDataCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $SelectedUserPreferencesDataCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantProfileData].
extension TenantProfileDataPatterns on TenantProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantProfileData value)  $default,){
final _that = this;
switch (_that) {
case _TenantProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _TenantProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'about')  String about, @JsonKey(name: 'preferences')  SelectedUserPreferencesData? preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantProfileData() when $default != null:
return $default(_that.about,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'about')  String about, @JsonKey(name: 'preferences')  SelectedUserPreferencesData? preferences)  $default,) {final _that = this;
switch (_that) {
case _TenantProfileData():
return $default(_that.about,_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'about')  String about, @JsonKey(name: 'preferences')  SelectedUserPreferencesData? preferences)?  $default,) {final _that = this;
switch (_that) {
case _TenantProfileData() when $default != null:
return $default(_that.about,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantProfileData implements TenantProfileData {
  const _TenantProfileData({@JsonKey(name: 'about') this.about = '', @JsonKey(name: 'preferences') this.preferences});
  factory _TenantProfileData.fromJson(Map<String, dynamic> json) => _$TenantProfileDataFromJson(json);

@override@JsonKey(name: 'about') final  String about;
@override@JsonKey(name: 'preferences') final  SelectedUserPreferencesData? preferences;

/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantProfileDataCopyWith<_TenantProfileData> get copyWith => __$TenantProfileDataCopyWithImpl<_TenantProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantProfileData&&(identical(other.about, about) || other.about == about)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,about,preferences);

@override
String toString() {
  return 'TenantProfileData(about: $about, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$TenantProfileDataCopyWith<$Res> implements $TenantProfileDataCopyWith<$Res> {
  factory _$TenantProfileDataCopyWith(_TenantProfileData value, $Res Function(_TenantProfileData) _then) = __$TenantProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'about') String about,@JsonKey(name: 'preferences') SelectedUserPreferencesData? preferences
});


@override $SelectedUserPreferencesDataCopyWith<$Res>? get preferences;

}
/// @nodoc
class __$TenantProfileDataCopyWithImpl<$Res>
    implements _$TenantProfileDataCopyWith<$Res> {
  __$TenantProfileDataCopyWithImpl(this._self, this._then);

  final _TenantProfileData _self;
  final $Res Function(_TenantProfileData) _then;

/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? about = null,Object? preferences = freezed,}) {
  return _then(_TenantProfileData(
about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesData?,
  ));
}

/// Create a copy of TenantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedUserPreferencesDataCopyWith<$Res>? get preferences {
    if (_self.preferences == null) {
    return null;
  }

  return $SelectedUserPreferencesDataCopyWith<$Res>(_self.preferences!, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

// dart format on
