// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TenantModel {

 String get id; String get firstName; String get lastName; String get avatarUrl; String get phone; int get age; String get gender; String get city; bool get isVerified; String get rating; int get reviewsCount;
/// Create a copy of TenantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantModelCopyWith<TenantModel> get copyWith => _$TenantModelCopyWithImpl<TenantModel>(this as TenantModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,avatarUrl,phone,age,gender,city,isVerified,rating,reviewsCount);

@override
String toString() {
  return 'TenantModel(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, phone: $phone, age: $age, gender: $gender, city: $city, isVerified: $isVerified, rating: $rating, reviewsCount: $reviewsCount)';
}


}

/// @nodoc
abstract mixin class $TenantModelCopyWith<$Res>  {
  factory $TenantModelCopyWith(TenantModel value, $Res Function(TenantModel) _then) = _$TenantModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String avatarUrl, String phone, int age, String gender, String city, bool isVerified, String rating, int reviewsCount
});




}
/// @nodoc
class _$TenantModelCopyWithImpl<$Res>
    implements $TenantModelCopyWith<$Res> {
  _$TenantModelCopyWithImpl(this._self, this._then);

  final TenantModel _self;
  final $Res Function(TenantModel) _then;

/// Create a copy of TenantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? phone = null,Object? age = null,Object? gender = null,Object? city = null,Object? isVerified = null,Object? rating = null,Object? reviewsCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantModel].
extension TenantModelPatterns on TenantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantModel value)  $default,){
final _that = this;
switch (_that) {
case _TenantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantModel value)?  $default,){
final _that = this;
switch (_that) {
case _TenantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String avatarUrl,  String phone,  int age,  String gender,  String city,  bool isVerified,  String rating,  int reviewsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.age,_that.gender,_that.city,_that.isVerified,_that.rating,_that.reviewsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String avatarUrl,  String phone,  int age,  String gender,  String city,  bool isVerified,  String rating,  int reviewsCount)  $default,) {final _that = this;
switch (_that) {
case _TenantModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.age,_that.gender,_that.city,_that.isVerified,_that.rating,_that.reviewsCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String avatarUrl,  String phone,  int age,  String gender,  String city,  bool isVerified,  String rating,  int reviewsCount)?  $default,) {final _that = this;
switch (_that) {
case _TenantModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.age,_that.gender,_that.city,_that.isVerified,_that.rating,_that.reviewsCount);case _:
  return null;

}
}

}

/// @nodoc


class _TenantModel extends TenantModel {
  const _TenantModel({this.id = '', this.firstName = '', this.lastName = '', this.avatarUrl = '', this.phone = '', this.age = 0, this.gender = '', this.city = '', this.isVerified = false, this.rating = '0.0', this.reviewsCount = 0}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  String phone;
@override@JsonKey() final  int age;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String city;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  String rating;
@override@JsonKey() final  int reviewsCount;

/// Create a copy of TenantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantModelCopyWith<_TenantModel> get copyWith => __$TenantModelCopyWithImpl<_TenantModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,avatarUrl,phone,age,gender,city,isVerified,rating,reviewsCount);

@override
String toString() {
  return 'TenantModel(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, phone: $phone, age: $age, gender: $gender, city: $city, isVerified: $isVerified, rating: $rating, reviewsCount: $reviewsCount)';
}


}

/// @nodoc
abstract mixin class _$TenantModelCopyWith<$Res> implements $TenantModelCopyWith<$Res> {
  factory _$TenantModelCopyWith(_TenantModel value, $Res Function(_TenantModel) _then) = __$TenantModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String avatarUrl, String phone, int age, String gender, String city, bool isVerified, String rating, int reviewsCount
});




}
/// @nodoc
class __$TenantModelCopyWithImpl<$Res>
    implements _$TenantModelCopyWith<$Res> {
  __$TenantModelCopyWithImpl(this._self, this._then);

  final _TenantModel _self;
  final $Res Function(_TenantModel) _then;

/// Create a copy of TenantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? phone = null,Object? age = null,Object? gender = null,Object? city = null,Object? isVerified = null,Object? rating = null,Object? reviewsCount = null,}) {
  return _then(_TenantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TenantProfileModel {

 String get about; SelectedUserPreferencesModel get preferences;
/// Create a copy of TenantProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantProfileModelCopyWith<TenantProfileModel> get copyWith => _$TenantProfileModelCopyWithImpl<TenantProfileModel>(this as TenantProfileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantProfileModel&&(identical(other.about, about) || other.about == about)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,about,preferences);

@override
String toString() {
  return 'TenantProfileModel(about: $about, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $TenantProfileModelCopyWith<$Res>  {
  factory $TenantProfileModelCopyWith(TenantProfileModel value, $Res Function(TenantProfileModel) _then) = _$TenantProfileModelCopyWithImpl;
@useResult
$Res call({
 String about, SelectedUserPreferencesModel preferences
});


$SelectedUserPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class _$TenantProfileModelCopyWithImpl<$Res>
    implements $TenantProfileModelCopyWith<$Res> {
  _$TenantProfileModelCopyWithImpl(this._self, this._then);

  final TenantProfileModel _self;
  final $Res Function(TenantProfileModel) _then;

/// Create a copy of TenantProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? about = null,Object? preferences = null,}) {
  return _then(_self.copyWith(
about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesModel,
  ));
}
/// Create a copy of TenantProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectedUserPreferencesModelCopyWith<$Res> get preferences {
  
  return $SelectedUserPreferencesModelCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantProfileModel].
extension TenantProfileModelPatterns on TenantProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _TenantProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _TenantProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String about,  SelectedUserPreferencesModel preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantProfileModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String about,  SelectedUserPreferencesModel preferences)  $default,) {final _that = this;
switch (_that) {
case _TenantProfileModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String about,  SelectedUserPreferencesModel preferences)?  $default,) {final _that = this;
switch (_that) {
case _TenantProfileModel() when $default != null:
return $default(_that.about,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc


class _TenantProfileModel implements TenantProfileModel {
  const _TenantProfileModel({this.about = '', this.preferences = const SelectedUserPreferencesModel()});
  

@override@JsonKey() final  String about;
@override@JsonKey() final  SelectedUserPreferencesModel preferences;

/// Create a copy of TenantProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantProfileModelCopyWith<_TenantProfileModel> get copyWith => __$TenantProfileModelCopyWithImpl<_TenantProfileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantProfileModel&&(identical(other.about, about) || other.about == about)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,about,preferences);

@override
String toString() {
  return 'TenantProfileModel(about: $about, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$TenantProfileModelCopyWith<$Res> implements $TenantProfileModelCopyWith<$Res> {
  factory _$TenantProfileModelCopyWith(_TenantProfileModel value, $Res Function(_TenantProfileModel) _then) = __$TenantProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String about, SelectedUserPreferencesModel preferences
});


@override $SelectedUserPreferencesModelCopyWith<$Res> get preferences;

}
/// @nodoc
class __$TenantProfileModelCopyWithImpl<$Res>
    implements _$TenantProfileModelCopyWith<$Res> {
  __$TenantProfileModelCopyWithImpl(this._self, this._then);

  final _TenantProfileModel _self;
  final $Res Function(_TenantProfileModel) _then;

/// Create a copy of TenantProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? about = null,Object? preferences = null,}) {
  return _then(_TenantProfileModel(
about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as SelectedUserPreferencesModel,
  ));
}

/// Create a copy of TenantProfileModel
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
