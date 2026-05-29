// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_group_application_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IncomingGroupApplicationDetailModel {

 String get id; AdApplicationStatus get status; String get createdAt; String get updatedAt; GroupListItemModel get group; TenantModel get tenant; TenantProfileModel get tenantProfile;
/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomingGroupApplicationDetailModelCopyWith<IncomingGroupApplicationDetailModel> get copyWith => _$IncomingGroupApplicationDetailModelCopyWithImpl<IncomingGroupApplicationDetailModel>(this as IncomingGroupApplicationDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomingGroupApplicationDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,group,tenant,tenantProfile);

@override
String toString() {
  return 'IncomingGroupApplicationDetailModel(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, group: $group, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class $IncomingGroupApplicationDetailModelCopyWith<$Res>  {
  factory $IncomingGroupApplicationDetailModelCopyWith(IncomingGroupApplicationDetailModel value, $Res Function(IncomingGroupApplicationDetailModel) _then) = _$IncomingGroupApplicationDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, String updatedAt, GroupListItemModel group, TenantModel tenant, TenantProfileModel tenantProfile
});


$GroupListItemModelCopyWith<$Res> get group;$TenantModelCopyWith<$Res> get tenant;$TenantProfileModelCopyWith<$Res> get tenantProfile;

}
/// @nodoc
class _$IncomingGroupApplicationDetailModelCopyWithImpl<$Res>
    implements $IncomingGroupApplicationDetailModelCopyWith<$Res> {
  _$IncomingGroupApplicationDetailModelCopyWithImpl(this._self, this._then);

  final IncomingGroupApplicationDetailModel _self;
  final $Res Function(IncomingGroupApplicationDetailModel) _then;

/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? group = null,Object? tenant = null,Object? tenantProfile = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,tenantProfile: null == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileModel,
  ));
}
/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemModelCopyWith<$Res> get group {
  
  return $GroupListItemModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileModelCopyWith<$Res> get tenantProfile {
  
  return $TenantProfileModelCopyWith<$Res>(_self.tenantProfile, (value) {
    return _then(_self.copyWith(tenantProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [IncomingGroupApplicationDetailModel].
extension IncomingGroupApplicationDetailModelPatterns on IncomingGroupApplicationDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncomingGroupApplicationDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncomingGroupApplicationDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncomingGroupApplicationDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  GroupListItemModel group,  TenantModel tenant,  TenantProfileModel tenantProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.group,_that.tenant,_that.tenantProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  GroupListItemModel group,  TenantModel tenant,  TenantProfileModel tenantProfile)  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel():
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.group,_that.tenant,_that.tenantProfile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  GroupListItemModel group,  TenantModel tenant,  TenantProfileModel tenantProfile)?  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationDetailModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.group,_that.tenant,_that.tenantProfile);case _:
  return null;

}
}

}

/// @nodoc


class _IncomingGroupApplicationDetailModel implements IncomingGroupApplicationDetailModel {
  const _IncomingGroupApplicationDetailModel({this.id = '', this.status = AdApplicationStatus.unknown, this.createdAt = '', this.updatedAt = '', this.group = const GroupListItemModel(), this.tenant = const TenantModel(), this.tenantProfile = const TenantProfileModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  AdApplicationStatus status;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey() final  GroupListItemModel group;
@override@JsonKey() final  TenantModel tenant;
@override@JsonKey() final  TenantProfileModel tenantProfile;

/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomingGroupApplicationDetailModelCopyWith<_IncomingGroupApplicationDetailModel> get copyWith => __$IncomingGroupApplicationDetailModelCopyWithImpl<_IncomingGroupApplicationDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomingGroupApplicationDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,group,tenant,tenantProfile);

@override
String toString() {
  return 'IncomingGroupApplicationDetailModel(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, group: $group, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class _$IncomingGroupApplicationDetailModelCopyWith<$Res> implements $IncomingGroupApplicationDetailModelCopyWith<$Res> {
  factory _$IncomingGroupApplicationDetailModelCopyWith(_IncomingGroupApplicationDetailModel value, $Res Function(_IncomingGroupApplicationDetailModel) _then) = __$IncomingGroupApplicationDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, String updatedAt, GroupListItemModel group, TenantModel tenant, TenantProfileModel tenantProfile
});


@override $GroupListItemModelCopyWith<$Res> get group;@override $TenantModelCopyWith<$Res> get tenant;@override $TenantProfileModelCopyWith<$Res> get tenantProfile;

}
/// @nodoc
class __$IncomingGroupApplicationDetailModelCopyWithImpl<$Res>
    implements _$IncomingGroupApplicationDetailModelCopyWith<$Res> {
  __$IncomingGroupApplicationDetailModelCopyWithImpl(this._self, this._then);

  final _IncomingGroupApplicationDetailModel _self;
  final $Res Function(_IncomingGroupApplicationDetailModel) _then;

/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? group = null,Object? tenant = null,Object? tenantProfile = null,}) {
  return _then(_IncomingGroupApplicationDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,tenantProfile: null == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileModel,
  ));
}

/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemModelCopyWith<$Res> get group {
  
  return $GroupListItemModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of IncomingGroupApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileModelCopyWith<$Res> get tenantProfile {
  
  return $TenantProfileModelCopyWith<$Res>(_self.tenantProfile, (value) {
    return _then(_self.copyWith(tenantProfile: value));
  });
}
}

// dart format on
