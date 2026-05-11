// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileData {

@JsonKey(name: "id") String? get id;@JsonKey(name: "first_name") String? get firstName;@JsonKey(name: "last_name") String? get lastName;@JsonKey(name: "phone") String? get phone;@JsonKey(name: "gender") String? get gender;@JsonKey(name: "age") int? get age;//TODO: сказать бэку сменить на snake
@JsonKey(name: "cityFiasId") String? get cityFiasId;@JsonKey(name: "city") String? get city;@JsonKey(name: "photo") String? get avatarUrl;@JsonKey(name: "status") bool? get isVerified;@JsonKey(name: "preferences") SelectedUserPreferencesData? get preferences;@JsonKey(name: "is_owner") bool? get isOwner;@JsonKey(name: "is_new_user") bool? get isNewUser;
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<ProfileData> get copyWith => _$ProfileDataCopyWithImpl<ProfileData>(this as ProfileData, _$identity);

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.city, city) || other.city == city)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&(identical(other.isOwner, isOwner) || other.isOwner == isOwner)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,phone,gender,age,cityFiasId,city,avatarUrl,isVerified,preferences,isOwner,isNewUser);

@override
String toString() {
  return 'ProfileData(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, gender: $gender, age: $age, cityFiasId: $cityFiasId, city: $city, avatarUrl: $avatarUrl, isVerified: $isVerified, preferences: $preferences, isOwner: $isOwner, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class $ProfileDataCopyWith<$Res>  {
  factory $ProfileDataCopyWith(ProfileData value, $Res Function(ProfileData) _then) = _$ProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "first_name") String? firstName,@JsonKey(name: "last_name") String? lastName,@JsonKey(name: "phone") String? phone,@JsonKey(name: "gender") String? gender,@JsonKey(name: "age") int? age,@JsonKey(name: "cityFiasId") String? cityFiasId,@JsonKey(name: "city") String? city,@JsonKey(name: "photo") String? avatarUrl,@JsonKey(name: "status") bool? isVerified,@JsonKey(name: "preferences") SelectedUserPreferencesData? preferences,@JsonKey(name: "is_owner") bool? isOwner,@JsonKey(name: "is_new_user") bool? isNewUser
});


$SelectedUserPreferencesDataCopyWith<$Res>? get preferences;

}
/// @nodoc
class _$ProfileDataCopyWithImpl<$Res>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._self, this._then);

  final ProfileData _self;
  final $Res Function(ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? gender = freezed,Object? age = freezed,Object? cityFiasId = freezed,Object? city = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? preferences = freezed,Object? isOwner = freezed,Object? isNewUser = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesData?,isOwner: freezed == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool?,isNewUser: freezed == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ProfileData
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


/// Adds pattern-matching-related methods to [ProfileData].
extension ProfileDataPatterns on ProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileData value)  $default,){
final _that = this;
switch (_that) {
case _ProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "age")  int? age, @JsonKey(name: "cityFiasId")  String? cityFiasId, @JsonKey(name: "city")  String? city, @JsonKey(name: "photo")  String? avatarUrl, @JsonKey(name: "status")  bool? isVerified, @JsonKey(name: "preferences")  SelectedUserPreferencesData? preferences, @JsonKey(name: "is_owner")  bool? isOwner, @JsonKey(name: "is_new_user")  bool? isNewUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.gender,_that.age,_that.cityFiasId,_that.city,_that.avatarUrl,_that.isVerified,_that.preferences,_that.isOwner,_that.isNewUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "age")  int? age, @JsonKey(name: "cityFiasId")  String? cityFiasId, @JsonKey(name: "city")  String? city, @JsonKey(name: "photo")  String? avatarUrl, @JsonKey(name: "status")  bool? isVerified, @JsonKey(name: "preferences")  SelectedUserPreferencesData? preferences, @JsonKey(name: "is_owner")  bool? isOwner, @JsonKey(name: "is_new_user")  bool? isNewUser)  $default,) {final _that = this;
switch (_that) {
case _ProfileData():
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.gender,_that.age,_that.cityFiasId,_that.city,_that.avatarUrl,_that.isVerified,_that.preferences,_that.isOwner,_that.isNewUser);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "age")  int? age, @JsonKey(name: "cityFiasId")  String? cityFiasId, @JsonKey(name: "city")  String? city, @JsonKey(name: "photo")  String? avatarUrl, @JsonKey(name: "status")  bool? isVerified, @JsonKey(name: "preferences")  SelectedUserPreferencesData? preferences, @JsonKey(name: "is_owner")  bool? isOwner, @JsonKey(name: "is_new_user")  bool? isNewUser)?  $default,) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.gender,_that.age,_that.cityFiasId,_that.city,_that.avatarUrl,_that.isVerified,_that.preferences,_that.isOwner,_that.isNewUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileData implements ProfileData {
  const _ProfileData({@JsonKey(name: "id") this.id, @JsonKey(name: "first_name") this.firstName, @JsonKey(name: "last_name") this.lastName, @JsonKey(name: "phone") this.phone, @JsonKey(name: "gender") this.gender, @JsonKey(name: "age") this.age, @JsonKey(name: "cityFiasId") this.cityFiasId, @JsonKey(name: "city") this.city, @JsonKey(name: "photo") this.avatarUrl, @JsonKey(name: "status") this.isVerified, @JsonKey(name: "preferences") this.preferences, @JsonKey(name: "is_owner") this.isOwner, @JsonKey(name: "is_new_user") this.isNewUser});
  factory _ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "first_name") final  String? firstName;
@override@JsonKey(name: "last_name") final  String? lastName;
@override@JsonKey(name: "phone") final  String? phone;
@override@JsonKey(name: "gender") final  String? gender;
@override@JsonKey(name: "age") final  int? age;
//TODO: сказать бэку сменить на snake
@override@JsonKey(name: "cityFiasId") final  String? cityFiasId;
@override@JsonKey(name: "city") final  String? city;
@override@JsonKey(name: "photo") final  String? avatarUrl;
@override@JsonKey(name: "status") final  bool? isVerified;
@override@JsonKey(name: "preferences") final  SelectedUserPreferencesData? preferences;
@override@JsonKey(name: "is_owner") final  bool? isOwner;
@override@JsonKey(name: "is_new_user") final  bool? isNewUser;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataCopyWith<_ProfileData> get copyWith => __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.city, city) || other.city == city)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&(identical(other.isOwner, isOwner) || other.isOwner == isOwner)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,phone,gender,age,cityFiasId,city,avatarUrl,isVerified,preferences,isOwner,isNewUser);

@override
String toString() {
  return 'ProfileData(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, gender: $gender, age: $age, cityFiasId: $cityFiasId, city: $city, avatarUrl: $avatarUrl, isVerified: $isVerified, preferences: $preferences, isOwner: $isOwner, isNewUser: $isNewUser)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataCopyWith<$Res> implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(_ProfileData value, $Res Function(_ProfileData) _then) = __$ProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "first_name") String? firstName,@JsonKey(name: "last_name") String? lastName,@JsonKey(name: "phone") String? phone,@JsonKey(name: "gender") String? gender,@JsonKey(name: "age") int? age,@JsonKey(name: "cityFiasId") String? cityFiasId,@JsonKey(name: "city") String? city,@JsonKey(name: "photo") String? avatarUrl,@JsonKey(name: "status") bool? isVerified,@JsonKey(name: "preferences") SelectedUserPreferencesData? preferences,@JsonKey(name: "is_owner") bool? isOwner,@JsonKey(name: "is_new_user") bool? isNewUser
});


@override $SelectedUserPreferencesDataCopyWith<$Res>? get preferences;

}
/// @nodoc
class __$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(this._self, this._then);

  final _ProfileData _self;
  final $Res Function(_ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? gender = freezed,Object? age = freezed,Object? cityFiasId = freezed,Object? city = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? preferences = freezed,Object? isOwner = freezed,Object? isNewUser = freezed,}) {
  return _then(_ProfileData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,preferences: freezed == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesData?,isOwner: freezed == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool?,isNewUser: freezed == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ProfileData
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
