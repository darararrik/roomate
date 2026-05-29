// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incoming_group_application_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncomingGroupApplicationData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'group') GroupListItemData? get group;@JsonKey(name: 'applicant') TenantData? get tenant;@JsonKey(name: 'applicant_profile') TenantProfileData? get applicantProfile;
/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomingGroupApplicationDataCopyWith<IncomingGroupApplicationData> get copyWith => _$IncomingGroupApplicationDataCopyWithImpl<IncomingGroupApplicationData>(this as IncomingGroupApplicationData, _$identity);

  /// Serializes this IncomingGroupApplicationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomingGroupApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.applicantProfile, applicantProfile) || other.applicantProfile == applicantProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,group,tenant,applicantProfile);

@override
String toString() {
  return 'IncomingGroupApplicationData(id: $id, status: $status, createdAt: $createdAt, group: $group, tenant: $tenant, applicantProfile: $applicantProfile)';
}


}

/// @nodoc
abstract mixin class $IncomingGroupApplicationDataCopyWith<$Res>  {
  factory $IncomingGroupApplicationDataCopyWith(IncomingGroupApplicationData value, $Res Function(IncomingGroupApplicationData) _then) = _$IncomingGroupApplicationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'group') GroupListItemData? group,@JsonKey(name: 'applicant') TenantData? tenant,@JsonKey(name: 'applicant_profile') TenantProfileData? applicantProfile
});


$GroupListItemDataCopyWith<$Res>? get group;$TenantDataCopyWith<$Res>? get tenant;$TenantProfileDataCopyWith<$Res>? get applicantProfile;

}
/// @nodoc
class _$IncomingGroupApplicationDataCopyWithImpl<$Res>
    implements $IncomingGroupApplicationDataCopyWith<$Res> {
  _$IncomingGroupApplicationDataCopyWithImpl(this._self, this._then);

  final IncomingGroupApplicationData _self;
  final $Res Function(IncomingGroupApplicationData) _then;

/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? group = freezed,Object? tenant = freezed,Object? applicantProfile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemData?,tenant: freezed == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantData?,applicantProfile: freezed == applicantProfile ? _self.applicantProfile : applicantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileData?,
  ));
}
/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemDataCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupListItemDataCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantDataCopyWith<$Res>? get tenant {
    if (_self.tenant == null) {
    return null;
  }

  return $TenantDataCopyWith<$Res>(_self.tenant!, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileDataCopyWith<$Res>? get applicantProfile {
    if (_self.applicantProfile == null) {
    return null;
  }

  return $TenantProfileDataCopyWith<$Res>(_self.applicantProfile!, (value) {
    return _then(_self.copyWith(applicantProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [IncomingGroupApplicationData].
extension IncomingGroupApplicationDataPatterns on IncomingGroupApplicationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncomingGroupApplicationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncomingGroupApplicationData value)  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncomingGroupApplicationData value)?  $default,){
final _that = this;
switch (_that) {
case _IncomingGroupApplicationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'group')  GroupListItemData? group, @JsonKey(name: 'applicant')  TenantData? tenant, @JsonKey(name: 'applicant_profile')  TenantProfileData? applicantProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationData() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant,_that.applicantProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'group')  GroupListItemData? group, @JsonKey(name: 'applicant')  TenantData? tenant, @JsonKey(name: 'applicant_profile')  TenantProfileData? applicantProfile)  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationData():
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant,_that.applicantProfile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'group')  GroupListItemData? group, @JsonKey(name: 'applicant')  TenantData? tenant, @JsonKey(name: 'applicant_profile')  TenantProfileData? applicantProfile)?  $default,) {final _that = this;
switch (_that) {
case _IncomingGroupApplicationData() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.group,_that.tenant,_that.applicantProfile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IncomingGroupApplicationData implements IncomingGroupApplicationData {
  const _IncomingGroupApplicationData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'status') this.status = '', @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'group') this.group, @JsonKey(name: 'applicant') this.tenant, @JsonKey(name: 'applicant_profile') this.applicantProfile});
  factory _IncomingGroupApplicationData.fromJson(Map<String, dynamic> json) => _$IncomingGroupApplicationDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'group') final  GroupListItemData? group;
@override@JsonKey(name: 'applicant') final  TenantData? tenant;
@override@JsonKey(name: 'applicant_profile') final  TenantProfileData? applicantProfile;

/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomingGroupApplicationDataCopyWith<_IncomingGroupApplicationData> get copyWith => __$IncomingGroupApplicationDataCopyWithImpl<_IncomingGroupApplicationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncomingGroupApplicationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomingGroupApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.group, group) || other.group == group)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.applicantProfile, applicantProfile) || other.applicantProfile == applicantProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,group,tenant,applicantProfile);

@override
String toString() {
  return 'IncomingGroupApplicationData(id: $id, status: $status, createdAt: $createdAt, group: $group, tenant: $tenant, applicantProfile: $applicantProfile)';
}


}

/// @nodoc
abstract mixin class _$IncomingGroupApplicationDataCopyWith<$Res> implements $IncomingGroupApplicationDataCopyWith<$Res> {
  factory _$IncomingGroupApplicationDataCopyWith(_IncomingGroupApplicationData value, $Res Function(_IncomingGroupApplicationData) _then) = __$IncomingGroupApplicationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'group') GroupListItemData? group,@JsonKey(name: 'applicant') TenantData? tenant,@JsonKey(name: 'applicant_profile') TenantProfileData? applicantProfile
});


@override $GroupListItemDataCopyWith<$Res>? get group;@override $TenantDataCopyWith<$Res>? get tenant;@override $TenantProfileDataCopyWith<$Res>? get applicantProfile;

}
/// @nodoc
class __$IncomingGroupApplicationDataCopyWithImpl<$Res>
    implements _$IncomingGroupApplicationDataCopyWith<$Res> {
  __$IncomingGroupApplicationDataCopyWithImpl(this._self, this._then);

  final _IncomingGroupApplicationData _self;
  final $Res Function(_IncomingGroupApplicationData) _then;

/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? group = freezed,Object? tenant = freezed,Object? applicantProfile = freezed,}) {
  return _then(_IncomingGroupApplicationData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupListItemData?,tenant: freezed == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantData?,applicantProfile: freezed == applicantProfile ? _self.applicantProfile : applicantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileData?,
  ));
}

/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupListItemDataCopyWith<$Res>? get group {
    if (_self.group == null) {
    return null;
  }

  return $GroupListItemDataCopyWith<$Res>(_self.group!, (value) {
    return _then(_self.copyWith(group: value));
  });
}/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantDataCopyWith<$Res>? get tenant {
    if (_self.tenant == null) {
    return null;
  }

  return $TenantDataCopyWith<$Res>(_self.tenant!, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of IncomingGroupApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileDataCopyWith<$Res>? get applicantProfile {
    if (_self.applicantProfile == null) {
    return null;
  }

  return $TenantProfileDataCopyWith<$Res>(_self.applicantProfile!, (value) {
    return _then(_self.copyWith(applicantProfile: value));
  });
}
}

// dart format on
