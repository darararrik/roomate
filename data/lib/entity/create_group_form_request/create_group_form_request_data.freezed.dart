// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_form_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGroupFormRequestData {

 CreateGroupGroupRequestData get group; CreateGroupApartmentRequestData get apartment; CreateGroupPreferencesRequestData get preferences;
/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupFormRequestDataCopyWith<CreateGroupFormRequestData> get copyWith => _$CreateGroupFormRequestDataCopyWithImpl<CreateGroupFormRequestData>(this as CreateGroupFormRequestData, _$identity);

  /// Serializes this CreateGroupFormRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupFormRequestData&&(identical(other.group, group) || other.group == group)&&(identical(other.apartment, apartment) || other.apartment == apartment)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,group,apartment,preferences);

@override
String toString() {
  return 'CreateGroupFormRequestData(group: $group, apartment: $apartment, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $CreateGroupFormRequestDataCopyWith<$Res>  {
  factory $CreateGroupFormRequestDataCopyWith(CreateGroupFormRequestData value, $Res Function(CreateGroupFormRequestData) _then) = _$CreateGroupFormRequestDataCopyWithImpl;
@useResult
$Res call({
 CreateGroupGroupRequestData group, CreateGroupApartmentRequestData apartment, CreateGroupPreferencesRequestData preferences
});


$CreateGroupGroupRequestDataCopyWith<$Res> get group;$CreateGroupApartmentRequestDataCopyWith<$Res> get apartment;$CreateGroupPreferencesRequestDataCopyWith<$Res> get preferences;

}
/// @nodoc
class _$CreateGroupFormRequestDataCopyWithImpl<$Res>
    implements $CreateGroupFormRequestDataCopyWith<$Res> {
  _$CreateGroupFormRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupFormRequestData _self;
  final $Res Function(CreateGroupFormRequestData) _then;

/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? group = null,Object? apartment = null,Object? preferences = null,}) {
  return _then(_self.copyWith(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as CreateGroupGroupRequestData,apartment: null == apartment ? _self.apartment : apartment // ignore: cast_nullable_to_non_nullable
as CreateGroupApartmentRequestData,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CreateGroupPreferencesRequestData,
  ));
}
/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupGroupRequestDataCopyWith<$Res> get group {
  
  return $CreateGroupGroupRequestDataCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupApartmentRequestDataCopyWith<$Res> get apartment {
  
  return $CreateGroupApartmentRequestDataCopyWith<$Res>(_self.apartment, (value) {
    return _then(_self.copyWith(apartment: value));
  });
}/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupPreferencesRequestDataCopyWith<$Res> get preferences {
  
  return $CreateGroupPreferencesRequestDataCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateGroupFormRequestData].
extension CreateGroupFormRequestDataPatterns on CreateGroupFormRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupFormRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupFormRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupFormRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupFormRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupFormRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupFormRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateGroupGroupRequestData group,  CreateGroupApartmentRequestData apartment,  CreateGroupPreferencesRequestData preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupFormRequestData() when $default != null:
return $default(_that.group,_that.apartment,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateGroupGroupRequestData group,  CreateGroupApartmentRequestData apartment,  CreateGroupPreferencesRequestData preferences)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupFormRequestData():
return $default(_that.group,_that.apartment,_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateGroupGroupRequestData group,  CreateGroupApartmentRequestData apartment,  CreateGroupPreferencesRequestData preferences)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupFormRequestData() when $default != null:
return $default(_that.group,_that.apartment,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _CreateGroupFormRequestData implements CreateGroupFormRequestData {
  const _CreateGroupFormRequestData({required this.group, required this.apartment, required this.preferences});
  factory _CreateGroupFormRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupFormRequestDataFromJson(json);

@override final  CreateGroupGroupRequestData group;
@override final  CreateGroupApartmentRequestData apartment;
@override final  CreateGroupPreferencesRequestData preferences;

/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupFormRequestDataCopyWith<_CreateGroupFormRequestData> get copyWith => __$CreateGroupFormRequestDataCopyWithImpl<_CreateGroupFormRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupFormRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupFormRequestData&&(identical(other.group, group) || other.group == group)&&(identical(other.apartment, apartment) || other.apartment == apartment)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,group,apartment,preferences);

@override
String toString() {
  return 'CreateGroupFormRequestData(group: $group, apartment: $apartment, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupFormRequestDataCopyWith<$Res> implements $CreateGroupFormRequestDataCopyWith<$Res> {
  factory _$CreateGroupFormRequestDataCopyWith(_CreateGroupFormRequestData value, $Res Function(_CreateGroupFormRequestData) _then) = __$CreateGroupFormRequestDataCopyWithImpl;
@override @useResult
$Res call({
 CreateGroupGroupRequestData group, CreateGroupApartmentRequestData apartment, CreateGroupPreferencesRequestData preferences
});


@override $CreateGroupGroupRequestDataCopyWith<$Res> get group;@override $CreateGroupApartmentRequestDataCopyWith<$Res> get apartment;@override $CreateGroupPreferencesRequestDataCopyWith<$Res> get preferences;

}
/// @nodoc
class __$CreateGroupFormRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupFormRequestDataCopyWith<$Res> {
  __$CreateGroupFormRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupFormRequestData _self;
  final $Res Function(_CreateGroupFormRequestData) _then;

/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? group = null,Object? apartment = null,Object? preferences = null,}) {
  return _then(_CreateGroupFormRequestData(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as CreateGroupGroupRequestData,apartment: null == apartment ? _self.apartment : apartment // ignore: cast_nullable_to_non_nullable
as CreateGroupApartmentRequestData,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CreateGroupPreferencesRequestData,
  ));
}

/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupGroupRequestDataCopyWith<$Res> get group {
  
  return $CreateGroupGroupRequestDataCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupApartmentRequestDataCopyWith<$Res> get apartment {
  
  return $CreateGroupApartmentRequestDataCopyWith<$Res>(_self.apartment, (value) {
    return _then(_self.copyWith(apartment: value));
  });
}/// Create a copy of CreateGroupFormRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupPreferencesRequestDataCopyWith<$Res> get preferences {
  
  return $CreateGroupPreferencesRequestDataCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// @nodoc
mixin _$CreateGroupGroupRequestData {

 String? get title; String? get description;@JsonKey(name: 'desired_gender') String? get desiredGender;@JsonKey(name: 'min_age') int? get minAge;@JsonKey(name: 'max_age') int? get maxAge;@JsonKey(name: 'max_participants_count') int? get maxParticipantsCount;@JsonKey(name: 'children_allowed') bool? get childrenAllowed;@JsonKey(name: 'partner_allowed') bool? get partnerAllowed;@JsonKey(name: 'pets_allowed') bool? get petsAllowed;@JsonKey(name: 'smoking_allowed') bool? get smokingAllowed;
/// Create a copy of CreateGroupGroupRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupGroupRequestDataCopyWith<CreateGroupGroupRequestData> get copyWith => _$CreateGroupGroupRequestDataCopyWithImpl<CreateGroupGroupRequestData>(this as CreateGroupGroupRequestData, _$identity);

  /// Serializes this CreateGroupGroupRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupGroupRequestData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,desiredGender,minAge,maxAge,maxParticipantsCount,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'CreateGroupGroupRequestData(title: $title, description: $description, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, maxParticipantsCount: $maxParticipantsCount, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class $CreateGroupGroupRequestDataCopyWith<$Res>  {
  factory $CreateGroupGroupRequestDataCopyWith(CreateGroupGroupRequestData value, $Res Function(CreateGroupGroupRequestData) _then) = _$CreateGroupGroupRequestDataCopyWithImpl;
@useResult
$Res call({
 String? title, String? description,@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed
});




}
/// @nodoc
class _$CreateGroupGroupRequestDataCopyWithImpl<$Res>
    implements $CreateGroupGroupRequestDataCopyWith<$Res> {
  _$CreateGroupGroupRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupGroupRequestData _self;
  final $Res Function(CreateGroupGroupRequestData) _then;

/// Create a copy of CreateGroupGroupRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? maxParticipantsCount = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGroupGroupRequestData].
extension CreateGroupGroupRequestDataPatterns on CreateGroupGroupRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupGroupRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupGroupRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupGroupRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData() when $default != null:
return $default(_that.title,_that.description,_that.desiredGender,_that.minAge,_that.maxAge,_that.maxParticipantsCount,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData():
return $default(_that.title,_that.description,_that.desiredGender,_that.minAge,_that.maxAge,_that.maxParticipantsCount,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description, @JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupGroupRequestData() when $default != null:
return $default(_that.title,_that.description,_that.desiredGender,_that.minAge,_that.maxAge,_that.maxParticipantsCount,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateGroupGroupRequestData implements CreateGroupGroupRequestData {
  const _CreateGroupGroupRequestData({this.title, this.description, @JsonKey(name: 'desired_gender') this.desiredGender, @JsonKey(name: 'min_age') this.minAge, @JsonKey(name: 'max_age') this.maxAge, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount, @JsonKey(name: 'children_allowed') this.childrenAllowed, @JsonKey(name: 'partner_allowed') this.partnerAllowed, @JsonKey(name: 'pets_allowed') this.petsAllowed, @JsonKey(name: 'smoking_allowed') this.smokingAllowed});
  factory _CreateGroupGroupRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupGroupRequestDataFromJson(json);

@override final  String? title;
@override final  String? description;
@override@JsonKey(name: 'desired_gender') final  String? desiredGender;
@override@JsonKey(name: 'min_age') final  int? minAge;
@override@JsonKey(name: 'max_age') final  int? maxAge;
@override@JsonKey(name: 'max_participants_count') final  int? maxParticipantsCount;
@override@JsonKey(name: 'children_allowed') final  bool? childrenAllowed;
@override@JsonKey(name: 'partner_allowed') final  bool? partnerAllowed;
@override@JsonKey(name: 'pets_allowed') final  bool? petsAllowed;
@override@JsonKey(name: 'smoking_allowed') final  bool? smokingAllowed;

/// Create a copy of CreateGroupGroupRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupGroupRequestDataCopyWith<_CreateGroupGroupRequestData> get copyWith => __$CreateGroupGroupRequestDataCopyWithImpl<_CreateGroupGroupRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupGroupRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupGroupRequestData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,desiredGender,minAge,maxAge,maxParticipantsCount,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'CreateGroupGroupRequestData(title: $title, description: $description, desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, maxParticipantsCount: $maxParticipantsCount, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupGroupRequestDataCopyWith<$Res> implements $CreateGroupGroupRequestDataCopyWith<$Res> {
  factory _$CreateGroupGroupRequestDataCopyWith(_CreateGroupGroupRequestData value, $Res Function(_CreateGroupGroupRequestData) _then) = __$CreateGroupGroupRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description,@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed
});




}
/// @nodoc
class __$CreateGroupGroupRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupGroupRequestDataCopyWith<$Res> {
  __$CreateGroupGroupRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupGroupRequestData _self;
  final $Res Function(_CreateGroupGroupRequestData) _then;

/// Create a copy of CreateGroupGroupRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? maxParticipantsCount = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,}) {
  return _then(_CreateGroupGroupRequestData(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$CreateGroupApartmentRequestData {

@JsonKey(name: 'address_details') CreateGroupAddressDetailsRequestData? get addressDetails;@JsonKey(name: 'rent_goal_id') int? get rentGoalId;@JsonKey(name: 'rent_period_id') int? get rentPeriodId;@JsonKey(name: 'who_can_rent_ids') List<int>? get whoCanRentIds;@JsonKey(name: 'premises_type_id') int? get premisesTypeId;@JsonKey(name: 'property_type_id') int? get propertyTypeId;@JsonKey(name: 'rooms_count_id') int? get roomsCountId;@JsonKey(name: 'layout_id') int? get layoutId;@JsonKey(name: 'renovation_id') int? get renovationId;@JsonKey(name: 'elevators_id') int? get elevatorsId;@JsonKey(name: 'balconies_id') int? get balconiesId;@JsonKey(name: 'furniture_id') int? get furnitureId;@JsonKey(name: 'amenities_ids') List<int>? get amenitiesIds;@JsonKey(name: 'bathroom_ids') List<int>? get bathroomIds;@JsonKey(name: 'appliances_ids') List<int>? get appliancesIds;@JsonKey(name: 'stove_id') int? get stoveId;@JsonKey(name: 'currency_id') int? get currencyId;@JsonKey(name: 'prepayment_id') int? get prepaymentId;@JsonKey(name: 'rent_duration_id') int? get rentDurationId;@JsonKey(name: 'rent_conditions_ids') List<int>? get rentConditionsIds;@JsonKey(name: 'contact_method_id') int? get contactMethodId;@JsonKey(name: 'selected_currency') CreateGroupSelectedCurrencyRequestData? get selectedCurrency;@JsonKey(name: 'price_per_person') double? get pricePerPerson;@JsonKey(name: 'price_per_month') double? get pricePerMonth; double? get deposit;@JsonKey(name: 'apartment_area') double? get apartmentArea; int? get floor;@JsonKey(name: 'total_floors') int? get totalFloors;@JsonKey(name: 'apartment_number') int? get apartmentNumber; String? get title; String? get description;@JsonKey(name: 'image_urls') List<String>? get imageUrls;@JsonKey(name: 'main_phone') String? get mainPhone;@JsonKey(name: 'additional_number') String? get additionalNumber;
/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupApartmentRequestDataCopyWith<CreateGroupApartmentRequestData> get copyWith => _$CreateGroupApartmentRequestDataCopyWithImpl<CreateGroupApartmentRequestData>(this as CreateGroupApartmentRequestData, _$identity);

  /// Serializes this CreateGroupApartmentRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupApartmentRequestData&&(identical(other.addressDetails, addressDetails) || other.addressDetails == addressDetails)&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other.whoCanRentIds, whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other.amenitiesIds, amenitiesIds)&&const DeepCollectionEquality().equals(other.bathroomIds, bathroomIds)&&const DeepCollectionEquality().equals(other.appliancesIds, appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other.rentConditionsIds, rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.pricePerPerson, pricePerPerson) || other.pricePerPerson == pricePerPerson)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,addressDetails,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(amenitiesIds),const DeepCollectionEquality().hash(bathroomIds),const DeepCollectionEquality().hash(appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(rentConditionsIds),contactMethodId,selectedCurrency,pricePerPerson,pricePerMonth,deposit,apartmentArea,floor,totalFloors,apartmentNumber,title,description,const DeepCollectionEquality().hash(imageUrls),mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateGroupApartmentRequestData(addressDetails: $addressDetails, rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, pricePerPerson: $pricePerPerson, pricePerMonth: $pricePerMonth, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, apartmentNumber: $apartmentNumber, title: $title, description: $description, imageUrls: $imageUrls, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateGroupApartmentRequestDataCopyWith<$Res>  {
  factory $CreateGroupApartmentRequestDataCopyWith(CreateGroupApartmentRequestData value, $Res Function(CreateGroupApartmentRequestData) _then) = _$CreateGroupApartmentRequestDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_details') CreateGroupAddressDetailsRequestData? addressDetails,@JsonKey(name: 'rent_goal_id') int? rentGoalId,@JsonKey(name: 'rent_period_id') int? rentPeriodId,@JsonKey(name: 'who_can_rent_ids') List<int>? whoCanRentIds,@JsonKey(name: 'premises_type_id') int? premisesTypeId,@JsonKey(name: 'property_type_id') int? propertyTypeId,@JsonKey(name: 'rooms_count_id') int? roomsCountId,@JsonKey(name: 'layout_id') int? layoutId,@JsonKey(name: 'renovation_id') int? renovationId,@JsonKey(name: 'elevators_id') int? elevatorsId,@JsonKey(name: 'balconies_id') int? balconiesId,@JsonKey(name: 'furniture_id') int? furnitureId,@JsonKey(name: 'amenities_ids') List<int>? amenitiesIds,@JsonKey(name: 'bathroom_ids') List<int>? bathroomIds,@JsonKey(name: 'appliances_ids') List<int>? appliancesIds,@JsonKey(name: 'stove_id') int? stoveId,@JsonKey(name: 'currency_id') int? currencyId,@JsonKey(name: 'prepayment_id') int? prepaymentId,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'rent_conditions_ids') List<int>? rentConditionsIds,@JsonKey(name: 'contact_method_id') int? contactMethodId,@JsonKey(name: 'selected_currency') CreateGroupSelectedCurrencyRequestData? selectedCurrency,@JsonKey(name: 'price_per_person') double? pricePerPerson,@JsonKey(name: 'price_per_month') double? pricePerMonth, double? deposit,@JsonKey(name: 'apartment_area') double? apartmentArea, int? floor,@JsonKey(name: 'total_floors') int? totalFloors,@JsonKey(name: 'apartment_number') int? apartmentNumber, String? title, String? description,@JsonKey(name: 'image_urls') List<String>? imageUrls,@JsonKey(name: 'main_phone') String? mainPhone,@JsonKey(name: 'additional_number') String? additionalNumber
});


$CreateGroupAddressDetailsRequestDataCopyWith<$Res>? get addressDetails;$CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>? get selectedCurrency;

}
/// @nodoc
class _$CreateGroupApartmentRequestDataCopyWithImpl<$Res>
    implements $CreateGroupApartmentRequestDataCopyWith<$Res> {
  _$CreateGroupApartmentRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupApartmentRequestData _self;
  final $Res Function(CreateGroupApartmentRequestData) _then;

/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressDetails = freezed,Object? rentGoalId = freezed,Object? rentPeriodId = freezed,Object? whoCanRentIds = freezed,Object? premisesTypeId = freezed,Object? propertyTypeId = freezed,Object? roomsCountId = freezed,Object? layoutId = freezed,Object? renovationId = freezed,Object? elevatorsId = freezed,Object? balconiesId = freezed,Object? furnitureId = freezed,Object? amenitiesIds = freezed,Object? bathroomIds = freezed,Object? appliancesIds = freezed,Object? stoveId = freezed,Object? currencyId = freezed,Object? prepaymentId = freezed,Object? rentDurationId = freezed,Object? rentConditionsIds = freezed,Object? contactMethodId = freezed,Object? selectedCurrency = freezed,Object? pricePerPerson = freezed,Object? pricePerMonth = freezed,Object? deposit = freezed,Object? apartmentArea = freezed,Object? floor = freezed,Object? totalFloors = freezed,Object? apartmentNumber = freezed,Object? title = freezed,Object? description = freezed,Object? imageUrls = freezed,Object? mainPhone = freezed,Object? additionalNumber = freezed,}) {
  return _then(_self.copyWith(
addressDetails: freezed == addressDetails ? _self.addressDetails : addressDetails // ignore: cast_nullable_to_non_nullable
as CreateGroupAddressDetailsRequestData?,rentGoalId: freezed == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int?,rentPeriodId: freezed == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int?,whoCanRentIds: freezed == whoCanRentIds ? _self.whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as List<int>?,premisesTypeId: freezed == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,roomsCountId: freezed == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int?,layoutId: freezed == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int?,renovationId: freezed == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int?,elevatorsId: freezed == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int?,balconiesId: freezed == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int?,furnitureId: freezed == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int?,amenitiesIds: freezed == amenitiesIds ? _self.amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as List<int>?,bathroomIds: freezed == bathroomIds ? _self.bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as List<int>?,appliancesIds: freezed == appliancesIds ? _self.appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as List<int>?,stoveId: freezed == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int?,prepaymentId: freezed == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,rentConditionsIds: freezed == rentConditionsIds ? _self.rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as List<int>?,contactMethodId: freezed == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as CreateGroupSelectedCurrencyRequestData?,pricePerPerson: freezed == pricePerPerson ? _self.pricePerPerson : pricePerPerson // ignore: cast_nullable_to_non_nullable
as double?,pricePerMonth: freezed == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as double?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double?,apartmentArea: freezed == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloors: freezed == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int?,apartmentNumber: freezed == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,mainPhone: freezed == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String?,additionalNumber: freezed == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupAddressDetailsRequestDataCopyWith<$Res>? get addressDetails {
    if (_self.addressDetails == null) {
    return null;
  }

  return $CreateGroupAddressDetailsRequestDataCopyWith<$Res>(_self.addressDetails!, (value) {
    return _then(_self.copyWith(addressDetails: value));
  });
}/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>? get selectedCurrency {
    if (_self.selectedCurrency == null) {
    return null;
  }

  return $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>(_self.selectedCurrency!, (value) {
    return _then(_self.copyWith(selectedCurrency: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateGroupApartmentRequestData].
extension CreateGroupApartmentRequestDataPatterns on CreateGroupApartmentRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupApartmentRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupApartmentRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupApartmentRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_details')  CreateGroupAddressDetailsRequestData? addressDetails, @JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  List<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  List<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  List<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  List<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  List<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  CreateGroupSelectedCurrencyRequestData? selectedCurrency, @JsonKey(name: 'price_per_person')  double? pricePerPerson, @JsonKey(name: 'price_per_month')  double? pricePerMonth,  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea,  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'apartment_number')  int? apartmentNumber,  String? title,  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData() when $default != null:
return $default(_that.addressDetails,_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.pricePerPerson,_that.pricePerMonth,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.apartmentNumber,_that.title,_that.description,_that.imageUrls,_that.mainPhone,_that.additionalNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_details')  CreateGroupAddressDetailsRequestData? addressDetails, @JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  List<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  List<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  List<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  List<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  List<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  CreateGroupSelectedCurrencyRequestData? selectedCurrency, @JsonKey(name: 'price_per_person')  double? pricePerPerson, @JsonKey(name: 'price_per_month')  double? pricePerMonth,  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea,  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'apartment_number')  int? apartmentNumber,  String? title,  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData():
return $default(_that.addressDetails,_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.pricePerPerson,_that.pricePerMonth,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.apartmentNumber,_that.title,_that.description,_that.imageUrls,_that.mainPhone,_that.additionalNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_details')  CreateGroupAddressDetailsRequestData? addressDetails, @JsonKey(name: 'rent_goal_id')  int? rentGoalId, @JsonKey(name: 'rent_period_id')  int? rentPeriodId, @JsonKey(name: 'who_can_rent_ids')  List<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id')  int? premisesTypeId, @JsonKey(name: 'property_type_id')  int? propertyTypeId, @JsonKey(name: 'rooms_count_id')  int? roomsCountId, @JsonKey(name: 'layout_id')  int? layoutId, @JsonKey(name: 'renovation_id')  int? renovationId, @JsonKey(name: 'elevators_id')  int? elevatorsId, @JsonKey(name: 'balconies_id')  int? balconiesId, @JsonKey(name: 'furniture_id')  int? furnitureId, @JsonKey(name: 'amenities_ids')  List<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids')  List<int>? bathroomIds, @JsonKey(name: 'appliances_ids')  List<int>? appliancesIds, @JsonKey(name: 'stove_id')  int? stoveId, @JsonKey(name: 'currency_id')  int? currencyId, @JsonKey(name: 'prepayment_id')  int? prepaymentId, @JsonKey(name: 'rent_duration_id')  int? rentDurationId, @JsonKey(name: 'rent_conditions_ids')  List<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id')  int? contactMethodId, @JsonKey(name: 'selected_currency')  CreateGroupSelectedCurrencyRequestData? selectedCurrency, @JsonKey(name: 'price_per_person')  double? pricePerPerson, @JsonKey(name: 'price_per_month')  double? pricePerMonth,  double? deposit, @JsonKey(name: 'apartment_area')  double? apartmentArea,  int? floor, @JsonKey(name: 'total_floors')  int? totalFloors, @JsonKey(name: 'apartment_number')  int? apartmentNumber,  String? title,  String? description, @JsonKey(name: 'image_urls')  List<String>? imageUrls, @JsonKey(name: 'main_phone')  String? mainPhone, @JsonKey(name: 'additional_number')  String? additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupApartmentRequestData() when $default != null:
return $default(_that.addressDetails,_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.pricePerPerson,_that.pricePerMonth,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.apartmentNumber,_that.title,_that.description,_that.imageUrls,_that.mainPhone,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _CreateGroupApartmentRequestData implements CreateGroupApartmentRequestData {
  const _CreateGroupApartmentRequestData({@JsonKey(name: 'address_details') this.addressDetails, @JsonKey(name: 'rent_goal_id') this.rentGoalId, @JsonKey(name: 'rent_period_id') this.rentPeriodId, @JsonKey(name: 'who_can_rent_ids') final  List<int>? whoCanRentIds, @JsonKey(name: 'premises_type_id') this.premisesTypeId, @JsonKey(name: 'property_type_id') this.propertyTypeId, @JsonKey(name: 'rooms_count_id') this.roomsCountId, @JsonKey(name: 'layout_id') this.layoutId, @JsonKey(name: 'renovation_id') this.renovationId, @JsonKey(name: 'elevators_id') this.elevatorsId, @JsonKey(name: 'balconies_id') this.balconiesId, @JsonKey(name: 'furniture_id') this.furnitureId, @JsonKey(name: 'amenities_ids') final  List<int>? amenitiesIds, @JsonKey(name: 'bathroom_ids') final  List<int>? bathroomIds, @JsonKey(name: 'appliances_ids') final  List<int>? appliancesIds, @JsonKey(name: 'stove_id') this.stoveId, @JsonKey(name: 'currency_id') this.currencyId, @JsonKey(name: 'prepayment_id') this.prepaymentId, @JsonKey(name: 'rent_duration_id') this.rentDurationId, @JsonKey(name: 'rent_conditions_ids') final  List<int>? rentConditionsIds, @JsonKey(name: 'contact_method_id') this.contactMethodId, @JsonKey(name: 'selected_currency') this.selectedCurrency, @JsonKey(name: 'price_per_person') this.pricePerPerson, @JsonKey(name: 'price_per_month') this.pricePerMonth, this.deposit, @JsonKey(name: 'apartment_area') this.apartmentArea, this.floor, @JsonKey(name: 'total_floors') this.totalFloors, @JsonKey(name: 'apartment_number') this.apartmentNumber, this.title, this.description, @JsonKey(name: 'image_urls') final  List<String>? imageUrls, @JsonKey(name: 'main_phone') this.mainPhone, @JsonKey(name: 'additional_number') this.additionalNumber}): _whoCanRentIds = whoCanRentIds,_amenitiesIds = amenitiesIds,_bathroomIds = bathroomIds,_appliancesIds = appliancesIds,_rentConditionsIds = rentConditionsIds,_imageUrls = imageUrls;
  factory _CreateGroupApartmentRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupApartmentRequestDataFromJson(json);

@override@JsonKey(name: 'address_details') final  CreateGroupAddressDetailsRequestData? addressDetails;
@override@JsonKey(name: 'rent_goal_id') final  int? rentGoalId;
@override@JsonKey(name: 'rent_period_id') final  int? rentPeriodId;
 final  List<int>? _whoCanRentIds;
@override@JsonKey(name: 'who_can_rent_ids') List<int>? get whoCanRentIds {
  final value = _whoCanRentIds;
  if (value == null) return null;
  if (_whoCanRentIds is EqualUnmodifiableListView) return _whoCanRentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'premises_type_id') final  int? premisesTypeId;
@override@JsonKey(name: 'property_type_id') final  int? propertyTypeId;
@override@JsonKey(name: 'rooms_count_id') final  int? roomsCountId;
@override@JsonKey(name: 'layout_id') final  int? layoutId;
@override@JsonKey(name: 'renovation_id') final  int? renovationId;
@override@JsonKey(name: 'elevators_id') final  int? elevatorsId;
@override@JsonKey(name: 'balconies_id') final  int? balconiesId;
@override@JsonKey(name: 'furniture_id') final  int? furnitureId;
 final  List<int>? _amenitiesIds;
@override@JsonKey(name: 'amenities_ids') List<int>? get amenitiesIds {
  final value = _amenitiesIds;
  if (value == null) return null;
  if (_amenitiesIds is EqualUnmodifiableListView) return _amenitiesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _bathroomIds;
@override@JsonKey(name: 'bathroom_ids') List<int>? get bathroomIds {
  final value = _bathroomIds;
  if (value == null) return null;
  if (_bathroomIds is EqualUnmodifiableListView) return _bathroomIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _appliancesIds;
@override@JsonKey(name: 'appliances_ids') List<int>? get appliancesIds {
  final value = _appliancesIds;
  if (value == null) return null;
  if (_appliancesIds is EqualUnmodifiableListView) return _appliancesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'stove_id') final  int? stoveId;
@override@JsonKey(name: 'currency_id') final  int? currencyId;
@override@JsonKey(name: 'prepayment_id') final  int? prepaymentId;
@override@JsonKey(name: 'rent_duration_id') final  int? rentDurationId;
 final  List<int>? _rentConditionsIds;
@override@JsonKey(name: 'rent_conditions_ids') List<int>? get rentConditionsIds {
  final value = _rentConditionsIds;
  if (value == null) return null;
  if (_rentConditionsIds is EqualUnmodifiableListView) return _rentConditionsIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'contact_method_id') final  int? contactMethodId;
@override@JsonKey(name: 'selected_currency') final  CreateGroupSelectedCurrencyRequestData? selectedCurrency;
@override@JsonKey(name: 'price_per_person') final  double? pricePerPerson;
@override@JsonKey(name: 'price_per_month') final  double? pricePerMonth;
@override final  double? deposit;
@override@JsonKey(name: 'apartment_area') final  double? apartmentArea;
@override final  int? floor;
@override@JsonKey(name: 'total_floors') final  int? totalFloors;
@override@JsonKey(name: 'apartment_number') final  int? apartmentNumber;
@override final  String? title;
@override final  String? description;
 final  List<String>? _imageUrls;
@override@JsonKey(name: 'image_urls') List<String>? get imageUrls {
  final value = _imageUrls;
  if (value == null) return null;
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'main_phone') final  String? mainPhone;
@override@JsonKey(name: 'additional_number') final  String? additionalNumber;

/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupApartmentRequestDataCopyWith<_CreateGroupApartmentRequestData> get copyWith => __$CreateGroupApartmentRequestDataCopyWithImpl<_CreateGroupApartmentRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupApartmentRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupApartmentRequestData&&(identical(other.addressDetails, addressDetails) || other.addressDetails == addressDetails)&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other._whoCanRentIds, _whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other._amenitiesIds, _amenitiesIds)&&const DeepCollectionEquality().equals(other._bathroomIds, _bathroomIds)&&const DeepCollectionEquality().equals(other._appliancesIds, _appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other._rentConditionsIds, _rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.pricePerPerson, pricePerPerson) || other.pricePerPerson == pricePerPerson)&&(identical(other.pricePerMonth, pricePerMonth) || other.pricePerMonth == pricePerMonth)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,addressDetails,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(_whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(_amenitiesIds),const DeepCollectionEquality().hash(_bathroomIds),const DeepCollectionEquality().hash(_appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(_rentConditionsIds),contactMethodId,selectedCurrency,pricePerPerson,pricePerMonth,deposit,apartmentArea,floor,totalFloors,apartmentNumber,title,description,const DeepCollectionEquality().hash(_imageUrls),mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateGroupApartmentRequestData(addressDetails: $addressDetails, rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, pricePerPerson: $pricePerPerson, pricePerMonth: $pricePerMonth, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, apartmentNumber: $apartmentNumber, title: $title, description: $description, imageUrls: $imageUrls, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupApartmentRequestDataCopyWith<$Res> implements $CreateGroupApartmentRequestDataCopyWith<$Res> {
  factory _$CreateGroupApartmentRequestDataCopyWith(_CreateGroupApartmentRequestData value, $Res Function(_CreateGroupApartmentRequestData) _then) = __$CreateGroupApartmentRequestDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_details') CreateGroupAddressDetailsRequestData? addressDetails,@JsonKey(name: 'rent_goal_id') int? rentGoalId,@JsonKey(name: 'rent_period_id') int? rentPeriodId,@JsonKey(name: 'who_can_rent_ids') List<int>? whoCanRentIds,@JsonKey(name: 'premises_type_id') int? premisesTypeId,@JsonKey(name: 'property_type_id') int? propertyTypeId,@JsonKey(name: 'rooms_count_id') int? roomsCountId,@JsonKey(name: 'layout_id') int? layoutId,@JsonKey(name: 'renovation_id') int? renovationId,@JsonKey(name: 'elevators_id') int? elevatorsId,@JsonKey(name: 'balconies_id') int? balconiesId,@JsonKey(name: 'furniture_id') int? furnitureId,@JsonKey(name: 'amenities_ids') List<int>? amenitiesIds,@JsonKey(name: 'bathroom_ids') List<int>? bathroomIds,@JsonKey(name: 'appliances_ids') List<int>? appliancesIds,@JsonKey(name: 'stove_id') int? stoveId,@JsonKey(name: 'currency_id') int? currencyId,@JsonKey(name: 'prepayment_id') int? prepaymentId,@JsonKey(name: 'rent_duration_id') int? rentDurationId,@JsonKey(name: 'rent_conditions_ids') List<int>? rentConditionsIds,@JsonKey(name: 'contact_method_id') int? contactMethodId,@JsonKey(name: 'selected_currency') CreateGroupSelectedCurrencyRequestData? selectedCurrency,@JsonKey(name: 'price_per_person') double? pricePerPerson,@JsonKey(name: 'price_per_month') double? pricePerMonth, double? deposit,@JsonKey(name: 'apartment_area') double? apartmentArea, int? floor,@JsonKey(name: 'total_floors') int? totalFloors,@JsonKey(name: 'apartment_number') int? apartmentNumber, String? title, String? description,@JsonKey(name: 'image_urls') List<String>? imageUrls,@JsonKey(name: 'main_phone') String? mainPhone,@JsonKey(name: 'additional_number') String? additionalNumber
});


@override $CreateGroupAddressDetailsRequestDataCopyWith<$Res>? get addressDetails;@override $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>? get selectedCurrency;

}
/// @nodoc
class __$CreateGroupApartmentRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupApartmentRequestDataCopyWith<$Res> {
  __$CreateGroupApartmentRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupApartmentRequestData _self;
  final $Res Function(_CreateGroupApartmentRequestData) _then;

/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressDetails = freezed,Object? rentGoalId = freezed,Object? rentPeriodId = freezed,Object? whoCanRentIds = freezed,Object? premisesTypeId = freezed,Object? propertyTypeId = freezed,Object? roomsCountId = freezed,Object? layoutId = freezed,Object? renovationId = freezed,Object? elevatorsId = freezed,Object? balconiesId = freezed,Object? furnitureId = freezed,Object? amenitiesIds = freezed,Object? bathroomIds = freezed,Object? appliancesIds = freezed,Object? stoveId = freezed,Object? currencyId = freezed,Object? prepaymentId = freezed,Object? rentDurationId = freezed,Object? rentConditionsIds = freezed,Object? contactMethodId = freezed,Object? selectedCurrency = freezed,Object? pricePerPerson = freezed,Object? pricePerMonth = freezed,Object? deposit = freezed,Object? apartmentArea = freezed,Object? floor = freezed,Object? totalFloors = freezed,Object? apartmentNumber = freezed,Object? title = freezed,Object? description = freezed,Object? imageUrls = freezed,Object? mainPhone = freezed,Object? additionalNumber = freezed,}) {
  return _then(_CreateGroupApartmentRequestData(
addressDetails: freezed == addressDetails ? _self.addressDetails : addressDetails // ignore: cast_nullable_to_non_nullable
as CreateGroupAddressDetailsRequestData?,rentGoalId: freezed == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int?,rentPeriodId: freezed == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int?,whoCanRentIds: freezed == whoCanRentIds ? _self._whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as List<int>?,premisesTypeId: freezed == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int?,propertyTypeId: freezed == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int?,roomsCountId: freezed == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int?,layoutId: freezed == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int?,renovationId: freezed == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int?,elevatorsId: freezed == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int?,balconiesId: freezed == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int?,furnitureId: freezed == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int?,amenitiesIds: freezed == amenitiesIds ? _self._amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as List<int>?,bathroomIds: freezed == bathroomIds ? _self._bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as List<int>?,appliancesIds: freezed == appliancesIds ? _self._appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as List<int>?,stoveId: freezed == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int?,prepaymentId: freezed == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int?,rentDurationId: freezed == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int?,rentConditionsIds: freezed == rentConditionsIds ? _self._rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as List<int>?,contactMethodId: freezed == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as CreateGroupSelectedCurrencyRequestData?,pricePerPerson: freezed == pricePerPerson ? _self.pricePerPerson : pricePerPerson // ignore: cast_nullable_to_non_nullable
as double?,pricePerMonth: freezed == pricePerMonth ? _self.pricePerMonth : pricePerMonth // ignore: cast_nullable_to_non_nullable
as double?,deposit: freezed == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double?,apartmentArea: freezed == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double?,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int?,totalFloors: freezed == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int?,apartmentNumber: freezed == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrls: freezed == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,mainPhone: freezed == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String?,additionalNumber: freezed == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupAddressDetailsRequestDataCopyWith<$Res>? get addressDetails {
    if (_self.addressDetails == null) {
    return null;
  }

  return $CreateGroupAddressDetailsRequestDataCopyWith<$Res>(_self.addressDetails!, (value) {
    return _then(_self.copyWith(addressDetails: value));
  });
}/// Create a copy of CreateGroupApartmentRequestData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>? get selectedCurrency {
    if (_self.selectedCurrency == null) {
    return null;
  }

  return $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>(_self.selectedCurrency!, (value) {
    return _then(_self.copyWith(selectedCurrency: value));
  });
}
}


/// @nodoc
mixin _$CreateGroupSelectedCurrencyRequestData {

 String? get code; String? get symbol;
/// Create a copy of CreateGroupSelectedCurrencyRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupSelectedCurrencyRequestDataCopyWith<CreateGroupSelectedCurrencyRequestData> get copyWith => _$CreateGroupSelectedCurrencyRequestDataCopyWithImpl<CreateGroupSelectedCurrencyRequestData>(this as CreateGroupSelectedCurrencyRequestData, _$identity);

  /// Serializes this CreateGroupSelectedCurrencyRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupSelectedCurrencyRequestData&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,symbol);

@override
String toString() {
  return 'CreateGroupSelectedCurrencyRequestData(code: $code, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res>  {
  factory $CreateGroupSelectedCurrencyRequestDataCopyWith(CreateGroupSelectedCurrencyRequestData value, $Res Function(CreateGroupSelectedCurrencyRequestData) _then) = _$CreateGroupSelectedCurrencyRequestDataCopyWithImpl;
@useResult
$Res call({
 String? code, String? symbol
});




}
/// @nodoc
class _$CreateGroupSelectedCurrencyRequestDataCopyWithImpl<$Res>
    implements $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res> {
  _$CreateGroupSelectedCurrencyRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupSelectedCurrencyRequestData _self;
  final $Res Function(CreateGroupSelectedCurrencyRequestData) _then;

/// Create a copy of CreateGroupSelectedCurrencyRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? symbol = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGroupSelectedCurrencyRequestData].
extension CreateGroupSelectedCurrencyRequestDataPatterns on CreateGroupSelectedCurrencyRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupSelectedCurrencyRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupSelectedCurrencyRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupSelectedCurrencyRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? symbol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData() when $default != null:
return $default(_that.code,_that.symbol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? symbol)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData():
return $default(_that.code,_that.symbol);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? symbol)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupSelectedCurrencyRequestData() when $default != null:
return $default(_that.code,_that.symbol);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateGroupSelectedCurrencyRequestData implements CreateGroupSelectedCurrencyRequestData {
  const _CreateGroupSelectedCurrencyRequestData({this.code, this.symbol});
  factory _CreateGroupSelectedCurrencyRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupSelectedCurrencyRequestDataFromJson(json);

@override final  String? code;
@override final  String? symbol;

/// Create a copy of CreateGroupSelectedCurrencyRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupSelectedCurrencyRequestDataCopyWith<_CreateGroupSelectedCurrencyRequestData> get copyWith => __$CreateGroupSelectedCurrencyRequestDataCopyWithImpl<_CreateGroupSelectedCurrencyRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupSelectedCurrencyRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupSelectedCurrencyRequestData&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,symbol);

@override
String toString() {
  return 'CreateGroupSelectedCurrencyRequestData(code: $code, symbol: $symbol)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupSelectedCurrencyRequestDataCopyWith<$Res> implements $CreateGroupSelectedCurrencyRequestDataCopyWith<$Res> {
  factory _$CreateGroupSelectedCurrencyRequestDataCopyWith(_CreateGroupSelectedCurrencyRequestData value, $Res Function(_CreateGroupSelectedCurrencyRequestData) _then) = __$CreateGroupSelectedCurrencyRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? symbol
});




}
/// @nodoc
class __$CreateGroupSelectedCurrencyRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupSelectedCurrencyRequestDataCopyWith<$Res> {
  __$CreateGroupSelectedCurrencyRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupSelectedCurrencyRequestData _self;
  final $Res Function(_CreateGroupSelectedCurrencyRequestData) _then;

/// Create a copy of CreateGroupSelectedCurrencyRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? symbol = freezed,}) {
  return _then(_CreateGroupSelectedCurrencyRequestData(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateGroupAddressDetailsRequestData {

 String? get value; String? get unrestrictedValue; String? get country; String? get region; String? get city; String? get cityFiasId; String? get district; String? get street; String? get streetFiasId; String? get house; String? get houseFiasId; double? get geoLat; double? get geoLon;
/// Create a copy of CreateGroupAddressDetailsRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupAddressDetailsRequestDataCopyWith<CreateGroupAddressDetailsRequestData> get copyWith => _$CreateGroupAddressDetailsRequestDataCopyWithImpl<CreateGroupAddressDetailsRequestData>(this as CreateGroupAddressDetailsRequestData, _$identity);

  /// Serializes this CreateGroupAddressDetailsRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupAddressDetailsRequestData&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'CreateGroupAddressDetailsRequestData(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class $CreateGroupAddressDetailsRequestDataCopyWith<$Res>  {
  factory $CreateGroupAddressDetailsRequestDataCopyWith(CreateGroupAddressDetailsRequestData value, $Res Function(CreateGroupAddressDetailsRequestData) _then) = _$CreateGroupAddressDetailsRequestDataCopyWithImpl;
@useResult
$Res call({
 String? value, String? unrestrictedValue, String? country, String? region, String? city, String? cityFiasId, String? district, String? street, String? streetFiasId, String? house, String? houseFiasId, double? geoLat, double? geoLon
});




}
/// @nodoc
class _$CreateGroupAddressDetailsRequestDataCopyWithImpl<$Res>
    implements $CreateGroupAddressDetailsRequestDataCopyWith<$Res> {
  _$CreateGroupAddressDetailsRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupAddressDetailsRequestData _self;
  final $Res Function(CreateGroupAddressDetailsRequestData) _then;

/// Create a copy of CreateGroupAddressDetailsRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? unrestrictedValue = freezed,Object? country = freezed,Object? region = freezed,Object? city = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? street = freezed,Object? streetFiasId = freezed,Object? house = freezed,Object? houseFiasId = freezed,Object? geoLat = freezed,Object? geoLon = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,unrestrictedValue: freezed == unrestrictedValue ? _self.unrestrictedValue : unrestrictedValue // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,streetFiasId: freezed == streetFiasId ? _self.streetFiasId : streetFiasId // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,houseFiasId: freezed == houseFiasId ? _self.houseFiasId : houseFiasId // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLon: freezed == geoLon ? _self.geoLon : geoLon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGroupAddressDetailsRequestData].
extension CreateGroupAddressDetailsRequestDataPatterns on CreateGroupAddressDetailsRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupAddressDetailsRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupAddressDetailsRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupAddressDetailsRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? value,  String? unrestrictedValue,  String? country,  String? region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData() when $default != null:
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? value,  String? unrestrictedValue,  String? country,  String? region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData():
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? value,  String? unrestrictedValue,  String? country,  String? region,  String? city,  String? cityFiasId,  String? district,  String? street,  String? streetFiasId,  String? house,  String? houseFiasId,  double? geoLat,  double? geoLon)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupAddressDetailsRequestData() when $default != null:
return $default(_that.value,_that.unrestrictedValue,_that.country,_that.region,_that.city,_that.cityFiasId,_that.district,_that.street,_that.streetFiasId,_that.house,_that.houseFiasId,_that.geoLat,_that.geoLon);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateGroupAddressDetailsRequestData implements CreateGroupAddressDetailsRequestData {
  const _CreateGroupAddressDetailsRequestData({this.value, this.unrestrictedValue, this.country, this.region, this.city, this.cityFiasId, this.district, this.street, this.streetFiasId, this.house, this.houseFiasId, this.geoLat, this.geoLon});
  factory _CreateGroupAddressDetailsRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupAddressDetailsRequestDataFromJson(json);

@override final  String? value;
@override final  String? unrestrictedValue;
@override final  String? country;
@override final  String? region;
@override final  String? city;
@override final  String? cityFiasId;
@override final  String? district;
@override final  String? street;
@override final  String? streetFiasId;
@override final  String? house;
@override final  String? houseFiasId;
@override final  double? geoLat;
@override final  double? geoLon;

/// Create a copy of CreateGroupAddressDetailsRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupAddressDetailsRequestDataCopyWith<_CreateGroupAddressDetailsRequestData> get copyWith => __$CreateGroupAddressDetailsRequestDataCopyWithImpl<_CreateGroupAddressDetailsRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupAddressDetailsRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupAddressDetailsRequestData&&(identical(other.value, value) || other.value == value)&&(identical(other.unrestrictedValue, unrestrictedValue) || other.unrestrictedValue == unrestrictedValue)&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.city, city) || other.city == city)&&(identical(other.cityFiasId, cityFiasId) || other.cityFiasId == cityFiasId)&&(identical(other.district, district) || other.district == district)&&(identical(other.street, street) || other.street == street)&&(identical(other.streetFiasId, streetFiasId) || other.streetFiasId == streetFiasId)&&(identical(other.house, house) || other.house == house)&&(identical(other.houseFiasId, houseFiasId) || other.houseFiasId == houseFiasId)&&(identical(other.geoLat, geoLat) || other.geoLat == geoLat)&&(identical(other.geoLon, geoLon) || other.geoLon == geoLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,unrestrictedValue,country,region,city,cityFiasId,district,street,streetFiasId,house,houseFiasId,geoLat,geoLon);

@override
String toString() {
  return 'CreateGroupAddressDetailsRequestData(value: $value, unrestrictedValue: $unrestrictedValue, country: $country, region: $region, city: $city, cityFiasId: $cityFiasId, district: $district, street: $street, streetFiasId: $streetFiasId, house: $house, houseFiasId: $houseFiasId, geoLat: $geoLat, geoLon: $geoLon)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupAddressDetailsRequestDataCopyWith<$Res> implements $CreateGroupAddressDetailsRequestDataCopyWith<$Res> {
  factory _$CreateGroupAddressDetailsRequestDataCopyWith(_CreateGroupAddressDetailsRequestData value, $Res Function(_CreateGroupAddressDetailsRequestData) _then) = __$CreateGroupAddressDetailsRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String? value, String? unrestrictedValue, String? country, String? region, String? city, String? cityFiasId, String? district, String? street, String? streetFiasId, String? house, String? houseFiasId, double? geoLat, double? geoLon
});




}
/// @nodoc
class __$CreateGroupAddressDetailsRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupAddressDetailsRequestDataCopyWith<$Res> {
  __$CreateGroupAddressDetailsRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupAddressDetailsRequestData _self;
  final $Res Function(_CreateGroupAddressDetailsRequestData) _then;

/// Create a copy of CreateGroupAddressDetailsRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? unrestrictedValue = freezed,Object? country = freezed,Object? region = freezed,Object? city = freezed,Object? cityFiasId = freezed,Object? district = freezed,Object? street = freezed,Object? streetFiasId = freezed,Object? house = freezed,Object? houseFiasId = freezed,Object? geoLat = freezed,Object? geoLon = freezed,}) {
  return _then(_CreateGroupAddressDetailsRequestData(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,unrestrictedValue: freezed == unrestrictedValue ? _self.unrestrictedValue : unrestrictedValue // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityFiasId: freezed == cityFiasId ? _self.cityFiasId : cityFiasId // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,streetFiasId: freezed == streetFiasId ? _self.streetFiasId : streetFiasId // ignore: cast_nullable_to_non_nullable
as String?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as String?,houseFiasId: freezed == houseFiasId ? _self.houseFiasId : houseFiasId // ignore: cast_nullable_to_non_nullable
as String?,geoLat: freezed == geoLat ? _self.geoLat : geoLat // ignore: cast_nullable_to_non_nullable
as double?,geoLon: freezed == geoLon ? _self.geoLon : geoLon // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CreateGroupPreferencesRequestData {

@JsonKey(name: 'communication_id') int? get communicationId;@JsonKey(name: 'sleep_id') int? get sleepId;@JsonKey(name: 'bad_habits_id') int? get badHabitsId;@JsonKey(name: 'guests_id') int? get guestsId;@JsonKey(name: 'noise_level_id') int? get noiseLevelId;@JsonKey(name: 'cleaning_id') int? get cleaningId;@JsonKey(name: 'pets_id') int? get petsId;@JsonKey(name: 'pets_attitude_id') int? get petsAttitudeId;
/// Create a copy of CreateGroupPreferencesRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupPreferencesRequestDataCopyWith<CreateGroupPreferencesRequestData> get copyWith => _$CreateGroupPreferencesRequestDataCopyWithImpl<CreateGroupPreferencesRequestData>(this as CreateGroupPreferencesRequestData, _$identity);

  /// Serializes this CreateGroupPreferencesRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupPreferencesRequestData&&(identical(other.communicationId, communicationId) || other.communicationId == communicationId)&&(identical(other.sleepId, sleepId) || other.sleepId == sleepId)&&(identical(other.badHabitsId, badHabitsId) || other.badHabitsId == badHabitsId)&&(identical(other.guestsId, guestsId) || other.guestsId == guestsId)&&(identical(other.noiseLevelId, noiseLevelId) || other.noiseLevelId == noiseLevelId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.petsId, petsId) || other.petsId == petsId)&&(identical(other.petsAttitudeId, petsAttitudeId) || other.petsAttitudeId == petsAttitudeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,communicationId,sleepId,badHabitsId,guestsId,noiseLevelId,cleaningId,petsId,petsAttitudeId);

@override
String toString() {
  return 'CreateGroupPreferencesRequestData(communicationId: $communicationId, sleepId: $sleepId, badHabitsId: $badHabitsId, guestsId: $guestsId, noiseLevelId: $noiseLevelId, cleaningId: $cleaningId, petsId: $petsId, petsAttitudeId: $petsAttitudeId)';
}


}

/// @nodoc
abstract mixin class $CreateGroupPreferencesRequestDataCopyWith<$Res>  {
  factory $CreateGroupPreferencesRequestDataCopyWith(CreateGroupPreferencesRequestData value, $Res Function(CreateGroupPreferencesRequestData) _then) = _$CreateGroupPreferencesRequestDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'communication_id') int? communicationId,@JsonKey(name: 'sleep_id') int? sleepId,@JsonKey(name: 'bad_habits_id') int? badHabitsId,@JsonKey(name: 'guests_id') int? guestsId,@JsonKey(name: 'noise_level_id') int? noiseLevelId,@JsonKey(name: 'cleaning_id') int? cleaningId,@JsonKey(name: 'pets_id') int? petsId,@JsonKey(name: 'pets_attitude_id') int? petsAttitudeId
});




}
/// @nodoc
class _$CreateGroupPreferencesRequestDataCopyWithImpl<$Res>
    implements $CreateGroupPreferencesRequestDataCopyWith<$Res> {
  _$CreateGroupPreferencesRequestDataCopyWithImpl(this._self, this._then);

  final CreateGroupPreferencesRequestData _self;
  final $Res Function(CreateGroupPreferencesRequestData) _then;

/// Create a copy of CreateGroupPreferencesRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communicationId = freezed,Object? sleepId = freezed,Object? badHabitsId = freezed,Object? guestsId = freezed,Object? noiseLevelId = freezed,Object? cleaningId = freezed,Object? petsId = freezed,Object? petsAttitudeId = freezed,}) {
  return _then(_self.copyWith(
communicationId: freezed == communicationId ? _self.communicationId : communicationId // ignore: cast_nullable_to_non_nullable
as int?,sleepId: freezed == sleepId ? _self.sleepId : sleepId // ignore: cast_nullable_to_non_nullable
as int?,badHabitsId: freezed == badHabitsId ? _self.badHabitsId : badHabitsId // ignore: cast_nullable_to_non_nullable
as int?,guestsId: freezed == guestsId ? _self.guestsId : guestsId // ignore: cast_nullable_to_non_nullable
as int?,noiseLevelId: freezed == noiseLevelId ? _self.noiseLevelId : noiseLevelId // ignore: cast_nullable_to_non_nullable
as int?,cleaningId: freezed == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as int?,petsId: freezed == petsId ? _self.petsId : petsId // ignore: cast_nullable_to_non_nullable
as int?,petsAttitudeId: freezed == petsAttitudeId ? _self.petsAttitudeId : petsAttitudeId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateGroupPreferencesRequestData].
extension CreateGroupPreferencesRequestDataPatterns on CreateGroupPreferencesRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupPreferencesRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupPreferencesRequestData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupPreferencesRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication_id')  int? communicationId, @JsonKey(name: 'sleep_id')  int? sleepId, @JsonKey(name: 'bad_habits_id')  int? badHabitsId, @JsonKey(name: 'guests_id')  int? guestsId, @JsonKey(name: 'noise_level_id')  int? noiseLevelId, @JsonKey(name: 'cleaning_id')  int? cleaningId, @JsonKey(name: 'pets_id')  int? petsId, @JsonKey(name: 'pets_attitude_id')  int? petsAttitudeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData() when $default != null:
return $default(_that.communicationId,_that.sleepId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication_id')  int? communicationId, @JsonKey(name: 'sleep_id')  int? sleepId, @JsonKey(name: 'bad_habits_id')  int? badHabitsId, @JsonKey(name: 'guests_id')  int? guestsId, @JsonKey(name: 'noise_level_id')  int? noiseLevelId, @JsonKey(name: 'cleaning_id')  int? cleaningId, @JsonKey(name: 'pets_id')  int? petsId, @JsonKey(name: 'pets_attitude_id')  int? petsAttitudeId)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData():
return $default(_that.communicationId,_that.sleepId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'communication_id')  int? communicationId, @JsonKey(name: 'sleep_id')  int? sleepId, @JsonKey(name: 'bad_habits_id')  int? badHabitsId, @JsonKey(name: 'guests_id')  int? guestsId, @JsonKey(name: 'noise_level_id')  int? noiseLevelId, @JsonKey(name: 'cleaning_id')  int? cleaningId, @JsonKey(name: 'pets_id')  int? petsId, @JsonKey(name: 'pets_attitude_id')  int? petsAttitudeId)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupPreferencesRequestData() when $default != null:
return $default(_that.communicationId,_that.sleepId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateGroupPreferencesRequestData implements CreateGroupPreferencesRequestData {
  const _CreateGroupPreferencesRequestData({@JsonKey(name: 'communication_id') this.communicationId, @JsonKey(name: 'sleep_id') this.sleepId, @JsonKey(name: 'bad_habits_id') this.badHabitsId, @JsonKey(name: 'guests_id') this.guestsId, @JsonKey(name: 'noise_level_id') this.noiseLevelId, @JsonKey(name: 'cleaning_id') this.cleaningId, @JsonKey(name: 'pets_id') this.petsId, @JsonKey(name: 'pets_attitude_id') this.petsAttitudeId});
  factory _CreateGroupPreferencesRequestData.fromJson(Map<String, dynamic> json) => _$CreateGroupPreferencesRequestDataFromJson(json);

@override@JsonKey(name: 'communication_id') final  int? communicationId;
@override@JsonKey(name: 'sleep_id') final  int? sleepId;
@override@JsonKey(name: 'bad_habits_id') final  int? badHabitsId;
@override@JsonKey(name: 'guests_id') final  int? guestsId;
@override@JsonKey(name: 'noise_level_id') final  int? noiseLevelId;
@override@JsonKey(name: 'cleaning_id') final  int? cleaningId;
@override@JsonKey(name: 'pets_id') final  int? petsId;
@override@JsonKey(name: 'pets_attitude_id') final  int? petsAttitudeId;

/// Create a copy of CreateGroupPreferencesRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupPreferencesRequestDataCopyWith<_CreateGroupPreferencesRequestData> get copyWith => __$CreateGroupPreferencesRequestDataCopyWithImpl<_CreateGroupPreferencesRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupPreferencesRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupPreferencesRequestData&&(identical(other.communicationId, communicationId) || other.communicationId == communicationId)&&(identical(other.sleepId, sleepId) || other.sleepId == sleepId)&&(identical(other.badHabitsId, badHabitsId) || other.badHabitsId == badHabitsId)&&(identical(other.guestsId, guestsId) || other.guestsId == guestsId)&&(identical(other.noiseLevelId, noiseLevelId) || other.noiseLevelId == noiseLevelId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&(identical(other.petsId, petsId) || other.petsId == petsId)&&(identical(other.petsAttitudeId, petsAttitudeId) || other.petsAttitudeId == petsAttitudeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,communicationId,sleepId,badHabitsId,guestsId,noiseLevelId,cleaningId,petsId,petsAttitudeId);

@override
String toString() {
  return 'CreateGroupPreferencesRequestData(communicationId: $communicationId, sleepId: $sleepId, badHabitsId: $badHabitsId, guestsId: $guestsId, noiseLevelId: $noiseLevelId, cleaningId: $cleaningId, petsId: $petsId, petsAttitudeId: $petsAttitudeId)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupPreferencesRequestDataCopyWith<$Res> implements $CreateGroupPreferencesRequestDataCopyWith<$Res> {
  factory _$CreateGroupPreferencesRequestDataCopyWith(_CreateGroupPreferencesRequestData value, $Res Function(_CreateGroupPreferencesRequestData) _then) = __$CreateGroupPreferencesRequestDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'communication_id') int? communicationId,@JsonKey(name: 'sleep_id') int? sleepId,@JsonKey(name: 'bad_habits_id') int? badHabitsId,@JsonKey(name: 'guests_id') int? guestsId,@JsonKey(name: 'noise_level_id') int? noiseLevelId,@JsonKey(name: 'cleaning_id') int? cleaningId,@JsonKey(name: 'pets_id') int? petsId,@JsonKey(name: 'pets_attitude_id') int? petsAttitudeId
});




}
/// @nodoc
class __$CreateGroupPreferencesRequestDataCopyWithImpl<$Res>
    implements _$CreateGroupPreferencesRequestDataCopyWith<$Res> {
  __$CreateGroupPreferencesRequestDataCopyWithImpl(this._self, this._then);

  final _CreateGroupPreferencesRequestData _self;
  final $Res Function(_CreateGroupPreferencesRequestData) _then;

/// Create a copy of CreateGroupPreferencesRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communicationId = freezed,Object? sleepId = freezed,Object? badHabitsId = freezed,Object? guestsId = freezed,Object? noiseLevelId = freezed,Object? cleaningId = freezed,Object? petsId = freezed,Object? petsAttitudeId = freezed,}) {
  return _then(_CreateGroupPreferencesRequestData(
communicationId: freezed == communicationId ? _self.communicationId : communicationId // ignore: cast_nullable_to_non_nullable
as int?,sleepId: freezed == sleepId ? _self.sleepId : sleepId // ignore: cast_nullable_to_non_nullable
as int?,badHabitsId: freezed == badHabitsId ? _self.badHabitsId : badHabitsId // ignore: cast_nullable_to_non_nullable
as int?,guestsId: freezed == guestsId ? _self.guestsId : guestsId // ignore: cast_nullable_to_non_nullable
as int?,noiseLevelId: freezed == noiseLevelId ? _self.noiseLevelId : noiseLevelId // ignore: cast_nullable_to_non_nullable
as int?,cleaningId: freezed == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as int?,petsId: freezed == petsId ? _self.petsId : petsId // ignore: cast_nullable_to_non_nullable
as int?,petsAttitudeId: freezed == petsAttitudeId ? _self.petsAttitudeId : petsAttitudeId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
