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

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'role') String get role;@JsonKey(name: 'status') String get status;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'age') int get age;@JsonKey(name: 'gender') String get gender;@JsonKey(name: 'city') String get city;@JsonKey(name: 'city_fias_id') String get cityFiasId;@JsonKey(name: 'avatar_url') String get avatarUrl;@JsonKey(name: 'about') String get about;@JsonKey(name: 'rating') num get rating;@JsonKey(name: 'reviews_count') int get reviewsCount;@JsonKey(name: 'target_apartment') TargetApartmentData get targetApartment;@JsonKey(name: 'questionnaire') ParticipantQuestionnaireData get questionnaire;
/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantProfileDataCopyWith<ParticipantProfileData> get copyWith => _$ParticipantProfileDataCopyWithImpl<ParticipantProfileData>(this as ParticipantProfileData, _$identity);

  /// Serializes this ParticipantProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.targetApartment, targetApartment) || other.targetApartment == targetApartment)&&(identical(other.questionnaire, questionnaire) || other.questionnaire == questionnaire));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,role,status,firstName,lastName,fullName,age,gender,city,cityFiasId,avatarUrl,about,rating,reviewsCount,targetApartment,questionnaire);

@override
String toString() {
  return 'ParticipantProfileData(id: $id, userId: $userId, role: $role, status: $status, firstName: $firstName, lastName: $lastName, fullName: $fullName, age: $age, gender: $gender, city: $city, cityFiasId: $cityFiasId, avatarUrl: $avatarUrl, about: $about, rating: $rating, reviewsCount: $reviewsCount, targetApartment: $targetApartment, questionnaire: $questionnaire)';
}


}

/// @nodoc
abstract mixin class $ParticipantProfileDataCopyWith<$Res>  {
  factory $ParticipantProfileDataCopyWith(ParticipantProfileData value, $Res Function(ParticipantProfileData) _then) = _$ParticipantProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'role') String role,@JsonKey(name: 'status') String status,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'age') int age,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'city') String city,@JsonKey(name: 'city_fias_id') String cityFiasId,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'about') String about,@JsonKey(name: 'rating') num rating,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'target_apartment') TargetApartmentData targetApartment,@JsonKey(name: 'questionnaire') ParticipantQuestionnaireData questionnaire
});


$TargetApartmentDataCopyWith<$Res> get targetApartment;$ParticipantQuestionnaireDataCopyWith<$Res> get questionnaire;

}
/// @nodoc
class _$ParticipantProfileDataCopyWithImpl<$Res>
    implements $ParticipantProfileDataCopyWith<$Res> {
  _$ParticipantProfileDataCopyWithImpl(this._self, this._then);

  final ParticipantProfileData _self;
  final $Res Function(ParticipantProfileData) _then;

/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? role = null,Object? status = null,Object? firstName = null,Object? lastName = null,Object? fullName = null,Object? age = null,Object? gender = null,Object? city = null,Object? cityFiasId = null,Object? avatarUrl = null,Object? about = null,Object? rating = null,Object? reviewsCount = null,Object? targetApartment = null,Object? questionnaire = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,targetApartment: null == targetApartment ? _self.targetApartment : targetApartment // ignore: cast_nullable_to_non_nullable
as TargetApartmentData,questionnaire: null == questionnaire ? _self.questionnaire : questionnaire // ignore: cast_nullable_to_non_nullable
as ParticipantQuestionnaireData,
  ));
}
/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetApartmentDataCopyWith<$Res> get targetApartment {
  
  return $TargetApartmentDataCopyWith<$Res>(_self.targetApartment, (value) {
    return _then(_self.copyWith(targetApartment: value));
  });
}/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipantQuestionnaireDataCopyWith<$Res> get questionnaire {
  
  return $ParticipantQuestionnaireDataCopyWith<$Res>(_self.questionnaire, (value) {
    return _then(_self.copyWith(questionnaire: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'status')  String status, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'city_fias_id')  String cityFiasId, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'about')  String about, @JsonKey(name: 'rating')  num rating, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'target_apartment')  TargetApartmentData targetApartment, @JsonKey(name: 'questionnaire')  ParticipantQuestionnaireData questionnaire)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.city,_that.cityFiasId,_that.avatarUrl,_that.about,_that.rating,_that.reviewsCount,_that.targetApartment,_that.questionnaire);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'status')  String status, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'city_fias_id')  String cityFiasId, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'about')  String about, @JsonKey(name: 'rating')  num rating, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'target_apartment')  TargetApartmentData targetApartment, @JsonKey(name: 'questionnaire')  ParticipantQuestionnaireData questionnaire)  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileData():
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.city,_that.cityFiasId,_that.avatarUrl,_that.about,_that.rating,_that.reviewsCount,_that.targetApartment,_that.questionnaire);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'role')  String role, @JsonKey(name: 'status')  String status, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'city_fias_id')  String cityFiasId, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'about')  String about, @JsonKey(name: 'rating')  num rating, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'target_apartment')  TargetApartmentData targetApartment, @JsonKey(name: 'questionnaire')  ParticipantQuestionnaireData questionnaire)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantProfileData() when $default != null:
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.city,_that.cityFiasId,_that.avatarUrl,_that.about,_that.rating,_that.reviewsCount,_that.targetApartment,_that.questionnaire);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantProfileData implements ParticipantProfileData {
  const _ParticipantProfileData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'role') this.role = '', @JsonKey(name: 'status') this.status = '', @JsonKey(name: 'first_name') this.firstName = '', @JsonKey(name: 'last_name') this.lastName = '', @JsonKey(name: 'full_name') this.fullName = '', @JsonKey(name: 'age') this.age = 0, @JsonKey(name: 'gender') this.gender = '', @JsonKey(name: 'city') this.city = '', @JsonKey(name: 'city_fias_id') this.cityFiasId = '', @JsonKey(name: 'avatar_url') this.avatarUrl = '', @JsonKey(name: 'about') this.about = '', @JsonKey(name: 'rating') this.rating = 0, @JsonKey(name: 'reviews_count') this.reviewsCount = 0, @JsonKey(name: 'target_apartment') this.targetApartment = const TargetApartmentData(), @JsonKey(name: 'questionnaire') this.questionnaire = const ParticipantQuestionnaireData()});
  factory _ParticipantProfileData.fromJson(Map<String, dynamic> json) => _$ParticipantProfileDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'role') final  String role;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'age') final  int age;
@override@JsonKey(name: 'gender') final  String gender;
@override@JsonKey(name: 'city') final  String city;
@override@JsonKey(name: 'city_fias_id') final  String cityFiasId;
@override@JsonKey(name: 'avatar_url') final  String avatarUrl;
@override@JsonKey(name: 'about') final  String about;
@override@JsonKey(name: 'rating') final  num rating;
@override@JsonKey(name: 'reviews_count') final  int reviewsCount;
@override@JsonKey(name: 'target_apartment') final  TargetApartmentData targetApartment;
@override@JsonKey(name: 'questionnaire') final  ParticipantQuestionnaireData questionnaire;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.targetApartment, targetApartment) || other.targetApartment == targetApartment)&&(identical(other.questionnaire, questionnaire) || other.questionnaire == questionnaire));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,role,status,firstName,lastName,fullName,age,gender,city,cityFiasId,avatarUrl,about,rating,reviewsCount,targetApartment,questionnaire);

@override
String toString() {
  return 'ParticipantProfileData(id: $id, userId: $userId, role: $role, status: $status, firstName: $firstName, lastName: $lastName, fullName: $fullName, age: $age, gender: $gender, city: $city, cityFiasId: $cityFiasId, avatarUrl: $avatarUrl, about: $about, rating: $rating, reviewsCount: $reviewsCount, targetApartment: $targetApartment, questionnaire: $questionnaire)';
}


}

/// @nodoc
abstract mixin class _$ParticipantProfileDataCopyWith<$Res> implements $ParticipantProfileDataCopyWith<$Res> {
  factory _$ParticipantProfileDataCopyWith(_ParticipantProfileData value, $Res Function(_ParticipantProfileData) _then) = __$ParticipantProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'role') String role,@JsonKey(name: 'status') String status,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'age') int age,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'city') String city,@JsonKey(name: 'city_fias_id') String cityFiasId,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'about') String about,@JsonKey(name: 'rating') num rating,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'target_apartment') TargetApartmentData targetApartment,@JsonKey(name: 'questionnaire') ParticipantQuestionnaireData questionnaire
});


@override $TargetApartmentDataCopyWith<$Res> get targetApartment;@override $ParticipantQuestionnaireDataCopyWith<$Res> get questionnaire;

}
/// @nodoc
class __$ParticipantProfileDataCopyWithImpl<$Res>
    implements _$ParticipantProfileDataCopyWith<$Res> {
  __$ParticipantProfileDataCopyWithImpl(this._self, this._then);

  final _ParticipantProfileData _self;
  final $Res Function(_ParticipantProfileData) _then;

/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? role = null,Object? status = null,Object? firstName = null,Object? lastName = null,Object? fullName = null,Object? age = null,Object? gender = null,Object? city = null,Object? cityFiasId = null,Object? avatarUrl = null,Object? about = null,Object? rating = null,Object? reviewsCount = null,Object? targetApartment = null,Object? questionnaire = null,}) {
  return _then(_ParticipantProfileData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,cityFiasId: null == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,targetApartment: null == targetApartment ? _self.targetApartment : targetApartment // ignore: cast_nullable_to_non_nullable
as TargetApartmentData,questionnaire: null == questionnaire ? _self.questionnaire : questionnaire // ignore: cast_nullable_to_non_nullable
as ParticipantQuestionnaireData,
  ));
}

/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetApartmentDataCopyWith<$Res> get targetApartment {
  
  return $TargetApartmentDataCopyWith<$Res>(_self.targetApartment, (value) {
    return _then(_self.copyWith(targetApartment: value));
  });
}/// Create a copy of ParticipantProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipantQuestionnaireDataCopyWith<$Res> get questionnaire {
  
  return $ParticipantQuestionnaireDataCopyWith<$Res>(_self.questionnaire, (value) {
    return _then(_self.copyWith(questionnaire: value));
  });
}
}


/// @nodoc
mixin _$TargetApartmentData {

@JsonKey(name: 'title') String get title;@JsonKey(name: 'price') String get price;@JsonKey(name: 'rooms_count') String get roomsCount;@JsonKey(name: 'area') String get area;@JsonKey(name: 'floor') int get floor;@JsonKey(name: 'total_floor') int get totalFloor;@JsonKey(name: 'address') String get address;
/// Create a copy of TargetApartmentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetApartmentDataCopyWith<TargetApartmentData> get copyWith => _$TargetApartmentDataCopyWithImpl<TargetApartmentData>(this as TargetApartmentData, _$identity);

  /// Serializes this TargetApartmentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetApartmentData&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,price,roomsCount,area,floor,totalFloor,address);

@override
String toString() {
  return 'TargetApartmentData(title: $title, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address)';
}


}

/// @nodoc
abstract mixin class $TargetApartmentDataCopyWith<$Res>  {
  factory $TargetApartmentDataCopyWith(TargetApartmentData value, $Res Function(TargetApartmentData) _then) = _$TargetApartmentDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'price') String price,@JsonKey(name: 'rooms_count') String roomsCount,@JsonKey(name: 'area') String area,@JsonKey(name: 'floor') int floor,@JsonKey(name: 'total_floor') int totalFloor,@JsonKey(name: 'address') String address
});




}
/// @nodoc
class _$TargetApartmentDataCopyWithImpl<$Res>
    implements $TargetApartmentDataCopyWith<$Res> {
  _$TargetApartmentDataCopyWithImpl(this._self, this._then);

  final TargetApartmentData _self;
  final $Res Function(TargetApartmentData) _then;

/// Create a copy of TargetApartmentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetApartmentData].
extension TargetApartmentDataPatterns on TargetApartmentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetApartmentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetApartmentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetApartmentData value)  $default,){
final _that = this;
switch (_that) {
case _TargetApartmentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetApartmentData value)?  $default,){
final _that = this;
switch (_that) {
case _TargetApartmentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetApartmentData() when $default != null:
return $default(_that.title,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address)  $default,) {final _that = this;
switch (_that) {
case _TargetApartmentData():
return $default(_that.title,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'title')  String title, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address)?  $default,) {final _that = this;
switch (_that) {
case _TargetApartmentData() when $default != null:
return $default(_that.title,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TargetApartmentData implements TargetApartmentData {
  const _TargetApartmentData({@JsonKey(name: 'title') this.title = '', @JsonKey(name: 'price') this.price = '', @JsonKey(name: 'rooms_count') this.roomsCount = '', @JsonKey(name: 'area') this.area = '', @JsonKey(name: 'floor') this.floor = 0, @JsonKey(name: 'total_floor') this.totalFloor = 0, @JsonKey(name: 'address') this.address = ''});
  factory _TargetApartmentData.fromJson(Map<String, dynamic> json) => _$TargetApartmentDataFromJson(json);

@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'price') final  String price;
@override@JsonKey(name: 'rooms_count') final  String roomsCount;
@override@JsonKey(name: 'area') final  String area;
@override@JsonKey(name: 'floor') final  int floor;
@override@JsonKey(name: 'total_floor') final  int totalFloor;
@override@JsonKey(name: 'address') final  String address;

/// Create a copy of TargetApartmentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetApartmentDataCopyWith<_TargetApartmentData> get copyWith => __$TargetApartmentDataCopyWithImpl<_TargetApartmentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TargetApartmentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetApartmentData&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,price,roomsCount,area,floor,totalFloor,address);

@override
String toString() {
  return 'TargetApartmentData(title: $title, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address)';
}


}

/// @nodoc
abstract mixin class _$TargetApartmentDataCopyWith<$Res> implements $TargetApartmentDataCopyWith<$Res> {
  factory _$TargetApartmentDataCopyWith(_TargetApartmentData value, $Res Function(_TargetApartmentData) _then) = __$TargetApartmentDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String title,@JsonKey(name: 'price') String price,@JsonKey(name: 'rooms_count') String roomsCount,@JsonKey(name: 'area') String area,@JsonKey(name: 'floor') int floor,@JsonKey(name: 'total_floor') int totalFloor,@JsonKey(name: 'address') String address
});




}
/// @nodoc
class __$TargetApartmentDataCopyWithImpl<$Res>
    implements _$TargetApartmentDataCopyWith<$Res> {
  __$TargetApartmentDataCopyWithImpl(this._self, this._then);

  final _TargetApartmentData _self;
  final $Res Function(_TargetApartmentData) _then;

/// Create a copy of TargetApartmentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,}) {
  return _then(_TargetApartmentData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ParticipantQuestionnaireData {

@JsonKey(name: 'personal_traits') List<ParticipantQuestionnaireItemData> get personalTraits;@JsonKey(name: 'household_habits') List<ParticipantQuestionnaireItemData> get householdHabits;@JsonKey(name: 'pets') List<ParticipantQuestionnaireItemData> get pets;
/// Create a copy of ParticipantQuestionnaireData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantQuestionnaireDataCopyWith<ParticipantQuestionnaireData> get copyWith => _$ParticipantQuestionnaireDataCopyWithImpl<ParticipantQuestionnaireData>(this as ParticipantQuestionnaireData, _$identity);

  /// Serializes this ParticipantQuestionnaireData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantQuestionnaireData&&const DeepCollectionEquality().equals(other.personalTraits, personalTraits)&&const DeepCollectionEquality().equals(other.householdHabits, householdHabits)&&const DeepCollectionEquality().equals(other.pets, pets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(personalTraits),const DeepCollectionEquality().hash(householdHabits),const DeepCollectionEquality().hash(pets));

@override
String toString() {
  return 'ParticipantQuestionnaireData(personalTraits: $personalTraits, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class $ParticipantQuestionnaireDataCopyWith<$Res>  {
  factory $ParticipantQuestionnaireDataCopyWith(ParticipantQuestionnaireData value, $Res Function(ParticipantQuestionnaireData) _then) = _$ParticipantQuestionnaireDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'personal_traits') List<ParticipantQuestionnaireItemData> personalTraits,@JsonKey(name: 'household_habits') List<ParticipantQuestionnaireItemData> householdHabits,@JsonKey(name: 'pets') List<ParticipantQuestionnaireItemData> pets
});




}
/// @nodoc
class _$ParticipantQuestionnaireDataCopyWithImpl<$Res>
    implements $ParticipantQuestionnaireDataCopyWith<$Res> {
  _$ParticipantQuestionnaireDataCopyWithImpl(this._self, this._then);

  final ParticipantQuestionnaireData _self;
  final $Res Function(ParticipantQuestionnaireData) _then;

/// Create a copy of ParticipantQuestionnaireData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personalTraits = null,Object? householdHabits = null,Object? pets = null,}) {
  return _then(_self.copyWith(
personalTraits: null == personalTraits ? _self.personalTraits : personalTraits // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,householdHabits: null == householdHabits ? _self.householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,pets: null == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantQuestionnaireData].
extension ParticipantQuestionnaireDataPatterns on ParticipantQuestionnaireData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantQuestionnaireData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantQuestionnaireData value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantQuestionnaireData value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'personal_traits')  List<ParticipantQuestionnaireItemData> personalTraits, @JsonKey(name: 'household_habits')  List<ParticipantQuestionnaireItemData> householdHabits, @JsonKey(name: 'pets')  List<ParticipantQuestionnaireItemData> pets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData() when $default != null:
return $default(_that.personalTraits,_that.householdHabits,_that.pets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'personal_traits')  List<ParticipantQuestionnaireItemData> personalTraits, @JsonKey(name: 'household_habits')  List<ParticipantQuestionnaireItemData> householdHabits, @JsonKey(name: 'pets')  List<ParticipantQuestionnaireItemData> pets)  $default,) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData():
return $default(_that.personalTraits,_that.householdHabits,_that.pets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'personal_traits')  List<ParticipantQuestionnaireItemData> personalTraits, @JsonKey(name: 'household_habits')  List<ParticipantQuestionnaireItemData> householdHabits, @JsonKey(name: 'pets')  List<ParticipantQuestionnaireItemData> pets)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireData() when $default != null:
return $default(_that.personalTraits,_that.householdHabits,_that.pets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantQuestionnaireData implements ParticipantQuestionnaireData {
  const _ParticipantQuestionnaireData({@JsonKey(name: 'personal_traits') final  List<ParticipantQuestionnaireItemData> personalTraits = const [], @JsonKey(name: 'household_habits') final  List<ParticipantQuestionnaireItemData> householdHabits = const [], @JsonKey(name: 'pets') final  List<ParticipantQuestionnaireItemData> pets = const []}): _personalTraits = personalTraits,_householdHabits = householdHabits,_pets = pets;
  factory _ParticipantQuestionnaireData.fromJson(Map<String, dynamic> json) => _$ParticipantQuestionnaireDataFromJson(json);

 final  List<ParticipantQuestionnaireItemData> _personalTraits;
@override@JsonKey(name: 'personal_traits') List<ParticipantQuestionnaireItemData> get personalTraits {
  if (_personalTraits is EqualUnmodifiableListView) return _personalTraits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalTraits);
}

 final  List<ParticipantQuestionnaireItemData> _householdHabits;
@override@JsonKey(name: 'household_habits') List<ParticipantQuestionnaireItemData> get householdHabits {
  if (_householdHabits is EqualUnmodifiableListView) return _householdHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_householdHabits);
}

 final  List<ParticipantQuestionnaireItemData> _pets;
@override@JsonKey(name: 'pets') List<ParticipantQuestionnaireItemData> get pets {
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pets);
}


/// Create a copy of ParticipantQuestionnaireData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantQuestionnaireDataCopyWith<_ParticipantQuestionnaireData> get copyWith => __$ParticipantQuestionnaireDataCopyWithImpl<_ParticipantQuestionnaireData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantQuestionnaireDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantQuestionnaireData&&const DeepCollectionEquality().equals(other._personalTraits, _personalTraits)&&const DeepCollectionEquality().equals(other._householdHabits, _householdHabits)&&const DeepCollectionEquality().equals(other._pets, _pets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_personalTraits),const DeepCollectionEquality().hash(_householdHabits),const DeepCollectionEquality().hash(_pets));

@override
String toString() {
  return 'ParticipantQuestionnaireData(personalTraits: $personalTraits, householdHabits: $householdHabits, pets: $pets)';
}


}

/// @nodoc
abstract mixin class _$ParticipantQuestionnaireDataCopyWith<$Res> implements $ParticipantQuestionnaireDataCopyWith<$Res> {
  factory _$ParticipantQuestionnaireDataCopyWith(_ParticipantQuestionnaireData value, $Res Function(_ParticipantQuestionnaireData) _then) = __$ParticipantQuestionnaireDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'personal_traits') List<ParticipantQuestionnaireItemData> personalTraits,@JsonKey(name: 'household_habits') List<ParticipantQuestionnaireItemData> householdHabits,@JsonKey(name: 'pets') List<ParticipantQuestionnaireItemData> pets
});




}
/// @nodoc
class __$ParticipantQuestionnaireDataCopyWithImpl<$Res>
    implements _$ParticipantQuestionnaireDataCopyWith<$Res> {
  __$ParticipantQuestionnaireDataCopyWithImpl(this._self, this._then);

  final _ParticipantQuestionnaireData _self;
  final $Res Function(_ParticipantQuestionnaireData) _then;

/// Create a copy of ParticipantQuestionnaireData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personalTraits = null,Object? householdHabits = null,Object? pets = null,}) {
  return _then(_ParticipantQuestionnaireData(
personalTraits: null == personalTraits ? _self._personalTraits : personalTraits // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,householdHabits: null == householdHabits ? _self._householdHabits : householdHabits // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,pets: null == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<ParticipantQuestionnaireItemData>,
  ));
}


}


/// @nodoc
mixin _$ParticipantQuestionnaireItemData {

@JsonKey(name: 'key') String get key;@JsonKey(name: 'title') String get title;@JsonKey(name: 'values') List<OptionData> get values;
/// Create a copy of ParticipantQuestionnaireItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantQuestionnaireItemDataCopyWith<ParticipantQuestionnaireItemData> get copyWith => _$ParticipantQuestionnaireItemDataCopyWithImpl<ParticipantQuestionnaireItemData>(this as ParticipantQuestionnaireItemData, _$identity);

  /// Serializes this ParticipantQuestionnaireItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantQuestionnaireItemData&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'ParticipantQuestionnaireItemData(key: $key, title: $title, values: $values)';
}


}

/// @nodoc
abstract mixin class $ParticipantQuestionnaireItemDataCopyWith<$Res>  {
  factory $ParticipantQuestionnaireItemDataCopyWith(ParticipantQuestionnaireItemData value, $Res Function(ParticipantQuestionnaireItemData) _then) = _$ParticipantQuestionnaireItemDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'title') String title,@JsonKey(name: 'values') List<OptionData> values
});




}
/// @nodoc
class _$ParticipantQuestionnaireItemDataCopyWithImpl<$Res>
    implements $ParticipantQuestionnaireItemDataCopyWith<$Res> {
  _$ParticipantQuestionnaireItemDataCopyWithImpl(this._self, this._then);

  final ParticipantQuestionnaireItemData _self;
  final $Res Function(ParticipantQuestionnaireItemData) _then;

/// Create a copy of ParticipantQuestionnaireItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? values = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<OptionData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantQuestionnaireItemData].
extension ParticipantQuestionnaireItemDataPatterns on ParticipantQuestionnaireItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantQuestionnaireItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantQuestionnaireItemData value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantQuestionnaireItemData value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'values')  List<OptionData> values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData() when $default != null:
return $default(_that.key,_that.title,_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'values')  List<OptionData> values)  $default,) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData():
return $default(_that.key,_that.title,_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'values')  List<OptionData> values)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantQuestionnaireItemData() when $default != null:
return $default(_that.key,_that.title,_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantQuestionnaireItemData implements ParticipantQuestionnaireItemData {
  const _ParticipantQuestionnaireItemData({@JsonKey(name: 'key') this.key = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'values') final  List<OptionData> values = const []}): _values = values;
  factory _ParticipantQuestionnaireItemData.fromJson(Map<String, dynamic> json) => _$ParticipantQuestionnaireItemDataFromJson(json);

@override@JsonKey(name: 'key') final  String key;
@override@JsonKey(name: 'title') final  String title;
 final  List<OptionData> _values;
@override@JsonKey(name: 'values') List<OptionData> get values {
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_values);
}


/// Create a copy of ParticipantQuestionnaireItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantQuestionnaireItemDataCopyWith<_ParticipantQuestionnaireItemData> get copyWith => __$ParticipantQuestionnaireItemDataCopyWithImpl<_ParticipantQuestionnaireItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantQuestionnaireItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantQuestionnaireItemData&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'ParticipantQuestionnaireItemData(key: $key, title: $title, values: $values)';
}


}

/// @nodoc
abstract mixin class _$ParticipantQuestionnaireItemDataCopyWith<$Res> implements $ParticipantQuestionnaireItemDataCopyWith<$Res> {
  factory _$ParticipantQuestionnaireItemDataCopyWith(_ParticipantQuestionnaireItemData value, $Res Function(_ParticipantQuestionnaireItemData) _then) = __$ParticipantQuestionnaireItemDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'title') String title,@JsonKey(name: 'values') List<OptionData> values
});




}
/// @nodoc
class __$ParticipantQuestionnaireItemDataCopyWithImpl<$Res>
    implements _$ParticipantQuestionnaireItemDataCopyWith<$Res> {
  __$ParticipantQuestionnaireItemDataCopyWithImpl(this._self, this._then);

  final _ParticipantQuestionnaireItemData _self;
  final $Res Function(_ParticipantQuestionnaireItemData) _then;

/// Create a copy of ParticipantQuestionnaireItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? values = null,}) {
  return _then(_ParticipantQuestionnaireItemData(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<OptionData>,
  ));
}


}

// dart format on
