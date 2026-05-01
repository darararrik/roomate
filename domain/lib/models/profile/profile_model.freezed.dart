// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileModel {

 String get id; String get firstName; String get lastName; String get city; String get avatarUrl; GenderEnum get gender; String get phone; int get age; bool get isVerified; bool get isOwner; SelectedUserPreferencesModel get preferences;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.city, city) || other.city == city)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.age, age) || other.age == age)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isOwner, isOwner) || other.isOwner == isOwner)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,city,avatarUrl,gender,phone,age,isVerified,isOwner,preferences);

@override
String toString() {
  return 'ProfileModel(id: $id, firstName: $firstName, lastName: $lastName, city: $city, avatarUrl: $avatarUrl, gender: $gender, phone: $phone, age: $age, isVerified: $isVerified, isOwner: $isOwner, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String city, String avatarUrl, GenderEnum gender, String phone, int age, bool isVerified, bool isOwner, SelectedUserPreferencesModel preferences
});


$SelectedUserPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? city = null,Object? avatarUrl = null,Object? gender = null,Object? phone = null,Object? age = null,Object? isVerified = null,Object? isOwner = null,Object? preferences = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isOwner: null == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesModel,
  ));
}
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedUserPreferencesModelCopyWith<$Res> get preferences {
  
  return $SelectedUserPreferencesModelCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String city,  String avatarUrl,  GenderEnum gender,  String phone,  int age,  bool isVerified,  bool isOwner,  SelectedUserPreferencesModel preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.city,_that.avatarUrl,_that.gender,_that.phone,_that.age,_that.isVerified,_that.isOwner,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String city,  String avatarUrl,  GenderEnum gender,  String phone,  int age,  bool isVerified,  bool isOwner,  SelectedUserPreferencesModel preferences)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.city,_that.avatarUrl,_that.gender,_that.phone,_that.age,_that.isVerified,_that.isOwner,_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String city,  String avatarUrl,  GenderEnum gender,  String phone,  int age,  bool isVerified,  bool isOwner,  SelectedUserPreferencesModel preferences)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.city,_that.avatarUrl,_that.gender,_that.phone,_that.age,_that.isVerified,_that.isOwner,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileModel extends ProfileModel {
  const _ProfileModel({this.id = '', this.firstName = '', this.lastName = '', this.city = '', this.avatarUrl = Constants.defaultProfileImage, this.gender = GenderEnum.male, this.phone = '', this.age = 0, this.isVerified = false, this.isOwner = false, this.preferences = const SelectedUserPreferencesModel()}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String city;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  GenderEnum gender;
@override@JsonKey() final  String phone;
@override@JsonKey() final  int age;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  bool isOwner;
@override@JsonKey() final  SelectedUserPreferencesModel preferences;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.city, city) || other.city == city)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.age, age) || other.age == age)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isOwner, isOwner) || other.isOwner == isOwner)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,city,avatarUrl,gender,phone,age,isVerified,isOwner,preferences);

@override
String toString() {
  return 'ProfileModel(id: $id, firstName: $firstName, lastName: $lastName, city: $city, avatarUrl: $avatarUrl, gender: $gender, phone: $phone, age: $age, isVerified: $isVerified, isOwner: $isOwner, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String city, String avatarUrl, GenderEnum gender, String phone, int age, bool isVerified, bool isOwner, SelectedUserPreferencesModel preferences
});


@override $SelectedUserPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? city = null,Object? avatarUrl = null,Object? gender = null,Object? phone = null,Object? age = null,Object? isVerified = null,Object? isOwner = null,Object? preferences = null,}) {
  return _then(_ProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isOwner: null == isOwner ? _self.isOwner : isOwner // ignore: cast_nullable_to_non_nullable
as bool,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesModel,
  ));
}

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedUserPreferencesModelCopyWith<$Res> get preferences {
  
  return $SelectedUserPreferencesModelCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

// dart format on
