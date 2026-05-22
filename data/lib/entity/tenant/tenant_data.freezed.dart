// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TenantData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'age') int get age;@JsonKey(name: 'gender') String get gender;@JsonKey(name: 'city') String get city;@JsonKey(name: 'photo') String get photo;@JsonKey(name: 'phone') String get phone;@JsonKey(name: 'is_verified') bool get isVerified;
/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantDataCopyWith<TenantData> get copyWith => _$TenantDataCopyWithImpl<TenantData>(this as TenantData, _$identity);

  /// Serializes this TenantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantData&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,age,gender,city,photo,phone,isVerified);

@override
String toString() {
  return 'TenantData(id: $id, firstName: $firstName, lastName: $lastName, age: $age, gender: $gender, city: $city, photo: $photo, phone: $phone, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $TenantDataCopyWith<$Res>  {
  factory $TenantDataCopyWith(TenantData value, $Res Function(TenantData) _then) = _$TenantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'age') int age,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'city') String city,@JsonKey(name: 'photo') String photo,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'is_verified') bool isVerified
});




}
/// @nodoc
class _$TenantDataCopyWithImpl<$Res>
    implements $TenantDataCopyWith<$Res> {
  _$TenantDataCopyWithImpl(this._self, this._then);

  final TenantData _self;
  final $Res Function(TenantData) _then;

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? gender = null,Object? city = null,Object? photo = null,Object? phone = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantData].
extension TenantDataPatterns on TenantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantData value)  $default,){
final _that = this;
switch (_that) {
case _TenantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantData value)?  $default,){
final _that = this;
switch (_that) {
case _TenantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'photo')  String photo, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'is_verified')  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantData() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.gender,_that.city,_that.photo,_that.phone,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'photo')  String photo, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'is_verified')  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _TenantData():
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.gender,_that.city,_that.photo,_that.phone,_that.isVerified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'age')  int age, @JsonKey(name: 'gender')  String gender, @JsonKey(name: 'city')  String city, @JsonKey(name: 'photo')  String photo, @JsonKey(name: 'phone')  String phone, @JsonKey(name: 'is_verified')  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _TenantData() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.age,_that.gender,_that.city,_that.photo,_that.phone,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantData implements TenantData {
  const _TenantData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'first_name') this.firstName = '', @JsonKey(name: 'last_name') this.lastName = '', @JsonKey(name: 'age') this.age = 0, @JsonKey(name: 'gender') this.gender = '', @JsonKey(name: 'city') this.city = '', @JsonKey(name: 'photo') this.photo = '', @JsonKey(name: 'phone') this.phone = '', @JsonKey(name: 'is_verified') this.isVerified = false});
  factory _TenantData.fromJson(Map<String, dynamic> json) => _$TenantDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'age') final  int age;
@override@JsonKey(name: 'gender') final  String gender;
@override@JsonKey(name: 'city') final  String city;
@override@JsonKey(name: 'photo') final  String photo;
@override@JsonKey(name: 'phone') final  String phone;
@override@JsonKey(name: 'is_verified') final  bool isVerified;

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantDataCopyWith<_TenantData> get copyWith => __$TenantDataCopyWithImpl<_TenantData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantData&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.city, city) || other.city == city)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,age,gender,city,photo,phone,isVerified);

@override
String toString() {
  return 'TenantData(id: $id, firstName: $firstName, lastName: $lastName, age: $age, gender: $gender, city: $city, photo: $photo, phone: $phone, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$TenantDataCopyWith<$Res> implements $TenantDataCopyWith<$Res> {
  factory _$TenantDataCopyWith(_TenantData value, $Res Function(_TenantData) _then) = __$TenantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'age') int age,@JsonKey(name: 'gender') String gender,@JsonKey(name: 'city') String city,@JsonKey(name: 'photo') String photo,@JsonKey(name: 'phone') String phone,@JsonKey(name: 'is_verified') bool isVerified
});




}
/// @nodoc
class __$TenantDataCopyWithImpl<$Res>
    implements _$TenantDataCopyWith<$Res> {
  __$TenantDataCopyWithImpl(this._self, this._then);

  final _TenantData _self;
  final $Res Function(_TenantData) _then;

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? age = null,Object? gender = null,Object? city = null,Object? photo = null,Object? phone = null,Object? isVerified = null,}) {
  return _then(_TenantData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
