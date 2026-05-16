// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_application_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupApplicationData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'group_id') String? get groupId;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of GroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupApplicationDataCopyWith<GroupApplicationData> get copyWith => _$GroupApplicationDataCopyWithImpl<GroupApplicationData>(this as GroupApplicationData, _$identity);

  /// Serializes this GroupApplicationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,status,createdAt);

@override
String toString() {
  return 'GroupApplicationData(id: $id, groupId: $groupId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GroupApplicationDataCopyWith<$Res>  {
  factory $GroupApplicationDataCopyWith(GroupApplicationData value, $Res Function(GroupApplicationData) _then) = _$GroupApplicationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$GroupApplicationDataCopyWithImpl<$Res>
    implements $GroupApplicationDataCopyWith<$Res> {
  _$GroupApplicationDataCopyWithImpl(this._self, this._then);

  final GroupApplicationData _self;
  final $Res Function(GroupApplicationData) _then;

/// Create a copy of GroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? groupId = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupApplicationData].
extension GroupApplicationDataPatterns on GroupApplicationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupApplicationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupApplicationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupApplicationData value)  $default,){
final _that = this;
switch (_that) {
case _GroupApplicationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupApplicationData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupApplicationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupApplicationData() when $default != null:
return $default(_that.id,_that.groupId,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _GroupApplicationData():
return $default(_that.id,_that.groupId,_that.status,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GroupApplicationData() when $default != null:
return $default(_that.id,_that.groupId,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupApplicationData implements GroupApplicationData {
  const _GroupApplicationData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'status') this.status, @JsonKey(name: 'created_at') this.createdAt});
  factory _GroupApplicationData.fromJson(Map<String, dynamic> json) => _$GroupApplicationDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'group_id') final  String? groupId;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of GroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupApplicationDataCopyWith<_GroupApplicationData> get copyWith => __$GroupApplicationDataCopyWithImpl<_GroupApplicationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupApplicationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupId,status,createdAt);

@override
String toString() {
  return 'GroupApplicationData(id: $id, groupId: $groupId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GroupApplicationDataCopyWith<$Res> implements $GroupApplicationDataCopyWith<$Res> {
  factory _$GroupApplicationDataCopyWith(_GroupApplicationData value, $Res Function(_GroupApplicationData) _then) = __$GroupApplicationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$GroupApplicationDataCopyWithImpl<$Res>
    implements _$GroupApplicationDataCopyWith<$Res> {
  __$GroupApplicationDataCopyWithImpl(this._self, this._then);

  final _GroupApplicationData _self;
  final $Res Function(_GroupApplicationData) _then;

/// Create a copy of GroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? groupId = freezed,Object? status = freezed,Object? createdAt = freezed,}) {
  return _then(_GroupApplicationData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
