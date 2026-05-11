// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParticipantProfileData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'is_verified') bool? get isVerified;@JsonKey(name: 'age') int? get age;@JsonKey(name: 'gender') String? get gender;@JsonKey(name: 'role') String? get role;@JsonKey(name: 'rating') String? get rating;@JsonKey(name: 'reviews_count') int? get reviewsCount;@JsonKey(name: 'personal_qualities') List<GroupPreferenceItemData>? get personalQualities;@JsonKey(name: 'household_habits') List<GroupPreferenceItemData>? get householdHabits;@JsonKey(name: 'pets') List<GroupPreferenceItemData>? get pets;
/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantProfileDataCopyWith<ParticipantProfileData> get copyWith => _$ParticipantProfileDataCopyWithImpl<ParticipantProfileData>(this as ParticipantProfileData, _$identity);

  /// Serializes this ParticipantProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other.personalQualities, personalQualities)&&const DeepCollectionEquality().equals(other.householdHabits, householdHabits)&&const DeepCollectionEquality().equals(other.pets, pets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,age,gender,role,rating,reviewsCount,const DeepCollectionEquality().hash(personalQualities),const DeepCollectionEquality().hash(householdHabits),const DeepCollectionEquality().hash(pets));

@override
String toString() {
  return 'ParticipantProfileData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, age: $age, gender: $gender, role: $role, rating: $rating, reviewsCount: $reviewsCount, personalQualities: $personalQualities, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class $ParticipantProfileDataCopyWith<$Res>  {
  factory $ParticipantProfileDataCopyWith(ParticipantProfileData value, $Res Function(ParticipantProfileData) _then) = _$ParticipantProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'age') int? age,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'role') String? role,@JsonKey(name: 'rating') String? rating,@JsonKey(name: 'reviews_count') int? reviewsCount,@JsonKey(name: 'personal_qualities') List<GroupPreferenceItemData>? personalQualities,@JsonKey(name: 'household_habits') List<GroupPreferenceItemData>? householdHabits,@JsonKey(name: 'pets') List<GroupPreferenceItemData>? pets
});




}
/// @nodoc
class _$ParticipantProfileDataCopyWithImpl<$Res>
    implements $ParticipantProfileDataCopyWith<$Res> {
  _$ParticipantProfileDataCopyWithImpl(this._self, this._then);

  final ParticipantProfileData _self;
  final $Res Function(ParticipantProfileData) _then;

/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? age = freezed,Object? gender = freezed,Object? role = freezed,Object? rating = freezed,Object? reviewsCount = freezed,Object? personalQualities = freezed,Object? householdHabits = freezed,Object? pets = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,personalQualities: freezed == personalQualities ? _self.personalQualities : personalQualities // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,householdHabits: freezed == householdHabits ? _self.householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantProfileData].
extension ParticipantProfileDataPatterns on ParticipantProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantProfileData value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'rating')  String? rating, @JsonKey(name: 'reviews_count')  int? reviewsCount, @JsonKey(name: 'personal_qualities')  List<GroupPreferenceItemData>? personalQualities, @JsonKey(name: 'household_habits')  List<GroupPreferenceItemData>? householdHabits, @JsonKey(name: 'pets')  List<GroupPreferenceItemData>? pets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'rating')  String? rating, @JsonKey(name: 'reviews_count')  int? reviewsCount, @JsonKey(name: 'personal_qualities')  List<GroupPreferenceItemData>? personalQualities, @JsonKey(name: 'household_habits')  List<GroupPreferenceItemData>? householdHabits, @JsonKey(name: 'pets')  List<GroupPreferenceItemData>? pets)  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileData():
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.age,_that.gender,_that.role,_that.rating,_that.reviewsCount,_that.personalQualities,_that.householdHabits,_that.pets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'rating')  String? rating, @JsonKey(name: 'reviews_count')  int? reviewsCount, @JsonKey(name: 'personal_qualities')  List<GroupPreferenceItemData>? personalQualities, @JsonKey(name: 'household_habits')  List<GroupPreferenceItemData>? householdHabits, @JsonKey(name: 'pets')  List<GroupPreferenceItemData>? pets)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
return $default(_that.id,_that.fullName,_that.avatarUrl,_that.isVerified,_that.age,_that.gender,_that.role,_that.rating,_that.reviewsCount,_that.personalQualities,_that.householdHabits,_that.pets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantProfileData implements ParticipantProfileData {
  const _ParticipantProfileData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'is_verified') this.isVerified, @JsonKey(name: 'age') this.age, @JsonKey(name: 'gender') this.gender, @JsonKey(name: 'role') this.role, @JsonKey(name: 'rating') this.rating, @JsonKey(name: 'reviews_count') this.reviewsCount, @JsonKey(name: 'personal_qualities') final  List<GroupPreferenceItemData>? personalQualities, @JsonKey(name: 'household_habits') final  List<GroupPreferenceItemData>? householdHabits, @JsonKey(name: 'pets') final  List<GroupPreferenceItemData>? pets}): _personalQualities = personalQualities,_householdHabits = householdHabits,_pets = pets;
  factory _ParticipantProfileData.fromJson(Map<String, dynamic> json) => _$ParticipantProfileDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'is_verified') final  bool? isVerified;
@override@JsonKey(name: 'age') final  int? age;
@override@JsonKey(name: 'gender') final  String? gender;
@override@JsonKey(name: 'role') final  String? role;
@override@JsonKey(name: 'rating') final  String? rating;
@override@JsonKey(name: 'reviews_count') final  int? reviewsCount;
 final  List<GroupPreferenceItemData>? _personalQualities;
@override@JsonKey(name: 'personal_qualities') List<GroupPreferenceItemData>? get personalQualities {
  final value = _personalQualities;
  if (value == null) return null;
  if (_personalQualities is EqualUnmodifiableListView) return _personalQualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GroupPreferenceItemData>? _householdHabits;
@override@JsonKey(name: 'household_habits') List<GroupPreferenceItemData>? get householdHabits {
  final value = _householdHabits;
  if (value == null) return null;
  if (_householdHabits is EqualUnmodifiableListView) return _householdHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GroupPreferenceItemData>? _pets;
@override@JsonKey(name: 'pets') List<GroupPreferenceItemData>? get pets {
  final value = _pets;
  if (value == null) return null;
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantProfileDataCopyWith<_ParticipantProfileData> get copyWith => __$ParticipantProfileDataCopyWithImpl<_ParticipantProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other._personalQualities, _personalQualities)&&const DeepCollectionEquality().equals(other._householdHabits, _householdHabits)&&const DeepCollectionEquality().equals(other._pets, _pets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,avatarUrl,isVerified,age,gender,role,rating,reviewsCount,const DeepCollectionEquality().hash(_personalQualities),const DeepCollectionEquality().hash(_householdHabits),const DeepCollectionEquality().hash(_pets));

@override
String toString() {
  return 'ParticipantProfileData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, isVerified: $isVerified, age: $age, gender: $gender, role: $role, rating: $rating, reviewsCount: $reviewsCount, personalQualities: $personalQualities, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class _$ParticipantProfileDataCopyWith<$Res> implements $ParticipantProfileDataCopyWith<$Res> {
  factory _$ParticipantProfileDataCopyWith(_ParticipantProfileData value, $Res Function(_ParticipantProfileData) _then) = __$ParticipantProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'age') int? age,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'role') String? role,@JsonKey(name: 'rating') String? rating,@JsonKey(name: 'reviews_count') int? reviewsCount,@JsonKey(name: 'personal_qualities') List<GroupPreferenceItemData>? personalQualities,@JsonKey(name: 'household_habits') List<GroupPreferenceItemData>? householdHabits,@JsonKey(name: 'pets') List<GroupPreferenceItemData>? pets
});




}
/// @nodoc
class __$ParticipantProfileDataCopyWithImpl<$Res>
    implements _$ParticipantProfileDataCopyWith<$Res> {
  __$ParticipantProfileDataCopyWithImpl(this._self, this._then);

  final _ParticipantProfileData _self;
  final $Res Function(_ParticipantProfileData) _then;

/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,Object? age = freezed,Object? gender = freezed,Object? role = freezed,Object? rating = freezed,Object? reviewsCount = freezed,Object? personalQualities = freezed,Object? householdHabits = freezed,Object? pets = freezed,}) {
  return _then(_ParticipantProfileData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String?,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,personalQualities: freezed == personalQualities ? _self._personalQualities : personalQualities // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,householdHabits: freezed == householdHabits ? _self._householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,pets: freezed == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,
  ));
}


}

// dart format on
