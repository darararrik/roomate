// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupDetailModel {

 String get id; String get title; String get description; int get matchPercent; int get participantsCount; int get maxParticipantsCount; String get status; String get applicationStatus; String get ownerUserId; GroupConditionsModel get conditions; ApartamentModel get apartament; String get createdAt; String get updatedAt; bool get isFavorite;
/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDetailModelCopyWith<GroupDetailModel> get copyWith => _$GroupDetailModelCopyWithImpl<GroupDetailModel>(this as GroupDetailModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,status,applicationStatus,ownerUserId,conditions,apartament,createdAt,updatedAt,isFavorite);

@override
String toString() {
  return 'GroupDetailModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, status: $status, applicationStatus: $applicationStatus, ownerUserId: $ownerUserId, conditions: $conditions, apartament: $apartament, createdAt: $createdAt, updatedAt: $updatedAt, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $GroupDetailModelCopyWith<$Res>  {
  factory $GroupDetailModelCopyWith(GroupDetailModel value, $Res Function(GroupDetailModel) _then) = _$GroupDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, String status, String applicationStatus, String ownerUserId, GroupConditionsModel conditions, ApartamentModel apartament, String createdAt, String updatedAt, bool isFavorite
});


$GroupConditionsModelCopyWith<$Res> get conditions;$ApartamentModelCopyWith<$Res> get apartament;

}
/// @nodoc
class _$GroupDetailModelCopyWithImpl<$Res>
    implements $GroupDetailModelCopyWith<$Res> {
  _$GroupDetailModelCopyWithImpl(this._self, this._then);

  final GroupDetailModel _self;
  final $Res Function(GroupDetailModel) _then;

/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? status = null,Object? applicationStatus = null,Object? ownerUserId = null,Object? conditions = null,Object? apartament = null,Object? createdAt = null,Object? updatedAt = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as String,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as GroupConditionsModel,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupConditionsModelCopyWith<$Res> get conditions {
  
  return $GroupConditionsModelCopyWith<$Res>(_self.conditions, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartament {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupDetailModel].
extension GroupDetailModelPatterns on GroupDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  String status,  String applicationStatus,  String ownerUserId,  GroupConditionsModel conditions,  ApartamentModel apartament,  String createdAt,  String updatedAt,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupDetailModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.status,_that.applicationStatus,_that.ownerUserId,_that.conditions,_that.apartament,_that.createdAt,_that.updatedAt,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  String status,  String applicationStatus,  String ownerUserId,  GroupConditionsModel conditions,  ApartamentModel apartament,  String createdAt,  String updatedAt,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _GroupDetailModel():
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.status,_that.applicationStatus,_that.ownerUserId,_that.conditions,_that.apartament,_that.createdAt,_that.updatedAt,_that.isFavorite);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  String status,  String applicationStatus,  String ownerUserId,  GroupConditionsModel conditions,  ApartamentModel apartament,  String createdAt,  String updatedAt,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _GroupDetailModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.status,_that.applicationStatus,_that.ownerUserId,_that.conditions,_that.apartament,_that.createdAt,_that.updatedAt,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _GroupDetailModel implements GroupDetailModel {
  const _GroupDetailModel({this.id = '', this.title = '', this.description = '', this.matchPercent = 0, this.participantsCount = 0, this.maxParticipantsCount = 0, this.status = '', this.applicationStatus = '', this.ownerUserId = '', this.conditions = const GroupConditionsModel(), this.apartament = const ApartamentModel(), this.createdAt = '', this.updatedAt = '', this.isFavorite = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int matchPercent;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int maxParticipantsCount;
@override@JsonKey() final  String status;
@override@JsonKey() final  String applicationStatus;
@override@JsonKey() final  String ownerUserId;
@override@JsonKey() final  GroupConditionsModel conditions;
@override@JsonKey() final  ApartamentModel apartament;
@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailModelCopyWith<_GroupDetailModel> get copyWith => __$GroupDetailModelCopyWithImpl<_GroupDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,status,applicationStatus,ownerUserId,conditions,apartament,createdAt,updatedAt,isFavorite);

@override
String toString() {
  return 'GroupDetailModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, status: $status, applicationStatus: $applicationStatus, ownerUserId: $ownerUserId, conditions: $conditions, apartament: $apartament, createdAt: $createdAt, updatedAt: $updatedAt, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailModelCopyWith<$Res> implements $GroupDetailModelCopyWith<$Res> {
  factory _$GroupDetailModelCopyWith(_GroupDetailModel value, $Res Function(_GroupDetailModel) _then) = __$GroupDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, String status, String applicationStatus, String ownerUserId, GroupConditionsModel conditions, ApartamentModel apartament, String createdAt, String updatedAt, bool isFavorite
});


@override $GroupConditionsModelCopyWith<$Res> get conditions;@override $ApartamentModelCopyWith<$Res> get apartament;

}
/// @nodoc
class __$GroupDetailModelCopyWithImpl<$Res>
    implements _$GroupDetailModelCopyWith<$Res> {
  __$GroupDetailModelCopyWithImpl(this._self, this._then);

  final _GroupDetailModel _self;
  final $Res Function(_GroupDetailModel) _then;

/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? status = null,Object? applicationStatus = null,Object? ownerUserId = null,Object? conditions = null,Object? apartament = null,Object? createdAt = null,Object? updatedAt = null,Object? isFavorite = null,}) {
  return _then(_GroupDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as String,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as GroupConditionsModel,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupConditionsModelCopyWith<$Res> get conditions {
  
  return $GroupConditionsModelCopyWith<$Res>(_self.conditions, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of GroupDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartament {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}

// dart format on
