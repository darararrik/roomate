// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupConditionsModel {

 String get groupId; List<String> get whoGroupIsLookingFor; List<String> get livingRules; List<GroupPreferenceItemModel> get apartmentLifestyle; List<GroupPreferenceItemModel> get apartmentAtmosphere; int get participantsCount; int get maxParticipantsCount; List<ParticipantModel> get participants;
/// Create a copy of GroupConditionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupConditionsModelCopyWith<GroupConditionsModel> get copyWith => _$GroupConditionsModelCopyWithImpl<GroupConditionsModel>(this as GroupConditionsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupConditionsModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other.whoGroupIsLookingFor, whoGroupIsLookingFor)&&const DeepCollectionEquality().equals(other.livingRules, livingRules)&&const DeepCollectionEquality().equals(other.apartmentLifestyle, apartmentLifestyle)&&const DeepCollectionEquality().equals(other.apartmentAtmosphere, apartmentAtmosphere)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other.participants, participants));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(whoGroupIsLookingFor),const DeepCollectionEquality().hash(livingRules),const DeepCollectionEquality().hash(apartmentLifestyle),const DeepCollectionEquality().hash(apartmentAtmosphere),participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(participants));

@override
String toString() {
  return 'GroupConditionsModel(groupId: $groupId, whoGroupIsLookingFor: $whoGroupIsLookingFor, livingRules: $livingRules, apartmentLifestyle: $apartmentLifestyle, apartmentAtmosphere: $apartmentAtmosphere, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participants: $participants)';
}


}

/// @nodoc
abstract mixin class $GroupConditionsModelCopyWith<$Res>  {
  factory $GroupConditionsModelCopyWith(GroupConditionsModel value, $Res Function(GroupConditionsModel) _then) = _$GroupConditionsModelCopyWithImpl;
@useResult
$Res call({
 String groupId, List<String> whoGroupIsLookingFor, List<String> livingRules, List<GroupPreferenceItemModel> apartmentLifestyle, List<GroupPreferenceItemModel> apartmentAtmosphere, int participantsCount, int maxParticipantsCount, List<ParticipantModel> participants
});




}
/// @nodoc
class _$GroupConditionsModelCopyWithImpl<$Res>
    implements $GroupConditionsModelCopyWith<$Res> {
  _$GroupConditionsModelCopyWithImpl(this._self, this._then);

  final GroupConditionsModel _self;
  final $Res Function(GroupConditionsModel) _then;

/// Create a copy of GroupConditionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? whoGroupIsLookingFor = null,Object? livingRules = null,Object? apartmentLifestyle = null,Object? apartmentAtmosphere = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? participants = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,whoGroupIsLookingFor: null == whoGroupIsLookingFor ? _self.whoGroupIsLookingFor : whoGroupIsLookingFor // ignore: cast_nullable_to_non_nullable
as List<String>,livingRules: null == livingRules ? _self.livingRules : livingRules // ignore: cast_nullable_to_non_nullable
as List<String>,apartmentLifestyle: null == apartmentLifestyle ? _self.apartmentLifestyle : apartmentLifestyle // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,apartmentAtmosphere: null == apartmentAtmosphere ? _self.apartmentAtmosphere : apartmentAtmosphere // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupConditionsModel].
extension GroupConditionsModelPatterns on GroupConditionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupConditionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupConditionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupConditionsModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupConditionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupConditionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupConditionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String groupId,  List<String> whoGroupIsLookingFor,  List<String> livingRules,  List<GroupPreferenceItemModel> apartmentLifestyle,  List<GroupPreferenceItemModel> apartmentAtmosphere,  int participantsCount,  int maxParticipantsCount,  List<ParticipantModel> participants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupConditionsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String groupId,  List<String> whoGroupIsLookingFor,  List<String> livingRules,  List<GroupPreferenceItemModel> apartmentLifestyle,  List<GroupPreferenceItemModel> apartmentAtmosphere,  int participantsCount,  int maxParticipantsCount,  List<ParticipantModel> participants)  $default,) {final _that = this;
switch (_that) {
case _GroupConditionsModel():
return $default(_that.groupId,_that.whoGroupIsLookingFor,_that.livingRules,_that.apartmentLifestyle,_that.apartmentAtmosphere,_that.participantsCount,_that.maxParticipantsCount,_that.participants);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String groupId,  List<String> whoGroupIsLookingFor,  List<String> livingRules,  List<GroupPreferenceItemModel> apartmentLifestyle,  List<GroupPreferenceItemModel> apartmentAtmosphere,  int participantsCount,  int maxParticipantsCount,  List<ParticipantModel> participants)?  $default,) {final _that = this;
switch (_that) {
case _GroupConditionsModel() when $default != null:
return $default(_that.groupId,_that.whoGroupIsLookingFor,_that.livingRules,_that.apartmentLifestyle,_that.apartmentAtmosphere,_that.participantsCount,_that.maxParticipantsCount,_that.participants);case _:
  return null;

}
}

}

/// @nodoc


class _GroupConditionsModel implements GroupConditionsModel {
  const _GroupConditionsModel({this.groupId = '', final  List<String> whoGroupIsLookingFor = const [], final  List<String> livingRules = const [], final  List<GroupPreferenceItemModel> apartmentLifestyle = const [], final  List<GroupPreferenceItemModel> apartmentAtmosphere = const [], this.participantsCount = 0, this.maxParticipantsCount = 0, final  List<ParticipantModel> participants = const []}): _whoGroupIsLookingFor = whoGroupIsLookingFor,_livingRules = livingRules,_apartmentLifestyle = apartmentLifestyle,_apartmentAtmosphere = apartmentAtmosphere,_participants = participants;
  

@override@JsonKey() final  String groupId;
 final  List<String> _whoGroupIsLookingFor;
@override@JsonKey() List<String> get whoGroupIsLookingFor {
  if (_whoGroupIsLookingFor is EqualUnmodifiableListView) return _whoGroupIsLookingFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whoGroupIsLookingFor);
}

 final  List<String> _livingRules;
@override@JsonKey() List<String> get livingRules {
  if (_livingRules is EqualUnmodifiableListView) return _livingRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_livingRules);
}

 final  List<GroupPreferenceItemModel> _apartmentLifestyle;
@override@JsonKey() List<GroupPreferenceItemModel> get apartmentLifestyle {
  if (_apartmentLifestyle is EqualUnmodifiableListView) return _apartmentLifestyle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apartmentLifestyle);
}

 final  List<GroupPreferenceItemModel> _apartmentAtmosphere;
@override@JsonKey() List<GroupPreferenceItemModel> get apartmentAtmosphere {
  if (_apartmentAtmosphere is EqualUnmodifiableListView) return _apartmentAtmosphere;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apartmentAtmosphere);
}

@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int maxParticipantsCount;
 final  List<ParticipantModel> _participants;
@override@JsonKey() List<ParticipantModel> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}


/// Create a copy of GroupConditionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupConditionsModelCopyWith<_GroupConditionsModel> get copyWith => __$GroupConditionsModelCopyWithImpl<_GroupConditionsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupConditionsModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&const DeepCollectionEquality().equals(other._whoGroupIsLookingFor, _whoGroupIsLookingFor)&&const DeepCollectionEquality().equals(other._livingRules, _livingRules)&&const DeepCollectionEquality().equals(other._apartmentLifestyle, _apartmentLifestyle)&&const DeepCollectionEquality().equals(other._apartmentAtmosphere, _apartmentAtmosphere)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other._participants, _participants));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,const DeepCollectionEquality().hash(_whoGroupIsLookingFor),const DeepCollectionEquality().hash(_livingRules),const DeepCollectionEquality().hash(_apartmentLifestyle),const DeepCollectionEquality().hash(_apartmentAtmosphere),participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(_participants));

@override
String toString() {
  return 'GroupConditionsModel(groupId: $groupId, whoGroupIsLookingFor: $whoGroupIsLookingFor, livingRules: $livingRules, apartmentLifestyle: $apartmentLifestyle, apartmentAtmosphere: $apartmentAtmosphere, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participants: $participants)';
}


}

/// @nodoc
abstract mixin class _$GroupConditionsModelCopyWith<$Res> implements $GroupConditionsModelCopyWith<$Res> {
  factory _$GroupConditionsModelCopyWith(_GroupConditionsModel value, $Res Function(_GroupConditionsModel) _then) = __$GroupConditionsModelCopyWithImpl;
@override @useResult
$Res call({
 String groupId, List<String> whoGroupIsLookingFor, List<String> livingRules, List<GroupPreferenceItemModel> apartmentLifestyle, List<GroupPreferenceItemModel> apartmentAtmosphere, int participantsCount, int maxParticipantsCount, List<ParticipantModel> participants
});




}
/// @nodoc
class __$GroupConditionsModelCopyWithImpl<$Res>
    implements _$GroupConditionsModelCopyWith<$Res> {
  __$GroupConditionsModelCopyWithImpl(this._self, this._then);

  final _GroupConditionsModel _self;
  final $Res Function(_GroupConditionsModel) _then;

/// Create a copy of GroupConditionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? whoGroupIsLookingFor = null,Object? livingRules = null,Object? apartmentLifestyle = null,Object? apartmentAtmosphere = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? participants = null,}) {
  return _then(_GroupConditionsModel(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,whoGroupIsLookingFor: null == whoGroupIsLookingFor ? _self._whoGroupIsLookingFor : whoGroupIsLookingFor // ignore: cast_nullable_to_non_nullable
as List<String>,livingRules: null == livingRules ? _self._livingRules : livingRules // ignore: cast_nullable_to_non_nullable
as List<String>,apartmentLifestyle: null == apartmentLifestyle ? _self._apartmentLifestyle : apartmentLifestyle // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,apartmentAtmosphere: null == apartmentAtmosphere ? _self._apartmentAtmosphere : apartmentAtmosphere // ignore: cast_nullable_to_non_nullable
as List<GroupPreferenceItemModel>,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,
  ));
}


}

// dart format on
