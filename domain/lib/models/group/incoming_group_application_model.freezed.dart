// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_group_application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IncomingGroupApplicationModel {

 String get id; AdApplicationStatus get status; String get createdAt; GroupListItemModel get group; TenantModel get tenant;
/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomingGroupApplicationModelCopyWith<IncomingGroupApplicationModel> get copyWith => _$IncomingGroupApplicationModelCopyWithImpl<IncomingGroupApplicationModel>(this as IncomingGroupApplicationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomingGroupApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,group,tenant);

@override
String toString() {
  return 'IncomingGroupApplicationModel(id: $id, status: $status, createdAt: $createdAt, group: $group, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class $IncomingGroupApplicationModelCopyWith<$Res>  {
  factory $IncomingGroupApplicationModelCopyWith(IncomingGroupApplicationModel value, $Res Function(IncomingGroupApplicationModel) _then) = _$IncomingGroupApplicationModelCopyWithImpl;
@useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, GroupListItemModel group, TenantModel tenant
});


$GroupListItemModelCopyWith<$Res> get group;$TenantModelCopyWith<$Res> get tenant;

}
/// @nodoc
class _$IncomingGroupApplicationModelCopyWithImpl<$Res>
    implements $IncomingGroupApplicationModelCopyWith<$Res> {
  _$IncomingGroupApplicationModelCopyWithImpl(this._self, this._then);

  final IncomingGroupApplicationModel _self;
  final $Res Function(IncomingGroupApplicationModel) _then;

/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? group = null,Object? tenant = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,
  ));
}
/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemModelCopyWith<$Res> get group {
  
  return $GroupListItemModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}
}


/// Adds pattern-matching-related methods to [IncomingGroupApplicationModel].
extension IncomingGroupApplicationModelPatterns on IncomingGroupApplicationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncomingGroupApplicationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncomingGroupApplicationModel value)  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncomingGroupApplicationModel value)?  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  GroupListItemModel group,  TenantModel tenant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  GroupListItemModel group,  TenantModel tenant)  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel():
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AdApplicationStatus status,  String createdAt,  GroupListItemModel group,  TenantModel tenant)?  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant);case _:
  return null;

}
}

}

/// @nodoc


class _IncomingGroupApplicationModel implements IncomingGroupApplicationModel {
  const _IncomingGroupApplicationModel({this.id = '', this.status = AdApplicationStatus.unknown, this.createdAt = '', this.group = const GroupListItemModel(), this.tenant = const TenantModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  AdApplicationStatus status;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  GroupListItemModel group;
@override@JsonKey() final  TenantModel tenant;

/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomingGroupApplicationModelCopyWith<_IncomingGroupApplicationModel> get copyWith => __$IncomingGroupApplicationModelCopyWithImpl<_IncomingGroupApplicationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomingGroupApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,group,tenant);

@override
String toString() {
  return 'IncomingGroupApplicationModel(id: $id, status: $status, createdAt: $createdAt, group: $group, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class _$IncomingGroupApplicationModelCopyWith<$Res> implements $IncomingGroupApplicationModelCopyWith<$Res> {
  factory _$IncomingGroupApplicationModelCopyWith(_IncomingGroupApplicationModel value, $Res Function(_IncomingGroupApplicationModel) _then) = __$IncomingGroupApplicationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, GroupListItemModel group, TenantModel tenant
});


@override $GroupListItemModelCopyWith<$Res> get group;@override $TenantModelCopyWith<$Res> get tenant;

}
/// @nodoc
class __$IncomingGroupApplicationModelCopyWithImpl<$Res>
    implements _$IncomingGroupApplicationModelCopyWith<$Res> {
  __$IncomingGroupApplicationModelCopyWithImpl(this._self, this._then);

  final _IncomingGroupApplicationModel _self;
  final $Res Function(_IncomingGroupApplicationModel) _then;

/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? group = null,Object? tenant = null,}) {
  return _then(_IncomingGroupApplicationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,
  ));
}

/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemModelCopyWith<$Res> get group {
  
  return $GroupListItemModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}
}

// dart format on
