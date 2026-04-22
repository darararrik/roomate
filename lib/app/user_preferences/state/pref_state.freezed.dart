// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pref_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrefState {

 int get communcationId; int get sleepId; Set<int> get employmentId; Set<int> get badHabitsId; int get guestsId; int get noiseLevelId; int get cleaningId; Set<int> get petsId; int get petsAttitudeId;
/// Create a copy of PrefState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrefStateCopyWith<PrefState> get copyWith => _$PrefStateCopyWithImpl<PrefState>(this as PrefState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrefState&&(identical(other.communcationId, communcationId) || other.communcationId == communcationId)&&(identical(other.sleepId, sleepId) || other.sleepId == sleepId)&&const DeepCollectionEquality().equals(other.employmentId, employmentId)&&const DeepCollectionEquality().equals(other.badHabitsId, badHabitsId)&&(identical(other.guestsId, guestsId) || other.guestsId == guestsId)&&(identical(other.noiseLevelId, noiseLevelId) || other.noiseLevelId == noiseLevelId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&const DeepCollectionEquality().equals(other.petsId, petsId)&&(identical(other.petsAttitudeId, petsAttitudeId) || other.petsAttitudeId == petsAttitudeId));
}


@override
int get hashCode => Object.hash(runtimeType,communcationId,sleepId,const DeepCollectionEquality().hash(employmentId),const DeepCollectionEquality().hash(badHabitsId),guestsId,noiseLevelId,cleaningId,const DeepCollectionEquality().hash(petsId),petsAttitudeId);

@override
String toString() {
  return 'PrefState(communcationId: $communcationId, sleepId: $sleepId, employmentId: $employmentId, badHabitsId: $badHabitsId, guestsId: $guestsId, noiseLevelId: $noiseLevelId, cleaningId: $cleaningId, petsId: $petsId, petsAttitudeId: $petsAttitudeId)';
}


}

/// @nodoc
abstract mixin class $PrefStateCopyWith<$Res>  {
  factory $PrefStateCopyWith(PrefState value, $Res Function(PrefState) _then) = _$PrefStateCopyWithImpl;
@useResult
$Res call({
 int communcationId, int sleepId, Set<int> employmentId, Set<int> badHabitsId, int guestsId, int noiseLevelId, int cleaningId, Set<int> petsId, int petsAttitudeId
});




}
/// @nodoc
class _$PrefStateCopyWithImpl<$Res>
    implements $PrefStateCopyWith<$Res> {
  _$PrefStateCopyWithImpl(this._self, this._then);

  final PrefState _self;
  final $Res Function(PrefState) _then;

/// Create a copy of PrefState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communcationId = null,Object? sleepId = null,Object? employmentId = null,Object? badHabitsId = null,Object? guestsId = null,Object? noiseLevelId = null,Object? cleaningId = null,Object? petsId = null,Object? petsAttitudeId = null,}) {
  return _then(_self.copyWith(
communcationId: null == communcationId ? _self.communcationId : communcationId // ignore: cast_nullable_to_non_nullable
as int,sleepId: null == sleepId ? _self.sleepId : sleepId // ignore: cast_nullable_to_non_nullable
as int,employmentId: null == employmentId ? _self.employmentId : employmentId // ignore: cast_nullable_to_non_nullable
as Set<int>,badHabitsId: null == badHabitsId ? _self.badHabitsId : badHabitsId // ignore: cast_nullable_to_non_nullable
as Set<int>,guestsId: null == guestsId ? _self.guestsId : guestsId // ignore: cast_nullable_to_non_nullable
as int,noiseLevelId: null == noiseLevelId ? _self.noiseLevelId : noiseLevelId // ignore: cast_nullable_to_non_nullable
as int,cleaningId: null == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as int,petsId: null == petsId ? _self.petsId : petsId // ignore: cast_nullable_to_non_nullable
as Set<int>,petsAttitudeId: null == petsAttitudeId ? _self.petsAttitudeId : petsAttitudeId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PrefState].
extension PrefStatePatterns on PrefState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrefState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrefState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrefState value)  $default,){
final _that = this;
switch (_that) {
case _PrefState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrefState value)?  $default,){
final _that = this;
switch (_that) {
case _PrefState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int communcationId,  int sleepId,  Set<int> employmentId,  Set<int> badHabitsId,  int guestsId,  int noiseLevelId,  int cleaningId,  Set<int> petsId,  int petsAttitudeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrefState() when $default != null:
return $default(_that.communcationId,_that.sleepId,_that.employmentId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int communcationId,  int sleepId,  Set<int> employmentId,  Set<int> badHabitsId,  int guestsId,  int noiseLevelId,  int cleaningId,  Set<int> petsId,  int petsAttitudeId)  $default,) {final _that = this;
switch (_that) {
case _PrefState():
return $default(_that.communcationId,_that.sleepId,_that.employmentId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int communcationId,  int sleepId,  Set<int> employmentId,  Set<int> badHabitsId,  int guestsId,  int noiseLevelId,  int cleaningId,  Set<int> petsId,  int petsAttitudeId)?  $default,) {final _that = this;
switch (_that) {
case _PrefState() when $default != null:
return $default(_that.communcationId,_that.sleepId,_that.employmentId,_that.badHabitsId,_that.guestsId,_that.noiseLevelId,_that.cleaningId,_that.petsId,_that.petsAttitudeId);case _:
  return null;

}
}

}

/// @nodoc


class _PrefState implements PrefState {
  const _PrefState({this.communcationId = 0, this.sleepId = 0, final  Set<int> employmentId = const {}, final  Set<int> badHabitsId = const {}, this.guestsId = 0, this.noiseLevelId = 0, this.cleaningId = 0, final  Set<int> petsId = const {}, this.petsAttitudeId = 0}): _employmentId = employmentId,_badHabitsId = badHabitsId,_petsId = petsId;
  

@override@JsonKey() final  int communcationId;
@override@JsonKey() final  int sleepId;
 final  Set<int> _employmentId;
@override@JsonKey() Set<int> get employmentId {
  if (_employmentId is EqualUnmodifiableSetView) return _employmentId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_employmentId);
}

 final  Set<int> _badHabitsId;
@override@JsonKey() Set<int> get badHabitsId {
  if (_badHabitsId is EqualUnmodifiableSetView) return _badHabitsId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_badHabitsId);
}

@override@JsonKey() final  int guestsId;
@override@JsonKey() final  int noiseLevelId;
@override@JsonKey() final  int cleaningId;
 final  Set<int> _petsId;
@override@JsonKey() Set<int> get petsId {
  if (_petsId is EqualUnmodifiableSetView) return _petsId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_petsId);
}

@override@JsonKey() final  int petsAttitudeId;

/// Create a copy of PrefState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrefStateCopyWith<_PrefState> get copyWith => __$PrefStateCopyWithImpl<_PrefState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrefState&&(identical(other.communcationId, communcationId) || other.communcationId == communcationId)&&(identical(other.sleepId, sleepId) || other.sleepId == sleepId)&&const DeepCollectionEquality().equals(other._employmentId, _employmentId)&&const DeepCollectionEquality().equals(other._badHabitsId, _badHabitsId)&&(identical(other.guestsId, guestsId) || other.guestsId == guestsId)&&(identical(other.noiseLevelId, noiseLevelId) || other.noiseLevelId == noiseLevelId)&&(identical(other.cleaningId, cleaningId) || other.cleaningId == cleaningId)&&const DeepCollectionEquality().equals(other._petsId, _petsId)&&(identical(other.petsAttitudeId, petsAttitudeId) || other.petsAttitudeId == petsAttitudeId));
}


@override
int get hashCode => Object.hash(runtimeType,communcationId,sleepId,const DeepCollectionEquality().hash(_employmentId),const DeepCollectionEquality().hash(_badHabitsId),guestsId,noiseLevelId,cleaningId,const DeepCollectionEquality().hash(_petsId),petsAttitudeId);

@override
String toString() {
  return 'PrefState(communcationId: $communcationId, sleepId: $sleepId, employmentId: $employmentId, badHabitsId: $badHabitsId, guestsId: $guestsId, noiseLevelId: $noiseLevelId, cleaningId: $cleaningId, petsId: $petsId, petsAttitudeId: $petsAttitudeId)';
}


}

/// @nodoc
abstract mixin class _$PrefStateCopyWith<$Res> implements $PrefStateCopyWith<$Res> {
  factory _$PrefStateCopyWith(_PrefState value, $Res Function(_PrefState) _then) = __$PrefStateCopyWithImpl;
@override @useResult
$Res call({
 int communcationId, int sleepId, Set<int> employmentId, Set<int> badHabitsId, int guestsId, int noiseLevelId, int cleaningId, Set<int> petsId, int petsAttitudeId
});




}
/// @nodoc
class __$PrefStateCopyWithImpl<$Res>
    implements _$PrefStateCopyWith<$Res> {
  __$PrefStateCopyWithImpl(this._self, this._then);

  final _PrefState _self;
  final $Res Function(_PrefState) _then;

/// Create a copy of PrefState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communcationId = null,Object? sleepId = null,Object? employmentId = null,Object? badHabitsId = null,Object? guestsId = null,Object? noiseLevelId = null,Object? cleaningId = null,Object? petsId = null,Object? petsAttitudeId = null,}) {
  return _then(_PrefState(
communcationId: null == communcationId ? _self.communcationId : communcationId // ignore: cast_nullable_to_non_nullable
as int,sleepId: null == sleepId ? _self.sleepId : sleepId // ignore: cast_nullable_to_non_nullable
as int,employmentId: null == employmentId ? _self._employmentId : employmentId // ignore: cast_nullable_to_non_nullable
as Set<int>,badHabitsId: null == badHabitsId ? _self._badHabitsId : badHabitsId // ignore: cast_nullable_to_non_nullable
as Set<int>,guestsId: null == guestsId ? _self.guestsId : guestsId // ignore: cast_nullable_to_non_nullable
as int,noiseLevelId: null == noiseLevelId ? _self.noiseLevelId : noiseLevelId // ignore: cast_nullable_to_non_nullable
as int,cleaningId: null == cleaningId ? _self.cleaningId : cleaningId // ignore: cast_nullable_to_non_nullable
as int,petsId: null == petsId ? _self._petsId : petsId // ignore: cast_nullable_to_non_nullable
as Set<int>,petsAttitudeId: null == petsAttitudeId ? _self.petsAttitudeId : petsAttitudeId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
