// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEditState {

 String get initialFirstName; String get initialLastName; GenderEnum get initialGender; String get firstName; String get lastName; int get age; GenderEnum get gender; String get firstNameError; String get lastNameError; bool get isSaving;
/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEditStateCopyWith<ProfileEditState> get copyWith => _$ProfileEditStateCopyWithImpl<ProfileEditState>(this as ProfileEditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEditState&&(identical(other.initialFirstName, initialFirstName) || other.initialFirstName == initialFirstName)&&(identical(other.initialLastName, initialLastName) || other.initialLastName == initialLastName)&&(identical(other.initialGender, initialGender) || other.initialGender == initialGender)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.firstNameError, firstNameError) || other.firstNameError == firstNameError)&&(identical(other.lastNameError, lastNameError) || other.lastNameError == lastNameError)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,initialFirstName,initialLastName,initialGender,firstName,lastName,age,gender,firstNameError,lastNameError,isSaving);

@override
String toString() {
  return 'ProfileEditState(initialFirstName: $initialFirstName, initialLastName: $initialLastName, initialGender: $initialGender, firstName: $firstName, lastName: $lastName, age: $age, gender: $gender, firstNameError: $firstNameError, lastNameError: $lastNameError, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $ProfileEditStateCopyWith<$Res>  {
  factory $ProfileEditStateCopyWith(ProfileEditState value, $Res Function(ProfileEditState) _then) = _$ProfileEditStateCopyWithImpl;
@useResult
$Res call({
 String initialFirstName, String initialLastName, GenderEnum initialGender, String firstName, String lastName, int age, GenderEnum gender, String firstNameError, String lastNameError, bool isSaving
});




}
/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._self, this._then);

  final ProfileEditState _self;
  final $Res Function(ProfileEditState) _then;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialFirstName = null,Object? initialLastName = null,Object? initialGender = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? gender = null,Object? firstNameError = null,Object? lastNameError = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
initialFirstName: null == initialFirstName ? _self.initialFirstName : initialFirstName // ignore: cast_nullable_to_non_nullable
as String,initialLastName: null == initialLastName ? _self.initialLastName : initialLastName // ignore: cast_nullable_to_non_nullable
as String,initialGender: null == initialGender ? _self.initialGender : initialGender // ignore: cast_nullable_to_non_nullable
as GenderEnum,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum,firstNameError: null == firstNameError ? _self.firstNameError : firstNameError // ignore: cast_nullable_to_non_nullable
as String,lastNameError: null == lastNameError ? _self.lastNameError : lastNameError // ignore: cast_nullable_to_non_nullable
as String,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileEditState].
extension ProfileEditStatePatterns on ProfileEditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEditState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEditState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEditState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String initialFirstName,  String initialLastName,  GenderEnum initialGender,  String firstName,  String lastName,  int age,  GenderEnum gender,  String firstNameError,  String lastNameError,  bool isSaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
return $default(_that.initialFirstName,_that.initialLastName,_that.initialGender,_that.firstName,_that.lastName,_that.age,_that.gender,_that.firstNameError,_that.lastNameError,_that.isSaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String initialFirstName,  String initialLastName,  GenderEnum initialGender,  String firstName,  String lastName,  int age,  GenderEnum gender,  String firstNameError,  String lastNameError,  bool isSaving)  $default,) {final _that = this;
switch (_that) {
case _ProfileEditState():
return $default(_that.initialFirstName,_that.initialLastName,_that.initialGender,_that.firstName,_that.lastName,_that.age,_that.gender,_that.firstNameError,_that.lastNameError,_that.isSaving);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String initialFirstName,  String initialLastName,  GenderEnum initialGender,  String firstName,  String lastName,  int age,  GenderEnum gender,  String firstNameError,  String lastNameError,  bool isSaving)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEditState() when $default != null:
return $default(_that.initialFirstName,_that.initialLastName,_that.initialGender,_that.firstName,_that.lastName,_that.age,_that.gender,_that.firstNameError,_that.lastNameError,_that.isSaving);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileEditState extends ProfileEditState {
  const _ProfileEditState({required this.initialFirstName, required this.initialLastName, required this.initialGender, required this.firstName, required this.lastName, required this.age, required this.gender, this.firstNameError = '', this.lastNameError = '', this.isSaving = false}): super._();
  

@override final  String initialFirstName;
@override final  String initialLastName;
@override final  GenderEnum initialGender;
@override final  String firstName;
@override final  String lastName;
@override final  int age;
@override final  GenderEnum gender;
@override@JsonKey() final  String firstNameError;
@override@JsonKey() final  String lastNameError;
@override@JsonKey() final  bool isSaving;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEditStateCopyWith<_ProfileEditState> get copyWith => __$ProfileEditStateCopyWithImpl<_ProfileEditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEditState&&(identical(other.initialFirstName, initialFirstName) || other.initialFirstName == initialFirstName)&&(identical(other.initialLastName, initialLastName) || other.initialLastName == initialLastName)&&(identical(other.initialGender, initialGender) || other.initialGender == initialGender)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.firstNameError, firstNameError) || other.firstNameError == firstNameError)&&(identical(other.lastNameError, lastNameError) || other.lastNameError == lastNameError)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,initialFirstName,initialLastName,initialGender,firstName,lastName,age,gender,firstNameError,lastNameError,isSaving);

@override
String toString() {
  return 'ProfileEditState(initialFirstName: $initialFirstName, initialLastName: $initialLastName, initialGender: $initialGender, firstName: $firstName, lastName: $lastName, age: $age, gender: $gender, firstNameError: $firstNameError, lastNameError: $lastNameError, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$ProfileEditStateCopyWith<$Res> implements $ProfileEditStateCopyWith<$Res> {
  factory _$ProfileEditStateCopyWith(_ProfileEditState value, $Res Function(_ProfileEditState) _then) = __$ProfileEditStateCopyWithImpl;
@override @useResult
$Res call({
 String initialFirstName, String initialLastName, GenderEnum initialGender, String firstName, String lastName, int age, GenderEnum gender, String firstNameError, String lastNameError, bool isSaving
});




}
/// @nodoc
class __$ProfileEditStateCopyWithImpl<$Res>
    implements _$ProfileEditStateCopyWith<$Res> {
  __$ProfileEditStateCopyWithImpl(this._self, this._then);

  final _ProfileEditState _self;
  final $Res Function(_ProfileEditState) _then;

/// Create a copy of ProfileEditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? initialFirstName = null,Object? initialLastName = null,Object? initialGender = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? gender = null,Object? firstNameError = null,Object? lastNameError = null,Object? isSaving = null,}) {
  return _then(_ProfileEditState(
initialFirstName: null == initialFirstName ? _self.initialFirstName : initialFirstName // ignore: cast_nullable_to_non_nullable
as String,initialLastName: null == initialLastName ? _self.initialLastName : initialLastName // ignore: cast_nullable_to_non_nullable
as String,initialGender: null == initialGender ? _self.initialGender : initialGender // ignore: cast_nullable_to_non_nullable
as GenderEnum,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum,firstNameError: null == firstNameError ? _self.firstNameError : firstNameError // ignore: cast_nullable_to_non_nullable
as String,lastNameError: null == lastNameError ? _self.lastNameError : lastNameError // ignore: cast_nullable_to_non_nullable
as String,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
