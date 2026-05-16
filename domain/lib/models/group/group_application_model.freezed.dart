// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupApplicationModel {

 String get id; String get groupId; String get status; String get createdAt;
/// Create a copy of GroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupApplicationModelCopyWith<GroupApplicationModel> get copyWith => _$GroupApplicationModelCopyWithImpl<GroupApplicationModel>(this as GroupApplicationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupId,status,createdAt);

@override
String toString() {
  return 'GroupApplicationModel(id: $id, groupId: $groupId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GroupApplicationModelCopyWith<$Res>  {
  factory $GroupApplicationModelCopyWith(GroupApplicationModel value, $Res Function(GroupApplicationModel) _then) = _$GroupApplicationModelCopyWithImpl;
@useResult
$Res call({
 String id, String groupId, String status, String createdAt
});




}
/// @nodoc
class _$GroupApplicationModelCopyWithImpl<$Res>
    implements $GroupApplicationModelCopyWith<$Res> {
  _$GroupApplicationModelCopyWithImpl(this._self, this._then);

  final GroupApplicationModel _self;
  final $Res Function(GroupApplicationModel) _then;

/// Create a copy of GroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupApplicationModel].
extension GroupApplicationModelPatterns on GroupApplicationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupApplicationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupApplicationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupApplicationModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupApplicationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupApplicationModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupApplicationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String groupId,  String status,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupApplicationModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String groupId,  String status,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _GroupApplicationModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String groupId,  String status,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GroupApplicationModel() when $default != null:
return $default(_that.id,_that.groupId,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _GroupApplicationModel implements GroupApplicationModel {
  const _GroupApplicationModel({this.id = '', this.groupId = '', this.status = '', this.createdAt = ''});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String groupId;
@override@JsonKey() final  String status;
@override@JsonKey() final  String createdAt;

/// Create a copy of GroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupApplicationModelCopyWith<_GroupApplicationModel> get copyWith => __$GroupApplicationModelCopyWithImpl<_GroupApplicationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,groupId,status,createdAt);

@override
String toString() {
  return 'GroupApplicationModel(id: $id, groupId: $groupId, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GroupApplicationModelCopyWith<$Res> implements $GroupApplicationModelCopyWith<$Res> {
  factory _$GroupApplicationModelCopyWith(_GroupApplicationModel value, $Res Function(_GroupApplicationModel) _then) = __$GroupApplicationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String groupId, String status, String createdAt
});




}
/// @nodoc
class __$GroupApplicationModelCopyWithImpl<$Res>
    implements _$GroupApplicationModelCopyWith<$Res> {
  __$GroupApplicationModelCopyWithImpl(this._self, this._then);

  final _GroupApplicationModel _self;
  final $Res Function(_GroupApplicationModel) _then;

/// Create a copy of GroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupId = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_GroupApplicationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
