// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_application_submit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdApplicationSubmitModel {

 String get id; String get adId; String get status; String get createdAt;
/// Create a copy of AdApplicationSubmitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdApplicationSubmitModelCopyWith<AdApplicationSubmitModel> get copyWith => _$AdApplicationSubmitModelCopyWithImpl<AdApplicationSubmitModel>(this as AdApplicationSubmitModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdApplicationSubmitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.adId, adId) || other.adId == adId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,adId,status,createdAt);

@override
String toString() {
  return 'AdApplicationSubmitModel(id: $id, adId: $adId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AdApplicationSubmitModelCopyWith<$Res>  {
  factory $AdApplicationSubmitModelCopyWith(AdApplicationSubmitModel value, $Res Function(AdApplicationSubmitModel) _then) = _$AdApplicationSubmitModelCopyWithImpl;
@useResult
$Res call({
 String id, String adId, String status, String createdAt
});




}
/// @nodoc
class _$AdApplicationSubmitModelCopyWithImpl<$Res>
    implements $AdApplicationSubmitModelCopyWith<$Res> {
  _$AdApplicationSubmitModelCopyWithImpl(this._self, this._then);

  final AdApplicationSubmitModel _self;
  final $Res Function(AdApplicationSubmitModel) _then;

/// Create a copy of AdApplicationSubmitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? adId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,adId: null == adId ? _self.adId : adId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdApplicationSubmitModel].
extension AdApplicationSubmitModelPatterns on AdApplicationSubmitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdApplicationSubmitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdApplicationSubmitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdApplicationSubmitModel value)  $default,){
final _that = this;
switch (_that) {
case _AdApplicationSubmitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdApplicationSubmitModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdApplicationSubmitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String adId,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdApplicationSubmitModel() when $default != null:
return $default(_that.id,_that.adId,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String adId,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AdApplicationSubmitModel():
return $default(_that.id,_that.adId,_that.status,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String adId,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AdApplicationSubmitModel() when $default != null:
return $default(_that.id,_that.adId,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _AdApplicationSubmitModel implements AdApplicationSubmitModel {
  const _AdApplicationSubmitModel({this.id = '', this.adId = '', this.status = '', this.createdAt = ''});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String adId;
@override@JsonKey() final  String status;
@override@JsonKey() final  String createdAt;

/// Create a copy of AdApplicationSubmitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdApplicationSubmitModelCopyWith<_AdApplicationSubmitModel> get copyWith => __$AdApplicationSubmitModelCopyWithImpl<_AdApplicationSubmitModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdApplicationSubmitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.adId, adId) || other.adId == adId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,adId,status,createdAt);

@override
String toString() {
  return 'AdApplicationSubmitModel(id: $id, adId: $adId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AdApplicationSubmitModelCopyWith<$Res> implements $AdApplicationSubmitModelCopyWith<$Res> {
  factory _$AdApplicationSubmitModelCopyWith(_AdApplicationSubmitModel value, $Res Function(_AdApplicationSubmitModel) _then) = __$AdApplicationSubmitModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String adId, String status, String createdAt
});




}
/// @nodoc
class __$AdApplicationSubmitModelCopyWithImpl<$Res>
    implements _$AdApplicationSubmitModelCopyWith<$Res> {
  __$AdApplicationSubmitModelCopyWithImpl(this._self, this._then);

  final _AdApplicationSubmitModel _self;
  final $Res Function(_AdApplicationSubmitModel) _then;

/// Create a copy of AdApplicationSubmitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? adId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_AdApplicationSubmitModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,adId: null == adId ? _self.adId : adId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
