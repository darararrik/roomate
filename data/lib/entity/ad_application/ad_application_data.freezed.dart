// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_application_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdApplicationData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'status') String get status;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'ad') MyAdData? get ad;@JsonKey(name: 'tenant') TenantData? get tenant;@JsonKey(name: 'tenant_profile') TenantProfileData? get tenantProfile;
/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdApplicationDataCopyWith<AdApplicationData> get copyWith => _$AdApplicationDataCopyWithImpl<AdApplicationData>(this as AdApplicationData, _$identity);

  /// Serializes this AdApplicationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,ad,tenant,tenantProfile);

@override
String toString() {
  return 'AdApplicationData(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ad: $ad, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class $AdApplicationDataCopyWith<$Res>  {
  factory $AdApplicationDataCopyWith(AdApplicationData value, $Res Function(AdApplicationData) _then) = _$AdApplicationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'ad') MyAdData? ad,@JsonKey(name: 'tenant') TenantData? tenant,@JsonKey(name: 'tenant_profile') TenantProfileData? tenantProfile
});


$MyAdDataCopyWith<$Res>? get ad;$TenantDataCopyWith<$Res>? get tenant;$TenantProfileDataCopyWith<$Res>? get tenantProfile;

}
/// @nodoc
class _$AdApplicationDataCopyWithImpl<$Res>
    implements $AdApplicationDataCopyWith<$Res> {
  _$AdApplicationDataCopyWithImpl(this._self, this._then);

  final AdApplicationData _self;
  final $Res Function(AdApplicationData) _then;

/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ad = freezed,Object? tenant = freezed,Object? tenantProfile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,ad: freezed == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdData?,tenant: freezed == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantData?,tenantProfile: freezed == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileData?,
  ));
}
/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdDataCopyWith<$Res>? get ad {
    if (_self.ad == null) {
    return null;
  }

  return $MyAdDataCopyWith<$Res>(_self.ad!, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationData
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
}/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileDataCopyWith<$Res>? get tenantProfile {
    if (_self.tenantProfile == null) {
    return null;
  }

  return $TenantProfileDataCopyWith<$Res>(_self.tenantProfile!, (value) {
    return _then(_self.copyWith(tenantProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdApplicationData].
extension AdApplicationDataPatterns on AdApplicationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdApplicationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdApplicationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdApplicationData value)  $default,){
final _that = this;
switch (_that) {
case _AdApplicationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdApplicationData value)?  $default,){
final _that = this;
switch (_that) {
case _AdApplicationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'ad')  MyAdData? ad, @JsonKey(name: 'tenant')  TenantData? tenant, @JsonKey(name: 'tenant_profile')  TenantProfileData? tenantProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdApplicationData() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.ad,_that.tenant,_that.tenantProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'ad')  MyAdData? ad, @JsonKey(name: 'tenant')  TenantData? tenant, @JsonKey(name: 'tenant_profile')  TenantProfileData? tenantProfile)  $default,) {final _that = this;
switch (_that) {
case _AdApplicationData():
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.ad,_that.tenant,_that.tenantProfile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'status')  String status, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'ad')  MyAdData? ad, @JsonKey(name: 'tenant')  TenantData? tenant, @JsonKey(name: 'tenant_profile')  TenantProfileData? tenantProfile)?  $default,) {final _that = this;
switch (_that) {
case _AdApplicationData() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.ad,_that.tenant,_that.tenantProfile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdApplicationData implements AdApplicationData {
  const _AdApplicationData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'status') this.status = '', @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = '', @JsonKey(name: 'ad') this.ad, @JsonKey(name: 'tenant') this.tenant, @JsonKey(name: 'tenant_profile') this.tenantProfile});
  factory _AdApplicationData.fromJson(Map<String, dynamic> json) => _$AdApplicationDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'ad') final  MyAdData? ad;
@override@JsonKey(name: 'tenant') final  TenantData? tenant;
@override@JsonKey(name: 'tenant_profile') final  TenantProfileData? tenantProfile;

/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdApplicationDataCopyWith<_AdApplicationData> get copyWith => __$AdApplicationDataCopyWithImpl<_AdApplicationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdApplicationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdApplicationData&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,ad,tenant,tenantProfile);

@override
String toString() {
  return 'AdApplicationData(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ad: $ad, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class _$AdApplicationDataCopyWith<$Res> implements $AdApplicationDataCopyWith<$Res> {
  factory _$AdApplicationDataCopyWith(_AdApplicationData value, $Res Function(_AdApplicationData) _then) = __$AdApplicationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'status') String status,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'ad') MyAdData? ad,@JsonKey(name: 'tenant') TenantData? tenant,@JsonKey(name: 'tenant_profile') TenantProfileData? tenantProfile
});


@override $MyAdDataCopyWith<$Res>? get ad;@override $TenantDataCopyWith<$Res>? get tenant;@override $TenantProfileDataCopyWith<$Res>? get tenantProfile;

}
/// @nodoc
class __$AdApplicationDataCopyWithImpl<$Res>
    implements _$AdApplicationDataCopyWith<$Res> {
  __$AdApplicationDataCopyWithImpl(this._self, this._then);

  final _AdApplicationData _self;
  final $Res Function(_AdApplicationData) _then;

/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ad = freezed,Object? tenant = freezed,Object? tenantProfile = freezed,}) {
  return _then(_AdApplicationData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,ad: freezed == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdData?,tenant: freezed == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantData?,tenantProfile: freezed == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileData?,
  ));
}

/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdDataCopyWith<$Res>? get ad {
    if (_self.ad == null) {
    return null;
  }

  return $MyAdDataCopyWith<$Res>(_self.ad!, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationData
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
}/// Create a copy of AdApplicationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileDataCopyWith<$Res>? get tenantProfile {
    if (_self.tenantProfile == null) {
    return null;
  }

  return $TenantProfileDataCopyWith<$Res>(_self.tenantProfile!, (value) {
    return _then(_self.copyWith(tenantProfile: value));
  });
}
}

// dart format on
