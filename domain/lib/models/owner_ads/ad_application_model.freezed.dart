// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdApplicationModel {

 String get id; AdApplicationStatus get status; String get createdAt; MyAdModel get ad; TenantModel get tenant;
/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdApplicationModelCopyWith<AdApplicationModel> get copyWith => _$AdApplicationModelCopyWithImpl<AdApplicationModel>(this as AdApplicationModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,ad,tenant);

@override
String toString() {
  return 'AdApplicationModel(id: $id, status: $status, createdAt: $createdAt, ad: $ad, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class $AdApplicationModelCopyWith<$Res>  {
  factory $AdApplicationModelCopyWith(AdApplicationModel value, $Res Function(AdApplicationModel) _then) = _$AdApplicationModelCopyWithImpl;
@useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, MyAdModel ad, TenantModel tenant
});


$MyAdModelCopyWith<$Res> get ad;$TenantModelCopyWith<$Res> get tenant;

}
/// @nodoc
class _$AdApplicationModelCopyWithImpl<$Res>
    implements $AdApplicationModelCopyWith<$Res> {
  _$AdApplicationModelCopyWithImpl(this._self, this._then);

  final AdApplicationModel _self;
  final $Res Function(AdApplicationModel) _then;

/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? ad = null,Object? tenant = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,ad: null == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,
  ));
}
/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdModelCopyWith<$Res> get ad {
  
  return $MyAdModelCopyWith<$Res>(_self.ad, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantModelCopyWith<$Res> get tenant {
  
  return $TenantModelCopyWith<$Res>(_self.tenant, (value) {
    return _then(_self.copyWith(tenant: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdApplicationModel].
extension AdApplicationModelPatterns on AdApplicationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdApplicationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdApplicationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdApplicationModel value)  $default,){
final _that = this;
switch (_that) {
case _AdApplicationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdApplicationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdApplicationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  MyAdModel ad,  TenantModel tenant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.ad,_that.tenant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AdApplicationStatus status,  String createdAt,  MyAdModel ad,  TenantModel tenant)  $default,) {final _that = this;
switch (_that) {
case _AdApplicationModel():
return $default(_that.id,_that.status,_that.createdAt,_that.ad,_that.tenant);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AdApplicationStatus status,  String createdAt,  MyAdModel ad,  TenantModel tenant)?  $default,) {final _that = this;
switch (_that) {
case _AdApplicationModel() when $default != null:
return $default(_that.id,_that.status,_that.createdAt,_that.ad,_that.tenant);case _:
  return null;

}
}

}

/// @nodoc


class _AdApplicationModel implements AdApplicationModel {
  const _AdApplicationModel({this.id = '', this.status = AdApplicationStatus.unknown, this.createdAt = '', this.ad = const MyAdModel(), this.tenant = const TenantModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  AdApplicationStatus status;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  MyAdModel ad;
@override@JsonKey() final  TenantModel tenant;

/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdApplicationModelCopyWith<_AdApplicationModel> get copyWith => __$AdApplicationModelCopyWithImpl<_AdApplicationModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdApplicationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ad, ad) || other.ad == ad)&&(identical(other.tenant, tenant) || other.tenant == tenant));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,createdAt,ad,tenant);

@override
String toString() {
  return 'AdApplicationModel(id: $id, status: $status, createdAt: $createdAt, ad: $ad, tenant: $tenant)';
}


}

/// @nodoc
abstract mixin class _$AdApplicationModelCopyWith<$Res> implements $AdApplicationModelCopyWith<$Res> {
  factory _$AdApplicationModelCopyWith(_AdApplicationModel value, $Res Function(_AdApplicationModel) _then) = __$AdApplicationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, AdApplicationStatus status, String createdAt, MyAdModel ad, TenantModel tenant
});


@override $MyAdModelCopyWith<$Res> get ad;@override $TenantModelCopyWith<$Res> get tenant;

}
/// @nodoc
class __$AdApplicationModelCopyWithImpl<$Res>
    implements _$AdApplicationModelCopyWith<$Res> {
  __$AdApplicationModelCopyWithImpl(this._self, this._then);

  final _AdApplicationModel _self;
  final $Res Function(_AdApplicationModel) _then;

/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? createdAt = null,Object? ad = null,Object? tenant = null,}) {
  return _then(_AdApplicationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AdApplicationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,ad: null == ad ? _self.ad : ad // ignore: cast_nullable_to_non_nullable
as MyAdModel,tenant: null == tenant ? _self.tenant : tenant // ignore: cast_nullable_to_non_nullable
as TenantModel,
  ));
}

/// Create a copy of AdApplicationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyAdModelCopyWith<$Res> get ad {
  
  return $MyAdModelCopyWith<$Res>(_self.ad, (value) {
    return _then(_self.copyWith(ad: value));
  });
}/// Create a copy of AdApplicationModel
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
