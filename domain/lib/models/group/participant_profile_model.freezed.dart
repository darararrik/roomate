// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParticipantProfileModel {

 String get id; String get fullName; String get avatarUrl; bool get isVerified; int get age; String get gender; String get role; String get rating; int get reviewsCount; List<GroupPreferenceItemModel> get personalQualities; List<GroupPreferenceItemModel> get householdHabits; List<GroupPreferenceItemModel> get pets;
/// Create a copy of ParticipantProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantProfileModelCopyWith<ParticipantProfileModel> get copyWith => _$ParticipantProfileModelCopyWithImpl<ParticipantProfileModel>(this as ParticipantProfileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other.personalQualities, personalQualities)&&const DeepCollectionEquality().equals(other.householdHabits, householdHabits)&&const DeepCollectionEquality().equals(other.pets, pets));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,age,gender,role,rating,reviewsCount,const DeepCollectionEquality().hash(personalQualities),const DeepCollectionEquality().hash(householdHabits),const DeepCollectionEquality().hash(pets));

@override
String toString() {
  return 'ParticipantProfileModel(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, age: $age, gender: $gender, role: $role, rating: $rating, reviewsCount: $reviewsCount, personalQualities: $personalQualities, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class $ParticipantProfileModelCopyWith<$Res>  {
  factory $ParticipantProfileModelCopyWith(ParticipantProfileModel value, $Res Function(ParticipantProfileModel) _then) = _$ParticipantProfileModelCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String avatarUrl, bool isVerified, int age, String gender, String role, String rating, int reviewsCount, List<GroupPreferenceItemModel> personalQualities, List<GroupPreferenceItemModel> householdHabits, List<GroupPreferenceItemModel> pets
});




}
/// @nodoc
class _$ParticipantProfileModelCopyWithImpl<$Res>
    implements $ParticipantProfileModelCopyWith<$Res> {
  _$ParticipantProfileModelCopyWithImpl(this._self, this._then);

  final ParticipantProfileModel _self;
  final $Res Function(ParticipantProfileModel) _then;

/// Create a copy of ParticipantProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? avatarUrl = null,Object? isVerified = null,Object? age = null,Object? gender = null,Object? role = null,Object? rating = null,Object? reviewsCount = null,Object? personalQualities = null,Object? householdHabits = null,Object? pets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,personalQualities: null == personalQualities ? _self.personalQualities : personalQualities // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,householdHabits: null == householdHabits ? _self.householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,pets: null == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantProfileModel].
extension ParticipantProfileModelPatterns on ParticipantProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String avatarUrl,  bool isVerified,  int age,  String gender,  String role,  String rating,  int reviewsCount,  List<GroupPreferenceItemModel> personalQualities,  List<GroupPreferenceItemModel> householdHabits,  List<GroupPreferenceItemModel> pets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantProfileModel() when $default != null:
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.age,_that.gender,_that.role,_that.rating,_that.reviewsCount,_that.personalQualities,_that.householdHabits,_that.pets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String avatarUrl,  bool isVerified,  int age,  String gender,  String role,  String rating,  int reviewsCount,  List<GroupPreferenceItemModel> personalQualities,  List<GroupPreferenceItemModel> householdHabits,  List<GroupPreferenceItemModel> pets)  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileModel():
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.age,_that.gender,_that.role,_that.rating,_that.reviewsCount,_that.personalQualities,_that.householdHabits,_that.pets);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String avatarUrl,  bool isVerified,  int age,  String gender,  String role,  String rating,  int reviewsCount,  List<GroupPreferenceItemModel> personalQualities,  List<GroupPreferenceItemModel> householdHabits,  List<GroupPreferenceItemModel> pets)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileModel() when $default != null:
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.age,_that.gender,_that.role,_that.rating,_that.reviewsCount,_that.personalQualities,_that.householdHabits,_that.pets);case _:
  return null;

}
}

}

/// @nodoc


class _ParticipantProfileModel implements ParticipantProfileModel {
  const _ParticipantProfileModel({this.id = '', this.fullName = '', this.avatarUrl = '', this.isVerified = false, this.age = 0, this.gender = '', this.role = '', this.rating = '', this.reviewsCount = 0, final  List<GroupPreferenceItemModel> personalQualities = const [], final  List<GroupPreferenceItemModel> householdHabits = const [], final  List<GroupPreferenceItemModel> pets = const []}): _personalQualities = personalQualities,_householdHabits = householdHabits,_pets = pets;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String fullName;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  int age;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String role;
@override@JsonKey() final  String rating;
@override@JsonKey() final  int reviewsCount;
 final  List<GroupPreferenceItemModel> _personalQualities;
@override@JsonKey() List<GroupPreferenceItemModel> get personalQualities {
  if (_personalQualities is EqualUnmodifiableListView) return _personalQualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalQualities);
}

 final  List<GroupPreferenceItemModel> _householdHabits;
@override@JsonKey() List<GroupPreferenceItemModel> get householdHabits {
  if (_householdHabits is EqualUnmodifiableListView) return _householdHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_householdHabits);
}

 final  List<GroupPreferenceItemModel> _pets;
@override@JsonKey() List<GroupPreferenceItemModel> get pets {
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pets);
}


/// Create a copy of ParticipantProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantProfileModelCopyWith<_ParticipantProfileModel> get copyWith => __$ParticipantProfileModelCopyWithImpl<_ParticipantProfileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other._personalQualities, _personalQualities)&&const DeepCollectionEquality().equals(other._householdHabits, _householdHabits)&&const DeepCollectionEquality().equals(other._pets, _pets));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,age,gender,role,rating,reviewsCount,const DeepCollectionEquality().hash(_personalQualities),const DeepCollectionEquality().hash(_householdHabits),const DeepCollectionEquality().hash(_pets));

@override
String toString() {
  return 'ParticipantProfileModel(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, age: $age, gender: $gender, role: $role, rating: $rating, reviewsCount: $reviewsCount, personalQualities: $personalQualities, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class _$ParticipantProfileModelCopyWith<$Res> implements $ParticipantProfileModelCopyWith<$Res> {
  factory _$ParticipantProfileModelCopyWith(_ParticipantProfileModel value, $Res Function(_ParticipantProfileModel) _then) = __$ParticipantProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String avatarUrl, bool isVerified, int age, String gender, String role, String rating, int reviewsCount, List<GroupPreferenceItemModel> personalQualities, List<GroupPreferenceItemModel> householdHabits, List<GroupPreferenceItemModel> pets
});




}
/// @nodoc
class __$ParticipantProfileModelCopyWithImpl<$Res>
    implements _$ParticipantProfileModelCopyWith<$Res> {
  __$ParticipantProfileModelCopyWithImpl(this._self, this._then);

  final _ParticipantProfileModel _self;
  final $Res Function(_ParticipantProfileModel) _then;

/// Create a copy of ParticipantProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? avatarUrl = null,Object? isVerified = null,Object? age = null,Object? gender = null,Object? role = null,Object? rating = null,Object? reviewsCount = null,Object? personalQualities = null,Object? householdHabits = null,Object? pets = null,}) {
  return _then(_ParticipantProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,personalQualities: null == personalQualities ? _self._personalQualities : personalQualities // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,householdHabits: null == householdHabits ? _self._householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,pets: null == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,
  ));
}


}

// dart format on
