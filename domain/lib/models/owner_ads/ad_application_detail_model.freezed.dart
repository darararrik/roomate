// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_application_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdApplicationDetailModel {

 String get id; AdApplicationStatus get status; String get createdAt; String get updatedAt; MyAdModel get ad; TenantModel get tenant; TenantProfileModel get tenantProfile;
/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdApplicationDetailModelCopyWith<AdApplicationDetailModel> get copyWith => _$AdApplicationDetailModelCopyWithImpl<AdApplicationDetailModel>(this as AdApplicationDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdApplicationDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,ad,tenant,tenantProfile);

@override
String toString() {
  return 'AdApplicationDetailModel(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ad: $ad, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class $AdApplicationDetailModelCopyWith<$Res>  {
  factory $AdApplicationDetailModelCopyWith(AdApplicationDetailModel value, $Res Function(AdApplicationDetailModel) _then) = _$AdApplicationDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, String updatedAt, MyAdModel ad, TenantModel tenant, TenantProfileModel tenantProfile
});


$MyAdModelCopyWith<$Res> get ad;$TenantModelCopyWith<$Res> get tenant;$TenantProfileModelCopyWith<$Res> get tenantProfile;

}
/// @nodoc
class _$AdApplicationDetailModelCopyWithImpl<$Res>
    implements $AdApplicationDetailModelCopyWith<$Res> {
  _$AdApplicationDetailModelCopyWithImpl(this._self, this._then);

  final AdApplicationDetailModel _self;
  final $Res Function(AdApplicationDetailModel) _then;

/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ad = null,Object? tenant = null,Object? tenantProfile = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,ad: null == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,tenantProfile: null == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileModel,
  ));
}
/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdModelCopyWith<$Res> get ad {
  
  return $MyAdModelCopyWith<$Res>(_self.ad, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantProfileModelCopyWith<$Res> get tenantProfile {
  
  return $TenantProfileModelCopyWith<$Res>(_self.tenantProfile, (value) {
    return _then(_self.copyWith(tenantProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdApplicationDetailModel].
extension AdApplicationDetailModelPatterns on AdApplicationDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdApplicationDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdApplicationDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdApplicationDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _AdApplicationDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdApplicationDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdApplicationDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  MyAdModel ad,  TenantModel tenant,  TenantProfileModel tenantProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdApplicationDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  MyAdModel ad,  TenantModel tenant,  TenantProfileModel tenantProfile)  $default,) {final _that = this;
switch (_that) {
case _AdApplicationDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AdApplicationStatus status,  String createdAt,  String updatedAt,  MyAdModel ad,  TenantModel tenant,  TenantProfileModel tenantProfile)?  $default,) {final _that = this;
switch (_that) {
case _AdApplicationDetailModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.updatedAt,_that.ad,_that.tenant,_that.tenantProfile);case _:
  return null;

}
}

}

/// @nodoc


class _AdApplicationDetailModel implements AdApplicationDetailModel {
  const _AdApplicationDetailModel({this.id = '', this.status = AdApplicationStatus.unknown, this.createdAt = '', this.updatedAt = '', this.ad = const MyAdModel(), this.tenant = const TenantModel(), this.tenantProfile = const TenantProfileModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  AdApplicationStatus status;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey() final  MyAdModel ad;
@override@JsonKey() final  TenantModel tenant;
@override@JsonKey() final  TenantProfileModel tenantProfile;

/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdApplicationDetailModelCopyWith<_AdApplicationDetailModel> get copyWith => __$AdApplicationDetailModelCopyWithImpl<_AdApplicationDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdApplicationDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant)&&(identical(other.tenantProfile, tenantProfile) || other.tenantProfile == tenantProfile));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,updatedAt,ad,tenant,tenantProfile);

@override
String toString() {
  return 'AdApplicationDetailModel(id: $id, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ad: $ad, tenant: $tenant, tenantProfile: $tenantProfile)';
}


}

/// @nodoc
abstract mixin class _$AdApplicationDetailModelCopyWith<$Res> implements $AdApplicationDetailModelCopyWith<$Res> {
  factory _$AdApplicationDetailModelCopyWith(_AdApplicationDetailModel value, $Res Function(_AdApplicationDetailModel) _then) = __$AdApplicationDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, String updatedAt, MyAdModel ad, TenantModel tenant, TenantProfileModel tenantProfile
});


@override $MyAdModelCopyWith<$Res> get ad;@override $TenantModelCopyWith<$Res> get tenant;@override $TenantProfileModelCopyWith<$Res> get tenantProfile;

}
/// @nodoc
class __$AdApplicationDetailModelCopyWithImpl<$Res>
    implements _$AdApplicationDetailModelCopyWith<$Res> {
  __$AdApplicationDetailModelCopyWithImpl(this._self, this._then);

  final _AdApplicationDetailModel _self;
  final $Res Function(_AdApplicationDetailModel) _then;

/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? ad = null,Object? tenant = null,Object? tenantProfile = null,}) {
  return _then(_AdApplicationDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,ad: null == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,tenantProfile: null == tenantProfile ? _self.tenantProfile : tenantProfile // ignore: cast_nullable_to_non_nullable
as TenantProfileModel,
  ));
}

/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdModelCopyWith<$Res> get ad {
  
  return $MyAdModelCopyWith<$Res>(_self.ad, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}/// Create a copy of AdApplicationDetailModel
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
