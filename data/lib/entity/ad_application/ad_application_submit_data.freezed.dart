// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_application_submit_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdApplicationSubmitData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'ad_id') String get adId;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of AdApplicationSubmitData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdApplicationSubmitDataCopyWith<AdApplicationSubmitData> get copyWith => _$AdApplicationSubmitDataCopyWithImpl<AdApplicationSubmitData>(this as AdApplicationSubmitData, _$identity);

  /// Serializes this AdApplicationSubmitData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdApplicationSubmitData&&(identical(other.id, id) || other.id == id)&&(identical(other.adId, adId) || other.adId == adId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,adId,status,createdAt);

@override
String toString() {
  return 'AdApplicationSubmitData(id: $id, adId: $adId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $AdApplicationSubmitDataCopyWith<$Res>  {
  factory $AdApplicationSubmitDataCopyWith(AdApplicationSubmitData value, $Res Function(AdApplicationSubmitData) _then) = _$AdApplicationSubmitDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'ad_id') String adId,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$AdApplicationSubmitDataCopyWithImpl<$Res>
    implements $AdApplicationSubmitDataCopyWith<$Res> {
  _$AdApplicationSubmitDataCopyWithImpl(this._self, this._then);

  final AdApplicationSubmitData _self;
  final $Res Function(AdApplicationSubmitData) _then;

/// Create a copy of AdApplicationSubmitData
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


/// Adds pattern-matching-related methods to [AdApplicationSubmitData].
extension AdApplicationSubmitDataPatterns on AdApplicationSubmitData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdApplicationSubmitData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdApplicationSubmitData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdApplicationSubmitData value)  $default,){
final _that = this;
switch (_that) {
case _AdApplicationSubmitData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdApplicationSubmitData value)?  $default,){
final _that = this;
switch (_that) {
case _AdApplicationSubmitData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'ad_id')  String adId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdApplicationSubmitData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'ad_id')  String adId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AdApplicationSubmitData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'ad_id')  String adId, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AdApplicationSubmitData() when $default != null:
return $default(_that.id,_that.adId,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdApplicationSubmitData implements AdApplicationSubmitData {
  const _AdApplicationSubmitData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'ad_id') this.adId = '', @JsonKey(name: 'status') this.status = '', @JsonKey(name: 'created_at') this.createdAt = ''});
  factory _AdApplicationSubmitData.fromJson(Map<String, dynamic> json) => _$AdApplicationSubmitDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'ad_id') final  String adId;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of AdApplicationSubmitData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdApplicationSubmitDataCopyWith<_AdApplicationSubmitData> get copyWith => __$AdApplicationSubmitDataCopyWithImpl<_AdApplicationSubmitData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdApplicationSubmitDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdApplicationSubmitData&&(identical(other.id, id) || other.id == id)&&(identical(other.adId, adId) || other.adId == adId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,adId,status,createdAt);

@override
String toString() {
  return 'AdApplicationSubmitData(id: $id, adId: $adId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AdApplicationSubmitDataCopyWith<$Res> implements $AdApplicationSubmitDataCopyWith<$Res> {
  factory _$AdApplicationSubmitDataCopyWith(_AdApplicationSubmitData value, $Res Function(_AdApplicationSubmitData) _then) = __$AdApplicationSubmitDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'ad_id') String adId,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$AdApplicationSubmitDataCopyWithImpl<$Res>
    implements _$AdApplicationSubmitDataCopyWith<$Res> {
  __$AdApplicationSubmitDataCopyWithImpl(this._self, this._then);

  final _AdApplicationSubmitData _self;
  final $Res Function(_AdApplicationSubmitData) _then;

/// Create a copy of AdApplicationSubmitData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? adId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_AdApplicationSubmitData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,adId: null == adId ? _self.adId : adId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
