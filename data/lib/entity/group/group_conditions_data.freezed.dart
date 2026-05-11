// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_conditions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupConditionsData {

@JsonKey(name: 'group_id') String? get groupId;@JsonKey(name: 'who_group_is_looking_for') List<String>? get whoGroupIsLookingFor;@JsonKey(name: 'living_rules') List<String>? get livingRules;@JsonKey(name: 'apartment_lifestyle') List<GroupPreferenceItemData>? get apartmentLifestyle;@JsonKey(name: 'apartment_atmosphere') List<GroupPreferenceItemData>? get apartmentAtmosphere;@JsonKey(name: 'participants_count') int? get participantsCount;@JsonKey(name: 'max_participants_count') int? get maxParticipantsCount;@JsonKey(name: 'participants') List<ParticipantData>? get participants;
/// Create a copy of GroupConditionsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupConditionsDataCopyWith<GroupConditionsData> get copyWith => _$GroupConditionsDataCopyWithImpl<GroupConditionsData>(this as GroupConditionsData, _$identity);

  /// Serializes this GroupConditionsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupConditionsData&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other.whoGroupIsLookingFor, whoGroupIsLookingFor)&&const DeepCollectionEquality().equals(other.livingRules, livingRules)&&const DeepCollectionEquality().equals(other.apartmentLifestyle, apartmentLifestyle)&&const DeepCollectionEquality().equals(other.apartmentAtmosphere, apartmentAtmosphere)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other.participants, participants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(whoGroupIsLookingFor),const DeepCollectionEquality().hash(livingRules),const DeepCollectionEquality().hash(apartmentLifestyle),const DeepCollectionEquality().hash(apartmentAtmosphere),participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(participants));

@override
String toString() {
  return 'GroupConditionsData(groupId: $groupId, whoGroupIsLookingFor: $whoGroupIsLookingFor, livingRules: $livingRules, apartmentLifestyle: $apartmentLifestyle, apartmentAtmosphere: $apartmentAtmosphere, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participants: $participants)';
}


}

/// @nodoc
abstract mixin class $GroupConditionsDataCopyWith<$Res>  {
  factory $GroupConditionsDataCopyWith(GroupConditionsData value, $Res Function(GroupConditionsData) _then) = _$GroupConditionsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'who_group_is_looking_for') List<String>? whoGroupIsLookingFor,@JsonKey(name: 'living_rules') List<String>? livingRules,@JsonKey(name: 'apartment_lifestyle') List<GroupPreferenceItemData>? apartmentLifestyle,@JsonKey(name: 'apartment_atmosphere') List<GroupPreferenceItemData>? apartmentAtmosphere,@JsonKey(name: 'participants_count') int? participantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'participants') List<ParticipantData>? participants
});




}
/// @nodoc
class _$GroupConditionsDataCopyWithImpl<$Res>
    implements $GroupConditionsDataCopyWith<$Res> {
  _$GroupConditionsDataCopyWithImpl(this._self, this._then);

  final GroupConditionsData _self;
  final $Res Function(GroupConditionsData) _then;

/// Create a copy of GroupConditionsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = freezed,Object? whoGroupIsLookingFor = freezed,Object? livingRules = freezed,Object? apartmentLifestyle = freezed,Object? apartmentAtmosphere = freezed,Object? participantsCount = freezed,Object? maxParticipantsCount = freezed,Object? participants = freezed,}) {
  return _then(_self.copyWith(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,whoGroupIsLookingFor: freezed == whoGroupIsLookingFor ? _self.whoGroupIsLookingFor : whoGroupIsLookingFor // ignore: cast_nullable_to_non_nullable
as List<String>?,livingRules: freezed == livingRules ? _self.livingRules : livingRules // ignore: cast_nullable_to_non_nullable
as List<String>?,apartmentLifestyle: freezed == apartmentLifestyle ? _self.apartmentLifestyle : apartmentLifestyle // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,apartmentAtmosphere: freezed == apartmentAtmosphere ? _self.apartmentAtmosphere : apartmentAtmosphere // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,participantsCount: freezed == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,participants: freezed == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupConditionsData].
extension GroupConditionsDataPatterns on GroupConditionsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupConditionsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupConditionsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupConditionsData value)  $default,){
final _that = this;
switch (_that) {
case _GroupConditionsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupConditionsData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupConditionsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'who_group_is_looking_for')  List<String>? whoGroupIsLookingFor, @JsonKey(name: 'living_rules')  List<String>? livingRules, @JsonKey(name: 'apartment_lifestyle')  List<GroupPreferenceItemData>? apartmentLifestyle, @JsonKey(name: 'apartment_atmosphere')  List<GroupPreferenceItemData>? apartmentAtmosphere, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'participants')  List<ParticipantData>? participants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupConditionsData() when $default != null:
return $default(_that.groupId,_that.whoGroupIsLookingFor,_that.livingRules,_that.apartmentLifestyle,_that.apartmentAtmosphere,_that.participantsCount,_that.maxParticipantsCount,_that.participants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'who_group_is_looking_for')  List<String>? whoGroupIsLookingFor, @JsonKey(name: 'living_rules')  List<String>? livingRules, @JsonKey(name: 'apartment_lifestyle')  List<GroupPreferenceItemData>? apartmentLifestyle, @JsonKey(name: 'apartment_atmosphere')  List<GroupPreferenceItemData>? apartmentAtmosphere, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'participants')  List<ParticipantData>? participants)  $default,) {final _that = this;
switch (_that) {
case _GroupConditionsData():
return $default(_that.groupId,_that.whoGroupIsLookingFor,_that.livingRules,_that.apartmentLifestyle,_that.apartmentAtmosphere,_that.participantsCount,_that.maxParticipantsCount,_that.participants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'group_id')  String? groupId, @JsonKey(name: 'who_group_is_looking_for')  List<String>? whoGroupIsLookingFor, @JsonKey(name: 'living_rules')  List<String>? livingRules, @JsonKey(name: 'apartment_lifestyle')  List<GroupPreferenceItemData>? apartmentLifestyle, @JsonKey(name: 'apartment_atmosphere')  List<GroupPreferenceItemData>? apartmentAtmosphere, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'participants')  List<ParticipantData>? participants)?  $default,) {final _that = this;
switch (_that) {
case _GroupConditionsData() when $default != null:
return $default(_that.groupId,_that.whoGroupIsLookingFor,_that.livingRules,_that.apartmentLifestyle,_that.apartmentAtmosphere,_that.participantsCount,_that.maxParticipantsCount,_that.participants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupConditionsData implements GroupConditionsData {
  const _GroupConditionsData({@JsonKey(name: 'group_id') this.groupId, @JsonKey(name: 'who_group_is_looking_for') final  List<String>? whoGroupIsLookingFor, @JsonKey(name: 'living_rules') final  List<String>? livingRules, @JsonKey(name: 'apartment_lifestyle') final  List<GroupPreferenceItemData>? apartmentLifestyle, @JsonKey(name: 'apartment_atmosphere') final  List<GroupPreferenceItemData>? apartmentAtmosphere, @JsonKey(name: 'participants_count') this.participantsCount, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount, @JsonKey(name: 'participants') final  List<ParticipantData>? participants}): _whoGroupIsLookingFor = whoGroupIsLookingFor,_livingRules = livingRules,_apartmentLifestyle = apartmentLifestyle,_apartmentAtmosphere = apartmentAtmosphere,_participants = participants;
  factory _GroupConditionsData.fromJson(Map<String, dynamic> json) => _$GroupConditionsDataFromJson(json);

@override@JsonKey(name: 'group_id') final  String? groupId;
 final  List<String>? _whoGroupIsLookingFor;
@override@JsonKey(name: 'who_group_is_looking_for') List<String>? get whoGroupIsLookingFor {
  final value = _whoGroupIsLookingFor;
  if (value == null) return null;
  if (_whoGroupIsLookingFor is EqualUnmodifiableListView) return _whoGroupIsLookingFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _livingRules;
@override@JsonKey(name: 'living_rules') List<String>? get livingRules {
  final value = _livingRules;
  if (value == null) return null;
  if (_livingRules is EqualUnmodifiableListView) return _livingRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GroupPreferenceItemData>? _apartmentLifestyle;
@override@JsonKey(name: 'apartment_lifestyle') List<GroupPreferenceItemData>? get apartmentLifestyle {
  final value = _apartmentLifestyle;
  if (value == null) return null;
  if (_apartmentLifestyle is EqualUnmodifiableListView) return _apartmentLifestyle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GroupPreferenceItemData>? _apartmentAtmosphere;
@override@JsonKey(name: 'apartment_atmosphere') List<GroupPreferenceItemData>? get apartmentAtmosphere {
  final value = _apartmentAtmosphere;
  if (value == null) return null;
  if (_apartmentAtmosphere is EqualUnmodifiableListView) return _apartmentAtmosphere;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'participants_count') final  int? participantsCount;
@override@JsonKey(name: 'max_participants_count') final  int? maxParticipantsCount;
 final  List<ParticipantData>? _participants;
@override@JsonKey(name: 'participants') List<ParticipantData>? get participants {
  final value = _participants;
  if (value == null) return null;
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GroupConditionsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupConditionsDataCopyWith<_GroupConditionsData> get copyWith => __$GroupConditionsDataCopyWithImpl<_GroupConditionsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupConditionsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupConditionsData&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other._whoGroupIsLookingFor, _whoGroupIsLookingFor)&&const DeepCollectionEquality().equals(other._livingRules, _livingRules)&&const DeepCollectionEquality().equals(other._apartmentLifestyle, _apartmentLifestyle)&&const DeepCollectionEquality().equals(other._apartmentAtmosphere, _apartmentAtmosphere)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other._participants, _participants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(_whoGroupIsLookingFor),const DeepCollectionEquality().hash(_livingRules),const DeepCollectionEquality().hash(_apartmentLifestyle),const DeepCollectionEquality().hash(_apartmentAtmosphere),participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(_participants));

@override
String toString() {
  return 'GroupConditionsData(groupId: $groupId, whoGroupIsLookingFor: $whoGroupIsLookingFor, livingRules: $livingRules, apartmentLifestyle: $apartmentLifestyle, apartmentAtmosphere: $apartmentAtmosphere, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participants: $participants)';
}


}

/// @nodoc
abstract mixin class _$GroupConditionsDataCopyWith<$Res> implements $GroupConditionsDataCopyWith<$Res> {
  factory _$GroupConditionsDataCopyWith(_GroupConditionsData value, $Res Function(_GroupConditionsData) _then) = __$GroupConditionsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'group_id') String? groupId,@JsonKey(name: 'who_group_is_looking_for') List<String>? whoGroupIsLookingFor,@JsonKey(name: 'living_rules') List<String>? livingRules,@JsonKey(name: 'apartment_lifestyle') List<GroupPreferenceItemData>? apartmentLifestyle,@JsonKey(name: 'apartment_atmosphere') List<GroupPreferenceItemData>? apartmentAtmosphere,@JsonKey(name: 'participants_count') int? participantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'participants') List<ParticipantData>? participants
});




}
/// @nodoc
class __$GroupConditionsDataCopyWithImpl<$Res>
    implements _$GroupConditionsDataCopyWith<$Res> {
  __$GroupConditionsDataCopyWithImpl(this._self, this._then);

  final _GroupConditionsData _self;
  final $Res Function(_GroupConditionsData) _then;

/// Create a copy of GroupConditionsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = freezed,Object? whoGroupIsLookingFor = freezed,Object? livingRules = freezed,Object? apartmentLifestyle = freezed,Object? apartmentAtmosphere = freezed,Object? participantsCount = freezed,Object? maxParticipantsCount = freezed,Object? participants = freezed,}) {
  return _then(_GroupConditionsData(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,whoGroupIsLookingFor: freezed == whoGroupIsLookingFor ? _self._whoGroupIsLookingFor : whoGroupIsLookingFor // ignore: cast_nullable_to_non_nullable
as List<String>?,livingRules: freezed == livingRules ? _self._livingRules : livingRules // ignore: cast_nullable_to_non_nullable
as List<String>?,apartmentLifestyle: freezed == apartmentLifestyle ? _self._apartmentLifestyle : apartmentLifestyle // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,apartmentAtmosphere: freezed == apartmentAtmosphere ? _self._apartmentAtmosphere : apartmentAtmosphere // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemData>?,participantsCount: freezed == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,participants: freezed == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantData>?,
  ));
}


}

// dart format on
