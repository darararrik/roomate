// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {

 String get firstName; String get lastName; String get avatarUrl; GenderEnum? get gender; String get age; bool get isVerified; List<UserTagModel> get tags; String get firstNameError; String get lastNameError; String get ageError; String get genderError; bool get isFormValid;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.firstNameError, firstNameError) || other.firstNameError == firstNameError)&&(identical(other.lastNameError, lastNameError) || other.lastNameError == lastNameError)&&(identical(other.ageError, ageError) || other.ageError == ageError)&&(identical(other.genderError, genderError) || other.genderError == genderError)&&(identical(other.isFormValid, isFormValid) || other.isFormValid == isFormValid));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,avatarUrl,gender,age,isVerified,const DeepCollectionEquality().hash(tags),firstNameError,lastNameError,ageError,genderError,isFormValid);

@override
String toString() {
  return 'UserState(firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, gender: $gender, age: $age, isVerified: $isVerified, tags: $tags, firstNameError: $firstNameError, lastNameError: $lastNameError, ageError: $ageError, genderError: $genderError, isFormValid: $isFormValid)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String avatarUrl, GenderEnum? gender, String age, bool isVerified, List<UserTagModel> tags, String firstNameError, String lastNameError, String ageError, String genderError, bool isFormValid
});




}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? gender = freezed,Object? age = null,Object? isVerified = null,Object? tags = null,Object? firstNameError = null,Object? lastNameError = null,Object? ageError = null,Object? genderError = null,Object? isFormValid = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagModel>,firstNameError: null == firstNameError ? _self.firstNameError : firstNameError // ignore: cast_nullable_to_non_nullable
as String,lastNameError: null == lastNameError ? _self.lastNameError : lastNameError // ignore: cast_nullable_to_non_nullable
as String,ageError: null == ageError ? _self.ageError : ageError // ignore: cast_nullable_to_non_nullable
as String,genderError: null == genderError ? _self.genderError : genderError // ignore: cast_nullable_to_non_nullable
as String,isFormValid: null == isFormValid ? _self.isFormValid : isFormValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String avatarUrl,  GenderEnum? gender,  String age,  bool isVerified,  List<UserTagModel> tags,  String firstNameError,  String lastNameError,  String ageError,  String genderError,  bool isFormValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.firstName,_that.lastName,_that.avatarUrl,_that.gender,_that.age,_that.isVerified,_that.tags,_that.firstNameError,_that.lastNameError,_that.ageError,_that.genderError,_that.isFormValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String avatarUrl,  GenderEnum? gender,  String age,  bool isVerified,  List<UserTagModel> tags,  String firstNameError,  String lastNameError,  String ageError,  String genderError,  bool isFormValid)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.firstName,_that.lastName,_that.avatarUrl,_that.gender,_that.age,_that.isVerified,_that.tags,_that.firstNameError,_that.lastNameError,_that.ageError,_that.genderError,_that.isFormValid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String avatarUrl,  GenderEnum? gender,  String age,  bool isVerified,  List<UserTagModel> tags,  String firstNameError,  String lastNameError,  String ageError,  String genderError,  bool isFormValid)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.firstName,_that.lastName,_that.avatarUrl,_that.gender,_that.age,_that.isVerified,_that.tags,_that.firstNameError,_that.lastNameError,_that.ageError,_that.genderError,_that.isFormValid);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
   _UserState({this.firstName = '', this.lastName = '', this.avatarUrl = Constants.avatarNull, this.gender = null, this.age = '', this.isVerified = false, final  List<UserTagModel> tags = const [], this.firstNameError = '', this.lastNameError = '', this.ageError = '', this.genderError = '', this.isFormValid = false}): _tags = tags;
  

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  GenderEnum? gender;
@override@JsonKey() final  String age;
@override@JsonKey() final  bool isVerified;
 final  List<UserTagModel> _tags;
@override@JsonKey() List<UserTagModel> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  String firstNameError;
@override@JsonKey() final  String lastNameError;
@override@JsonKey() final  String ageError;
@override@JsonKey() final  String genderError;
@override@JsonKey() final  bool isFormValid;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.firstNameError, firstNameError) || other.firstNameError == firstNameError)&&(identical(other.lastNameError, lastNameError) || other.lastNameError == lastNameError)&&(identical(other.ageError, ageError) || other.ageError == ageError)&&(identical(other.genderError, genderError) || other.genderError == genderError)&&(identical(other.isFormValid, isFormValid) || other.isFormValid == isFormValid));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,avatarUrl,gender,age,isVerified,const DeepCollectionEquality().hash(_tags),firstNameError,lastNameError,ageError,genderError,isFormValid);

@override
String toString() {
  return 'UserState(firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, gender: $gender, age: $age, isVerified: $isVerified, tags: $tags, firstNameError: $firstNameError, lastNameError: $lastNameError, ageError: $ageError, genderError: $genderError, isFormValid: $isFormValid)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String avatarUrl, GenderEnum? gender, String age, bool isVerified, List<UserTagModel> tags, String firstNameError, String lastNameError, String ageError, String genderError, bool isFormValid
});




}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? gender = freezed,Object? age = null,Object? isVerified = null,Object? tags = null,Object? firstNameError = null,Object? lastNameError = null,Object? ageError = null,Object? genderError = null,Object? isFormValid = null,}) {
  return _then(_UserState(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagModel>,firstNameError: null == firstNameError ? _self.firstNameError : firstNameError // ignore: cast_nullable_to_non_nullable
as String,lastNameError: null == lastNameError ? _self.lastNameError : lastNameError // ignore: cast_nullable_to_non_nullable
as String,ageError: null == ageError ? _self.ageError : ageError // ignore: cast_nullable_to_non_nullable
as String,genderError: null == genderError ? _self.genderError : genderError // ignore: cast_nullable_to_non_nullable
as String,isFormValid: null == isFormValid ? _self.isFormValid : isFormValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
