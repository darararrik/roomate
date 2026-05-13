// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'who_search_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WhoSearchFilterModel {

 GenderEnum? get gender; int? get minAge; int? get maxAge; int? get minGroupSize; int? get maxGroupSize; String get searchQuery; bool get childrenAllowed; bool get partnerAllowed; bool get petsAllowed; bool get smokingAllowed;
/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WhoSearchFilterModelCopyWith<WhoSearchFilterModel> get copyWith => _$WhoSearchFilterModelCopyWithImpl<WhoSearchFilterModel>(this as WhoSearchFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WhoSearchFilterModel&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minGroupSize, minGroupSize) || other.minGroupSize == minGroupSize)&&(identical(other.maxGroupSize, maxGroupSize) || other.maxGroupSize == maxGroupSize)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}


@override
int get hashCode => Object.hash(runtimeType,gender,minAge,maxAge,minGroupSize,maxGroupSize,searchQuery,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'WhoSearchFilterModel(gender: $gender, minAge: $minAge, maxAge: $maxAge, minGroupSize: $minGroupSize, maxGroupSize: $maxGroupSize, searchQuery: $searchQuery, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class $WhoSearchFilterModelCopyWith<$Res>  {
  factory $WhoSearchFilterModelCopyWith(WhoSearchFilterModel value, $Res Function(WhoSearchFilterModel) _then) = _$WhoSearchFilterModelCopyWithImpl;
@useResult
$Res call({
 GenderEnum? gender, int? minAge, int? maxAge, int? minGroupSize, int? maxGroupSize, String searchQuery, bool childrenAllowed, bool partnerAllowed, bool petsAllowed, bool smokingAllowed
});




}
/// @nodoc
class _$WhoSearchFilterModelCopyWithImpl<$Res>
    implements $WhoSearchFilterModelCopyWith<$Res> {
  _$WhoSearchFilterModelCopyWithImpl(this._self, this._then);

  final WhoSearchFilterModel _self;
  final $Res Function(WhoSearchFilterModel) _then;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minGroupSize = freezed,Object? maxGroupSize = freezed,Object? searchQuery = null,Object? childrenAllowed = null,Object? partnerAllowed = null,Object? petsAllowed = null,Object? smokingAllowed = null,}) {
  return _then(_self.copyWith(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minGroupSize: freezed == minGroupSize ? _self.minGroupSize : minGroupSize // ignore: cast_nullable_to_non_nullable
as int?,maxGroupSize: freezed == maxGroupSize ? _self.maxGroupSize : maxGroupSize // ignore: cast_nullable_to_non_nullable
as int?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,partnerAllowed: null == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,smokingAllowed: null == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WhoSearchFilterModel].
extension WhoSearchFilterModelPatterns on WhoSearchFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WhoSearchFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WhoSearchFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WhoSearchFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GenderEnum? gender,  int? minAge,  int? maxAge,  int? minGroupSize,  int? maxGroupSize,  String searchQuery,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
return $default(_that.gender,_that.minAge,_that.maxAge,_that.minGroupSize,_that.maxGroupSize,_that.searchQuery,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GenderEnum? gender,  int? minAge,  int? maxAge,  int? minGroupSize,  int? maxGroupSize,  String searchQuery,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed)  $default,) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel():
return $default(_that.gender,_that.minAge,_that.maxAge,_that.minGroupSize,_that.maxGroupSize,_that.searchQuery,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GenderEnum? gender,  int? minAge,  int? maxAge,  int? minGroupSize,  int? maxGroupSize,  String searchQuery,  bool childrenAllowed,  bool partnerAllowed,  bool petsAllowed,  bool smokingAllowed)?  $default,) {final _that = this;
switch (_that) {
case _WhoSearchFilterModel() when $default != null:
return $default(_that.gender,_that.minAge,_that.maxAge,_that.minGroupSize,_that.maxGroupSize,_that.searchQuery,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
  return null;

}
}

}

/// @nodoc


class _WhoSearchFilterModel implements WhoSearchFilterModel {
  const _WhoSearchFilterModel({this.gender, this.minAge, this.maxAge, this.minGroupSize, this.maxGroupSize, this.searchQuery = '', this.childrenAllowed = false, this.partnerAllowed = false, this.petsAllowed = false, this.smokingAllowed = false});
  

@override final  GenderEnum? gender;
@override final  int? minAge;
@override final  int? maxAge;
@override final  int? minGroupSize;
@override final  int? maxGroupSize;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  bool childrenAllowed;
@override@JsonKey() final  bool partnerAllowed;
@override@JsonKey() final  bool petsAllowed;
@override@JsonKey() final  bool smokingAllowed;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WhoSearchFilterModelCopyWith<_WhoSearchFilterModel> get copyWith => __$WhoSearchFilterModelCopyWithImpl<_WhoSearchFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WhoSearchFilterModel&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.minGroupSize, minGroupSize) || other.minGroupSize == minGroupSize)&&(identical(other.maxGroupSize, maxGroupSize) || other.maxGroupSize == maxGroupSize)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}


@override
int get hashCode => Object.hash(runtimeType,gender,minAge,maxAge,minGroupSize,maxGroupSize,searchQuery,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'WhoSearchFilterModel(gender: $gender, minAge: $minAge, maxAge: $maxAge, minGroupSize: $minGroupSize, maxGroupSize: $maxGroupSize, searchQuery: $searchQuery, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class _$WhoSearchFilterModelCopyWith<$Res> implements $WhoSearchFilterModelCopyWith<$Res> {
  factory _$WhoSearchFilterModelCopyWith(_WhoSearchFilterModel value, $Res Function(_WhoSearchFilterModel) _then) = __$WhoSearchFilterModelCopyWithImpl;
@override @useResult
$Res call({
 GenderEnum? gender, int? minAge, int? maxAge, int? minGroupSize, int? maxGroupSize, String searchQuery, bool childrenAllowed, bool partnerAllowed, bool petsAllowed, bool smokingAllowed
});




}
/// @nodoc
class __$WhoSearchFilterModelCopyWithImpl<$Res>
    implements _$WhoSearchFilterModelCopyWith<$Res> {
  __$WhoSearchFilterModelCopyWithImpl(this._self, this._then);

  final _WhoSearchFilterModel _self;
  final $Res Function(_WhoSearchFilterModel) _then;

/// Create a copy of WhoSearchFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? minGroupSize = freezed,Object? maxGroupSize = freezed,Object? searchQuery = null,Object? childrenAllowed = null,Object? partnerAllowed = null,Object? petsAllowed = null,Object? smokingAllowed = null,}) {
  return _then(_WhoSearchFilterModel(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderEnum?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,minGroupSize: freezed == minGroupSize ? _self.minGroupSize : minGroupSize // ignore: cast_nullable_to_non_nullable
as int?,maxGroupSize: freezed == maxGroupSize ? _self.maxGroupSize : maxGroupSize // ignore: cast_nullable_to_non_nullable
as int?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,childrenAllowed: null == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool,partnerAllowed: null == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool,petsAllowed: null == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool,smokingAllowed: null == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
