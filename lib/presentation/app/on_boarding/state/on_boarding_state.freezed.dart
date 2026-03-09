// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingState {

 int get currentIndex; OnBoardingStatusEnum get status; List<String> get answers; List<QuizStepModel> get steps;
/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnBoardingStateCopyWith<OnBoardingState> get copyWith => _$OnBoardingStateCopyWithImpl<OnBoardingState>(this as OnBoardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.answers, answers)&&const DeepCollectionEquality().equals(other.steps, steps));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,status,const DeepCollectionEquality().hash(answers),const DeepCollectionEquality().hash(steps));

@override
String toString() {
  return 'OnBoardingState(currentIndex: $currentIndex, status: $status, answers: $answers, steps: $steps)';
}


}

/// @nodoc
abstract mixin class $OnBoardingStateCopyWith<$Res>  {
  factory $OnBoardingStateCopyWith(OnBoardingState value, $Res Function(OnBoardingState) _then) = _$OnBoardingStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, OnBoardingStatusEnum status, List<String> answers, List<QuizStepModel> steps
});




}
/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._self, this._then);

  final OnBoardingState _self;
  final $Res Function(OnBoardingState) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? status = null,Object? answers = null,Object? steps = null,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OnBoardingStatusEnum,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<String>,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<QuizStepModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OnBoardingState].
extension OnBoardingStatePatterns on OnBoardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnBoardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnBoardingState value)  $default,){
final _that = this;
switch (_that) {
case _OnBoardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnBoardingState value)?  $default,){
final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  OnBoardingStatusEnum status,  List<String> answers,  List<QuizStepModel> steps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
return $default(_that.currentIndex,_that.status,_that.answers,_that.steps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  OnBoardingStatusEnum status,  List<String> answers,  List<QuizStepModel> steps)  $default,) {final _that = this;
switch (_that) {
case _OnBoardingState():
return $default(_that.currentIndex,_that.status,_that.answers,_that.steps);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  OnBoardingStatusEnum status,  List<String> answers,  List<QuizStepModel> steps)?  $default,) {final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
return $default(_that.currentIndex,_that.status,_that.answers,_that.steps);case _:
  return null;

}
}

}

/// @nodoc


class _OnBoardingState extends OnBoardingState {
  const _OnBoardingState({this.currentIndex = 0, this.status = OnBoardingStatusEnum.initial, final  List<String> answers = const [], final  List<QuizStepModel> steps = const []}): _answers = answers,_steps = steps,super._();
  

@override@JsonKey() final  int currentIndex;
@override@JsonKey() final  OnBoardingStatusEnum status;
 final  List<String> _answers;
@override@JsonKey() List<String> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

 final  List<QuizStepModel> _steps;
@override@JsonKey() List<QuizStepModel> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}


/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnBoardingStateCopyWith<_OnBoardingState> get copyWith => __$OnBoardingStateCopyWithImpl<_OnBoardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnBoardingState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._answers, _answers)&&const DeepCollectionEquality().equals(other._steps, _steps));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,status,const DeepCollectionEquality().hash(_answers),const DeepCollectionEquality().hash(_steps));

@override
String toString() {
  return 'OnBoardingState(currentIndex: $currentIndex, status: $status, answers: $answers, steps: $steps)';
}


}

/// @nodoc
abstract mixin class _$OnBoardingStateCopyWith<$Res> implements $OnBoardingStateCopyWith<$Res> {
  factory _$OnBoardingStateCopyWith(_OnBoardingState value, $Res Function(_OnBoardingState) _then) = __$OnBoardingStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, OnBoardingStatusEnum status, List<String> answers, List<QuizStepModel> steps
});




}
/// @nodoc
class __$OnBoardingStateCopyWithImpl<$Res>
    implements _$OnBoardingStateCopyWith<$Res> {
  __$OnBoardingStateCopyWithImpl(this._self, this._then);

  final _OnBoardingState _self;
  final $Res Function(_OnBoardingState) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? status = null,Object? answers = null,Object? steps = null,}) {
  return _then(_OnBoardingState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OnBoardingStatusEnum,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<String>,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<QuizStepModel>,
  ));
}


}

// dart format on
