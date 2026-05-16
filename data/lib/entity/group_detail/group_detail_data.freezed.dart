// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupDetailData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'status') String get status;@JsonKey(name: 'match_percent') int get matchPercent;@JsonKey(name: 'application_status') String get applicationStatus;@JsonKey(name: 'owner_user_id') String get ownerUserId;@JsonKey(name: 'participants_count') int get participantsCount;@JsonKey(name: 'max_participants_count') int get maxParticipantsCount;@JsonKey(name: 'apartment') ApartamentData get apartament;@JsonKey(name: 'conditions') GroupDetailConditionsData get conditions;@JsonKey(name: 'preferences') GroupDetailPreferencesData get preferences;@JsonKey(name: 'participants') List<ParticipantData> get participants;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDetailDataCopyWith<GroupDetailData> get copyWith => _$GroupDetailDataCopyWithImpl<GroupDetailData>(this as GroupDetailData, _$identity);

  /// Serializes this GroupDetailData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&const DeepCollectionEquality().equals(other.participants, participants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,matchPercent,applicationStatus,ownerUserId,participantsCount,maxParticipantsCount,apartament,conditions,preferences,const DeepCollectionEquality().hash(participants),createdAt,updatedAt);

@override
String toString() {
  return 'GroupDetailData(id: $id, title: $title, description: $description, status: $status, matchPercent: $matchPercent, applicationStatus: $applicationStatus, ownerUserId: $ownerUserId, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament, conditions: $conditions, preferences: $preferences, participants: $participants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GroupDetailDataCopyWith<$Res>  {
  factory $GroupDetailDataCopyWith(GroupDetailData value, $Res Function(GroupDetailData) _then) = _$GroupDetailDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'status') String status,@JsonKey(name: 'match_percent') int matchPercent,@JsonKey(name: 'application_status') String applicationStatus,@JsonKey(name: 'owner_user_id') String ownerUserId,@JsonKey(name: 'participants_count') int participantsCount,@JsonKey(name: 'max_participants_count') int maxParticipantsCount,@JsonKey(name: 'apartment') ApartamentData apartament,@JsonKey(name: 'conditions') GroupDetailConditionsData conditions,@JsonKey(name: 'preferences') GroupDetailPreferencesData preferences,@JsonKey(name: 'participants') List<ParticipantData> participants,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


$ApartamentDataCopyWith<$Res> get apartament;$GroupDetailConditionsDataCopyWith<$Res> get conditions;$GroupDetailPreferencesDataCopyWith<$Res> get preferences;

}
/// @nodoc
class _$GroupDetailDataCopyWithImpl<$Res>
    implements $GroupDetailDataCopyWith<$Res> {
  _$GroupDetailDataCopyWithImpl(this._self, this._then);

  final GroupDetailData _self;
  final $Res Function(GroupDetailData) _then;

/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,Object? matchPercent = null,Object? applicationStatus = null,Object? ownerUserId = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? apartament = null,Object? conditions = null,Object? preferences = null,Object? participants = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as GroupDetailConditionsData,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as GroupDetailPreferencesData,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantData>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res> get apartament {
  
  return $ApartamentDataCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailConditionsDataCopyWith<$Res> get conditions {
  
  return $GroupDetailConditionsDataCopyWith<$Res>(_self.conditions, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailPreferencesDataCopyWith<$Res> get preferences {
  
  return $GroupDetailPreferencesDataCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupDetailData].
extension GroupDetailDataPatterns on GroupDetailData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupDetailData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupDetailData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupDetailData value)  $default,){
final _that = this;
switch (_that) {
case _GroupDetailData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupDetailData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupDetailData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'application_status')  String applicationStatus, @JsonKey(name: 'owner_user_id')  String ownerUserId, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'apartment')  ApartamentData apartament, @JsonKey(name: 'conditions')  GroupDetailConditionsData conditions, @JsonKey(name: 'preferences')  GroupDetailPreferencesData preferences, @JsonKey(name: 'participants')  List<ParticipantData> participants, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupDetailData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.matchPercent,_that.applicationStatus,_that.ownerUserId,_that.participantsCount,_that.maxParticipantsCount,_that.apartament,_that.conditions,_that.preferences,_that.participants,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'application_status')  String applicationStatus, @JsonKey(name: 'owner_user_id')  String ownerUserId, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'apartment')  ApartamentData apartament, @JsonKey(name: 'conditions')  GroupDetailConditionsData conditions, @JsonKey(name: 'preferences')  GroupDetailPreferencesData preferences, @JsonKey(name: 'participants')  List<ParticipantData> participants, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GroupDetailData():
return $default(_that.id,_that.title,_that.description,_that.status,_that.matchPercent,_that.applicationStatus,_that.ownerUserId,_that.participantsCount,_that.maxParticipantsCount,_that.apartament,_that.conditions,_that.preferences,_that.participants,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'status')  String status, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'application_status')  String applicationStatus, @JsonKey(name: 'owner_user_id')  String ownerUserId, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'apartment')  ApartamentData apartament, @JsonKey(name: 'conditions')  GroupDetailConditionsData conditions, @JsonKey(name: 'preferences')  GroupDetailPreferencesData preferences, @JsonKey(name: 'participants')  List<ParticipantData> participants, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GroupDetailData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.matchPercent,_that.applicationStatus,_that.ownerUserId,_that.participantsCount,_that.maxParticipantsCount,_that.apartament,_that.conditions,_that.preferences,_that.participants,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupDetailData implements GroupDetailData {
  const _GroupDetailData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'status') this.status = '', @JsonKey(name: 'match_percent') this.matchPercent = 0, @JsonKey(name: 'application_status') this.applicationStatus = '', @JsonKey(name: 'owner_user_id') this.ownerUserId = '', @JsonKey(name: 'participants_count') this.participantsCount = 0, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount = 0, @JsonKey(name: 'apartment') this.apartament = const ApartamentData(), @JsonKey(name: 'conditions') this.conditions = const GroupDetailConditionsData(), @JsonKey(name: 'preferences') this.preferences = const GroupDetailPreferencesData(), @JsonKey(name: 'participants') final  List<ParticipantData> participants = const <ParticipantData>[], @JsonKey(name: 'created_at') this.createdAt = '', @JsonKey(name: 'updated_at') this.updatedAt = ''}): _participants = participants;
  factory _GroupDetailData.fromJson(Map<String, dynamic> json) => _$GroupDetailDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'match_percent') final  int matchPercent;
@override@JsonKey(name: 'application_status') final  String applicationStatus;
@override@JsonKey(name: 'owner_user_id') final  String ownerUserId;
@override@JsonKey(name: 'participants_count') final  int participantsCount;
@override@JsonKey(name: 'max_participants_count') final  int maxParticipantsCount;
@override@JsonKey(name: 'apartment') final  ApartamentData apartament;
@override@JsonKey(name: 'conditions') final  GroupDetailConditionsData conditions;
@override@JsonKey(name: 'preferences') final  GroupDetailPreferencesData preferences;
 final  List<ParticipantData> _participants;
@override@JsonKey(name: 'participants') List<ParticipantData> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailDataCopyWith<_GroupDetailData> get copyWith => __$GroupDetailDataCopyWithImpl<_GroupDetailData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupDetailDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetailData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.ownerUserId, ownerUserId) || other.ownerUserId == ownerUserId)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.conditions, conditions) || other.conditions == conditions)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&const DeepCollectionEquality().equals(other._participants, _participants)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,matchPercent,applicationStatus,ownerUserId,participantsCount,maxParticipantsCount,apartament,conditions,preferences,const DeepCollectionEquality().hash(_participants),createdAt,updatedAt);

@override
String toString() {
  return 'GroupDetailData(id: $id, title: $title, description: $description, status: $status, matchPercent: $matchPercent, applicationStatus: $applicationStatus, ownerUserId: $ownerUserId, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament, conditions: $conditions, preferences: $preferences, participants: $participants, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailDataCopyWith<$Res> implements $GroupDetailDataCopyWith<$Res> {
  factory _$GroupDetailDataCopyWith(_GroupDetailData value, $Res Function(_GroupDetailData) _then) = __$GroupDetailDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'status') String status,@JsonKey(name: 'match_percent') int matchPercent,@JsonKey(name: 'application_status') String applicationStatus,@JsonKey(name: 'owner_user_id') String ownerUserId,@JsonKey(name: 'participants_count') int participantsCount,@JsonKey(name: 'max_participants_count') int maxParticipantsCount,@JsonKey(name: 'apartment') ApartamentData apartament,@JsonKey(name: 'conditions') GroupDetailConditionsData conditions,@JsonKey(name: 'preferences') GroupDetailPreferencesData preferences,@JsonKey(name: 'participants') List<ParticipantData> participants,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


@override $ApartamentDataCopyWith<$Res> get apartament;@override $GroupDetailConditionsDataCopyWith<$Res> get conditions;@override $GroupDetailPreferencesDataCopyWith<$Res> get preferences;

}
/// @nodoc
class __$GroupDetailDataCopyWithImpl<$Res>
    implements _$GroupDetailDataCopyWith<$Res> {
  __$GroupDetailDataCopyWithImpl(this._self, this._then);

  final _GroupDetailData _self;
  final $Res Function(_GroupDetailData) _then;

/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,Object? matchPercent = null,Object? applicationStatus = null,Object? ownerUserId = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? apartament = null,Object? conditions = null,Object? preferences = null,Object? participants = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_GroupDetailData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,ownerUserId: null == ownerUserId ? _self.ownerUserId : ownerUserId // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as GroupDetailConditionsData,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as GroupDetailPreferencesData,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantData>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res> get apartament {
  
  return $ApartamentDataCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailConditionsDataCopyWith<$Res> get conditions {
  
  return $GroupDetailConditionsDataCopyWith<$Res>(_self.conditions, (value) {
    return _then(_self.copyWith(conditions: value));
  });
}/// Create a copy of GroupDetailData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailPreferencesDataCopyWith<$Res> get preferences {
  
  return $GroupDetailPreferencesDataCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// @nodoc
mixin _$GroupDetailConditionsData {

@JsonKey(name: 'desired_gender') String? get desiredGender;@JsonKey(name: 'min_age') int? get minAge;@JsonKey(name: 'max_age') int? get maxAge;@JsonKey(name: 'children_allowed') bool? get childrenAllowed;@JsonKey(name: 'partner_allowed') bool? get partnerAllowed;@JsonKey(name: 'pets_allowed') bool? get petsAllowed;@JsonKey(name: 'smoking_allowed') bool? get smokingAllowed;
/// Create a copy of GroupDetailConditionsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDetailConditionsDataCopyWith<GroupDetailConditionsData> get copyWith => _$GroupDetailConditionsDataCopyWithImpl<GroupDetailConditionsData>(this as GroupDetailConditionsData, _$identity);

  /// Serializes this GroupDetailConditionsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailConditionsData&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desiredGender,minAge,maxAge,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'GroupDetailConditionsData(desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class $GroupDetailConditionsDataCopyWith<$Res>  {
  factory $GroupDetailConditionsDataCopyWith(GroupDetailConditionsData value, $Res Function(GroupDetailConditionsData) _then) = _$GroupDetailConditionsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed
});




}
/// @nodoc
class _$GroupDetailConditionsDataCopyWithImpl<$Res>
    implements $GroupDetailConditionsDataCopyWith<$Res> {
  _$GroupDetailConditionsDataCopyWithImpl(this._self, this._then);

  final GroupDetailConditionsData _self;
  final $Res Function(GroupDetailConditionsData) _then;

/// Create a copy of GroupDetailConditionsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,}) {
  return _then(_self.copyWith(
desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupDetailConditionsData].
extension GroupDetailConditionsDataPatterns on GroupDetailConditionsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupDetailConditionsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupDetailConditionsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupDetailConditionsData value)  $default,){
final _that = this;
switch (_that) {
case _GroupDetailConditionsData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupDetailConditionsData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupDetailConditionsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupDetailConditionsData() when $default != null:
return $default(_that.desiredGender,_that.minAge,_that.maxAge,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)  $default,) {final _that = this;
switch (_that) {
case _GroupDetailConditionsData():
return $default(_that.desiredGender,_that.minAge,_that.maxAge,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'desired_gender')  String? desiredGender, @JsonKey(name: 'min_age')  int? minAge, @JsonKey(name: 'max_age')  int? maxAge, @JsonKey(name: 'children_allowed')  bool? childrenAllowed, @JsonKey(name: 'partner_allowed')  bool? partnerAllowed, @JsonKey(name: 'pets_allowed')  bool? petsAllowed, @JsonKey(name: 'smoking_allowed')  bool? smokingAllowed)?  $default,) {final _that = this;
switch (_that) {
case _GroupDetailConditionsData() when $default != null:
return $default(_that.desiredGender,_that.minAge,_that.maxAge,_that.childrenAllowed,_that.partnerAllowed,_that.petsAllowed,_that.smokingAllowed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupDetailConditionsData implements GroupDetailConditionsData {
  const _GroupDetailConditionsData({@JsonKey(name: 'desired_gender') this.desiredGender, @JsonKey(name: 'min_age') this.minAge, @JsonKey(name: 'max_age') this.maxAge, @JsonKey(name: 'children_allowed') this.childrenAllowed, @JsonKey(name: 'partner_allowed') this.partnerAllowed, @JsonKey(name: 'pets_allowed') this.petsAllowed, @JsonKey(name: 'smoking_allowed') this.smokingAllowed});
  factory _GroupDetailConditionsData.fromJson(Map<String, dynamic> json) => _$GroupDetailConditionsDataFromJson(json);

@override@JsonKey(name: 'desired_gender') final  String? desiredGender;
@override@JsonKey(name: 'min_age') final  int? minAge;
@override@JsonKey(name: 'max_age') final  int? maxAge;
@override@JsonKey(name: 'children_allowed') final  bool? childrenAllowed;
@override@JsonKey(name: 'partner_allowed') final  bool? partnerAllowed;
@override@JsonKey(name: 'pets_allowed') final  bool? petsAllowed;
@override@JsonKey(name: 'smoking_allowed') final  bool? smokingAllowed;

/// Create a copy of GroupDetailConditionsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailConditionsDataCopyWith<_GroupDetailConditionsData> get copyWith => __$GroupDetailConditionsDataCopyWithImpl<_GroupDetailConditionsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupDetailConditionsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetailConditionsData&&(identical(other.desiredGender, desiredGender) || other.desiredGender == desiredGender)&&(identical(other.minAge, minAge) || other.minAge == minAge)&&(identical(other.maxAge, maxAge) || other.maxAge == maxAge)&&(identical(other.childrenAllowed, childrenAllowed) || other.childrenAllowed == childrenAllowed)&&(identical(other.partnerAllowed, partnerAllowed) || other.partnerAllowed == partnerAllowed)&&(identical(other.petsAllowed, petsAllowed) || other.petsAllowed == petsAllowed)&&(identical(other.smokingAllowed, smokingAllowed) || other.smokingAllowed == smokingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desiredGender,minAge,maxAge,childrenAllowed,partnerAllowed,petsAllowed,smokingAllowed);

@override
String toString() {
  return 'GroupDetailConditionsData(desiredGender: $desiredGender, minAge: $minAge, maxAge: $maxAge, childrenAllowed: $childrenAllowed, partnerAllowed: $partnerAllowed, petsAllowed: $petsAllowed, smokingAllowed: $smokingAllowed)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailConditionsDataCopyWith<$Res> implements $GroupDetailConditionsDataCopyWith<$Res> {
  factory _$GroupDetailConditionsDataCopyWith(_GroupDetailConditionsData value, $Res Function(_GroupDetailConditionsData) _then) = __$GroupDetailConditionsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'desired_gender') String? desiredGender,@JsonKey(name: 'min_age') int? minAge,@JsonKey(name: 'max_age') int? maxAge,@JsonKey(name: 'children_allowed') bool? childrenAllowed,@JsonKey(name: 'partner_allowed') bool? partnerAllowed,@JsonKey(name: 'pets_allowed') bool? petsAllowed,@JsonKey(name: 'smoking_allowed') bool? smokingAllowed
});




}
/// @nodoc
class __$GroupDetailConditionsDataCopyWithImpl<$Res>
    implements _$GroupDetailConditionsDataCopyWith<$Res> {
  __$GroupDetailConditionsDataCopyWithImpl(this._self, this._then);

  final _GroupDetailConditionsData _self;
  final $Res Function(_GroupDetailConditionsData) _then;

/// Create a copy of GroupDetailConditionsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desiredGender = freezed,Object? minAge = freezed,Object? maxAge = freezed,Object? childrenAllowed = freezed,Object? partnerAllowed = freezed,Object? petsAllowed = freezed,Object? smokingAllowed = freezed,}) {
  return _then(_GroupDetailConditionsData(
desiredGender: freezed == desiredGender ? _self.desiredGender : desiredGender // ignore: cast_nullable_to_non_nullable
as String?,minAge: freezed == minAge ? _self.minAge : minAge // ignore: cast_nullable_to_non_nullable
as int?,maxAge: freezed == maxAge ? _self.maxAge : maxAge // ignore: cast_nullable_to_non_nullable
as int?,childrenAllowed: freezed == childrenAllowed ? _self.childrenAllowed : childrenAllowed // ignore: cast_nullable_to_non_nullable
as bool?,partnerAllowed: freezed == partnerAllowed ? _self.partnerAllowed : partnerAllowed // ignore: cast_nullable_to_non_nullable
as bool?,petsAllowed: freezed == petsAllowed ? _self.petsAllowed : petsAllowed // ignore: cast_nullable_to_non_nullable
as bool?,smokingAllowed: freezed == smokingAllowed ? _self.smokingAllowed : smokingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$GroupDetailPreferencesData {

@JsonKey(name: 'communication') OptionData? get communication;@JsonKey(name: 'sleep') OptionData? get sleep;@JsonKey(name: 'bad_habits') OptionData? get badHabits;@JsonKey(name: 'guests') OptionData? get guests;@JsonKey(name: 'noise_level') OptionData? get noiseLevel;@JsonKey(name: 'cleaning') OptionData? get cleaning;@JsonKey(name: 'pets') OptionData? get pets;@JsonKey(name: 'pets_attitude') OptionData? get petsAttitude;
/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDetailPreferencesDataCopyWith<GroupDetailPreferencesData> get copyWith => _$GroupDetailPreferencesDataCopyWithImpl<GroupDetailPreferencesData>(this as GroupDetailPreferencesData, _$identity);

  /// Serializes this GroupDetailPreferencesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupDetailPreferencesData&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.sleep, sleep) || other.sleep == sleep)&&(identical(other.badHabits, badHabits) || other.badHabits == badHabits)&&(identical(other.guests, guests) || other.guests == guests)&&(identical(other.noiseLevel, noiseLevel) || other.noiseLevel == noiseLevel)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.pets, pets) || other.pets == pets)&&(identical(other.petsAttitude, petsAttitude) || other.petsAttitude == petsAttitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,communication,sleep,badHabits,guests,noiseLevel,cleaning,pets,petsAttitude);

@override
String toString() {
  return 'GroupDetailPreferencesData(communication: $communication, sleep: $sleep, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class $GroupDetailPreferencesDataCopyWith<$Res>  {
  factory $GroupDetailPreferencesDataCopyWith(GroupDetailPreferencesData value, $Res Function(GroupDetailPreferencesData) _then) = _$GroupDetailPreferencesDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'communication') OptionData? communication,@JsonKey(name: 'sleep') OptionData? sleep,@JsonKey(name: 'bad_habits') OptionData? badHabits,@JsonKey(name: 'guests') OptionData? guests,@JsonKey(name: 'noise_level') OptionData? noiseLevel,@JsonKey(name: 'cleaning') OptionData? cleaning,@JsonKey(name: 'pets') OptionData? pets,@JsonKey(name: 'pets_attitude') OptionData? petsAttitude
});


$OptionDataCopyWith<$Res>? get communication;$OptionDataCopyWith<$Res>? get sleep;$OptionDataCopyWith<$Res>? get badHabits;$OptionDataCopyWith<$Res>? get guests;$OptionDataCopyWith<$Res>? get noiseLevel;$OptionDataCopyWith<$Res>? get cleaning;$OptionDataCopyWith<$Res>? get pets;$OptionDataCopyWith<$Res>? get petsAttitude;

}
/// @nodoc
class _$GroupDetailPreferencesDataCopyWithImpl<$Res>
    implements $GroupDetailPreferencesDataCopyWith<$Res> {
  _$GroupDetailPreferencesDataCopyWithImpl(this._self, this._then);

  final GroupDetailPreferencesData _self;
  final $Res Function(GroupDetailPreferencesData) _then;

/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communication = freezed,Object? sleep = freezed,Object? badHabits = freezed,Object? guests = freezed,Object? noiseLevel = freezed,Object? cleaning = freezed,Object? pets = freezed,Object? petsAttitude = freezed,}) {
  return _then(_self.copyWith(
communication: freezed == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as OptionData?,sleep: freezed == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as OptionData?,badHabits: freezed == badHabits ? _self.badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as OptionData?,guests: freezed == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as OptionData?,noiseLevel: freezed == noiseLevel ? _self.noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as OptionData?,cleaning: freezed == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as OptionData?,pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as OptionData?,petsAttitude: freezed == petsAttitude ? _self.petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as OptionData?,
  ));
}
/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get communication {
    if (_self.communication == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.communication!, (value) {
    return _then(_self.copyWith(communication: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get sleep {
    if (_self.sleep == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.sleep!, (value) {
    return _then(_self.copyWith(sleep: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get badHabits {
    if (_self.badHabits == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.badHabits!, (value) {
    return _then(_self.copyWith(badHabits: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get guests {
    if (_self.guests == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.guests!, (value) {
    return _then(_self.copyWith(guests: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get noiseLevel {
    if (_self.noiseLevel == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.noiseLevel!, (value) {
    return _then(_self.copyWith(noiseLevel: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get cleaning {
    if (_self.cleaning == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.cleaning!, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get pets {
    if (_self.pets == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.pets!, (value) {
    return _then(_self.copyWith(pets: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get petsAttitude {
    if (_self.petsAttitude == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.petsAttitude!, (value) {
    return _then(_self.copyWith(petsAttitude: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupDetailPreferencesData].
extension GroupDetailPreferencesDataPatterns on GroupDetailPreferencesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupDetailPreferencesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupDetailPreferencesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupDetailPreferencesData value)  $default,){
final _that = this;
switch (_that) {
case _GroupDetailPreferencesData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupDetailPreferencesData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupDetailPreferencesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication')  OptionData? communication, @JsonKey(name: 'sleep')  OptionData? sleep, @JsonKey(name: 'bad_habits')  OptionData? badHabits, @JsonKey(name: 'guests')  OptionData? guests, @JsonKey(name: 'noise_level')  OptionData? noiseLevel, @JsonKey(name: 'cleaning')  OptionData? cleaning, @JsonKey(name: 'pets')  OptionData? pets, @JsonKey(name: 'pets_attitude')  OptionData? petsAttitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupDetailPreferencesData() when $default != null:
return $default(_that.communication,_that.sleep,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication')  OptionData? communication, @JsonKey(name: 'sleep')  OptionData? sleep, @JsonKey(name: 'bad_habits')  OptionData? badHabits, @JsonKey(name: 'guests')  OptionData? guests, @JsonKey(name: 'noise_level')  OptionData? noiseLevel, @JsonKey(name: 'cleaning')  OptionData? cleaning, @JsonKey(name: 'pets')  OptionData? pets, @JsonKey(name: 'pets_attitude')  OptionData? petsAttitude)  $default,) {final _that = this;
switch (_that) {
case _GroupDetailPreferencesData():
return $default(_that.communication,_that.sleep,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'communication')  OptionData? communication, @JsonKey(name: 'sleep')  OptionData? sleep, @JsonKey(name: 'bad_habits')  OptionData? badHabits, @JsonKey(name: 'guests')  OptionData? guests, @JsonKey(name: 'noise_level')  OptionData? noiseLevel, @JsonKey(name: 'cleaning')  OptionData? cleaning, @JsonKey(name: 'pets')  OptionData? pets, @JsonKey(name: 'pets_attitude')  OptionData? petsAttitude)?  $default,) {final _that = this;
switch (_that) {
case _GroupDetailPreferencesData() when $default != null:
return $default(_that.communication,_that.sleep,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupDetailPreferencesData implements GroupDetailPreferencesData {
  const _GroupDetailPreferencesData({@JsonKey(name: 'communication') this.communication, @JsonKey(name: 'sleep') this.sleep, @JsonKey(name: 'bad_habits') this.badHabits, @JsonKey(name: 'guests') this.guests, @JsonKey(name: 'noise_level') this.noiseLevel, @JsonKey(name: 'cleaning') this.cleaning, @JsonKey(name: 'pets') this.pets, @JsonKey(name: 'pets_attitude') this.petsAttitude});
  factory _GroupDetailPreferencesData.fromJson(Map<String, dynamic> json) => _$GroupDetailPreferencesDataFromJson(json);

@override@JsonKey(name: 'communication') final  OptionData? communication;
@override@JsonKey(name: 'sleep') final  OptionData? sleep;
@override@JsonKey(name: 'bad_habits') final  OptionData? badHabits;
@override@JsonKey(name: 'guests') final  OptionData? guests;
@override@JsonKey(name: 'noise_level') final  OptionData? noiseLevel;
@override@JsonKey(name: 'cleaning') final  OptionData? cleaning;
@override@JsonKey(name: 'pets') final  OptionData? pets;
@override@JsonKey(name: 'pets_attitude') final  OptionData? petsAttitude;

/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDetailPreferencesDataCopyWith<_GroupDetailPreferencesData> get copyWith => __$GroupDetailPreferencesDataCopyWithImpl<_GroupDetailPreferencesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupDetailPreferencesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupDetailPreferencesData&&(identical(other.communication, communication) || other.communication == communication)&&(identical(other.sleep, sleep) || other.sleep == sleep)&&(identical(other.badHabits, badHabits) || other.badHabits == badHabits)&&(identical(other.guests, guests) || other.guests == guests)&&(identical(other.noiseLevel, noiseLevel) || other.noiseLevel == noiseLevel)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.pets, pets) || other.pets == pets)&&(identical(other.petsAttitude, petsAttitude) || other.petsAttitude == petsAttitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,communication,sleep,badHabits,guests,noiseLevel,cleaning,pets,petsAttitude);

@override
String toString() {
  return 'GroupDetailPreferencesData(communication: $communication, sleep: $sleep, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class _$GroupDetailPreferencesDataCopyWith<$Res> implements $GroupDetailPreferencesDataCopyWith<$Res> {
  factory _$GroupDetailPreferencesDataCopyWith(_GroupDetailPreferencesData value, $Res Function(_GroupDetailPreferencesData) _then) = __$GroupDetailPreferencesDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'communication') OptionData? communication,@JsonKey(name: 'sleep') OptionData? sleep,@JsonKey(name: 'bad_habits') OptionData? badHabits,@JsonKey(name: 'guests') OptionData? guests,@JsonKey(name: 'noise_level') OptionData? noiseLevel,@JsonKey(name: 'cleaning') OptionData? cleaning,@JsonKey(name: 'pets') OptionData? pets,@JsonKey(name: 'pets_attitude') OptionData? petsAttitude
});


@override $OptionDataCopyWith<$Res>? get communication;@override $OptionDataCopyWith<$Res>? get sleep;@override $OptionDataCopyWith<$Res>? get badHabits;@override $OptionDataCopyWith<$Res>? get guests;@override $OptionDataCopyWith<$Res>? get noiseLevel;@override $OptionDataCopyWith<$Res>? get cleaning;@override $OptionDataCopyWith<$Res>? get pets;@override $OptionDataCopyWith<$Res>? get petsAttitude;

}
/// @nodoc
class __$GroupDetailPreferencesDataCopyWithImpl<$Res>
    implements _$GroupDetailPreferencesDataCopyWith<$Res> {
  __$GroupDetailPreferencesDataCopyWithImpl(this._self, this._then);

  final _GroupDetailPreferencesData _self;
  final $Res Function(_GroupDetailPreferencesData) _then;

/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communication = freezed,Object? sleep = freezed,Object? badHabits = freezed,Object? guests = freezed,Object? noiseLevel = freezed,Object? cleaning = freezed,Object? pets = freezed,Object? petsAttitude = freezed,}) {
  return _then(_GroupDetailPreferencesData(
communication: freezed == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as OptionData?,sleep: freezed == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as OptionData?,badHabits: freezed == badHabits ? _self.badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as OptionData?,guests: freezed == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as OptionData?,noiseLevel: freezed == noiseLevel ? _self.noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as OptionData?,cleaning: freezed == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as OptionData?,pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as OptionData?,petsAttitude: freezed == petsAttitude ? _self.petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as OptionData?,
  ));
}

/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get communication {
    if (_self.communication == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.communication!, (value) {
    return _then(_self.copyWith(communication: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get sleep {
    if (_self.sleep == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.sleep!, (value) {
    return _then(_self.copyWith(sleep: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get badHabits {
    if (_self.badHabits == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.badHabits!, (value) {
    return _then(_self.copyWith(badHabits: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get guests {
    if (_self.guests == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.guests!, (value) {
    return _then(_self.copyWith(guests: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get noiseLevel {
    if (_self.noiseLevel == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.noiseLevel!, (value) {
    return _then(_self.copyWith(noiseLevel: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get cleaning {
    if (_self.cleaning == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.cleaning!, (value) {
    return _then(_self.copyWith(cleaning: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get pets {
    if (_self.pets == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.pets!, (value) {
    return _then(_self.copyWith(pets: value));
  });
}/// Create a copy of GroupDetailPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionDataCopyWith<$Res>? get petsAttitude {
    if (_self.petsAttitude == null) {
    return null;
  }

  return $OptionDataCopyWith<$Res>(_self.petsAttitude!, (value) {
    return _then(_self.copyWith(petsAttitude: value));
  });
}
}


/// @nodoc
mixin _$ParticipantData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'role') String? get role;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'age') int? get age;@JsonKey(name: 'gender') String? get gender;@JsonKey(name: 'avatar_url') String? get avatarUrl;//TODO: убрать is_verified, узнать у бэка
@JsonKey(name: 'is_verified') bool? get isVerified;
/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantDataCopyWith<ParticipantData> get copyWith => _$ParticipantDataCopyWithImpl<ParticipantData>(this as ParticipantData, _$identity);

  /// Serializes this ParticipantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,role,status,firstName,lastName,fullName,age,gender,avatarUrl,isVerified);

@override
String toString() {
  return 'ParticipantData(id: $id, userId: $userId, role: $role, status: $status, firstName: $firstName, lastName: $lastName, fullName: $fullName, age: $age, gender: $gender, avatarUrl: $avatarUrl, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $ParticipantDataCopyWith<$Res>  {
  factory $ParticipantDataCopyWith(ParticipantData value, $Res Function(ParticipantData) _then) = _$ParticipantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'role') String? role,@JsonKey(name: 'status') String? status,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'age') int? age,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified
});




}
/// @nodoc
class _$ParticipantDataCopyWithImpl<$Res>
    implements $ParticipantDataCopyWith<$Res> {
  _$ParticipantDataCopyWithImpl(this._self, this._then);

  final ParticipantData _self;
  final $Res Function(ParticipantData) _then;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? role = freezed,Object? status = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? age = freezed,Object? gender = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantData].
extension ParticipantDataPatterns on ParticipantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantData value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantData value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.avatarUrl,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified)  $default,) {final _that = this;
switch (_that) {
case _ParticipantData():
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.avatarUrl,_that.isVerified);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'role')  String? role, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'gender')  String? gender, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'is_verified')  bool? isVerified)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantData() when $default != null:
return $default(_that.id,_that.userId,_that.role,_that.status,_that.firstName,_that.lastName,_that.fullName,_that.age,_that.gender,_that.avatarUrl,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantData implements ParticipantData {
  const _ParticipantData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'role') this.role, @JsonKey(name: 'status') this.status, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'age') this.age, @JsonKey(name: 'gender') this.gender, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'is_verified') this.isVerified});
  factory _ParticipantData.fromJson(Map<String, dynamic> json) => _$ParticipantDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'role') final  String? role;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'age') final  int? age;
@override@JsonKey(name: 'gender') final  String? gender;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
//TODO: убрать is_verified, узнать у бэка
@override@JsonKey(name: 'is_verified') final  bool? isVerified;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantDataCopyWith<_ParticipantData> get copyWith => __$ParticipantDataCopyWithImpl<_ParticipantData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,role,status,firstName,lastName,fullName,age,gender,avatarUrl,isVerified);

@override
String toString() {
  return 'ParticipantData(id: $id, userId: $userId, role: $role, status: $status, firstName: $firstName, lastName: $lastName, fullName: $fullName, age: $age, gender: $gender, avatarUrl: $avatarUrl, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$ParticipantDataCopyWith<$Res> implements $ParticipantDataCopyWith<$Res> {
  factory _$ParticipantDataCopyWith(_ParticipantData value, $Res Function(_ParticipantData) _then) = __$ParticipantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'role') String? role,@JsonKey(name: 'status') String? status,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'age') int? age,@JsonKey(name: 'gender') String? gender,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'is_verified') bool? isVerified
});




}
/// @nodoc
class __$ParticipantDataCopyWithImpl<$Res>
    implements _$ParticipantDataCopyWith<$Res> {
  __$ParticipantDataCopyWithImpl(this._self, this._then);

  final _ParticipantData _self;
  final $Res Function(_ParticipantData) _then;

/// Create a copy of ParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? role = freezed,Object? status = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? age = freezed,Object? gender = freezed,Object? avatarUrl = freezed,Object? isVerified = freezed,}) {
  return _then(_ParticipantData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
