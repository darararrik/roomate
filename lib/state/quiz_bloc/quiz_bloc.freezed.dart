// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizEvent()';
}


}

/// @nodoc
class $QuizEventCopyWith<$Res>  {
$QuizEventCopyWith(QuizEvent _, $Res Function(QuizEvent) __);
}


/// Adds pattern-matching-related methods to [QuizEvent].
extension QuizEventPatterns on QuizEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OptionSelected value)?  optionSelected,TResult Function( _StepBack value)?  stepBack,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionSelected() when optionSelected != null:
return optionSelected(_that);case _StepBack() when stepBack != null:
return stepBack(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OptionSelected value)  optionSelected,required TResult Function( _StepBack value)  stepBack,}){
final _that = this;
switch (_that) {
case _OptionSelected():
return optionSelected(_that);case _StepBack():
return stepBack(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OptionSelected value)?  optionSelected,TResult? Function( _StepBack value)?  stepBack,}){
final _that = this;
switch (_that) {
case _OptionSelected() when optionSelected != null:
return optionSelected(_that);case _StepBack() when stepBack != null:
return stepBack(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String answer,  int totalSteps)?  optionSelected,TResult Function()?  stepBack,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionSelected() when optionSelected != null:
return optionSelected(_that.answer,_that.totalSteps);case _StepBack() when stepBack != null:
return stepBack();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String answer,  int totalSteps)  optionSelected,required TResult Function()  stepBack,}) {final _that = this;
switch (_that) {
case _OptionSelected():
return optionSelected(_that.answer,_that.totalSteps);case _StepBack():
return stepBack();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String answer,  int totalSteps)?  optionSelected,TResult? Function()?  stepBack,}) {final _that = this;
switch (_that) {
case _OptionSelected() when optionSelected != null:
return optionSelected(_that.answer,_that.totalSteps);case _StepBack() when stepBack != null:
return stepBack();case _:
  return null;

}
}

}

/// @nodoc


class _OptionSelected implements QuizEvent {
  const _OptionSelected({required this.answer, required this.totalSteps});
  

 final  String answer;
 final  int totalSteps;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionSelectedCopyWith<_OptionSelected> get copyWith => __$OptionSelectedCopyWithImpl<_OptionSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionSelected&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.totalSteps, totalSteps) || other.totalSteps == totalSteps));
}


@override
int get hashCode => Object.hash(runtimeType,answer,totalSteps);

@override
String toString() {
  return 'QuizEvent.optionSelected(answer: $answer, totalSteps: $totalSteps)';
}


}

/// @nodoc
abstract mixin class _$OptionSelectedCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$OptionSelectedCopyWith(_OptionSelected value, $Res Function(_OptionSelected) _then) = __$OptionSelectedCopyWithImpl;
@useResult
$Res call({
 String answer, int totalSteps
});




}
/// @nodoc
class __$OptionSelectedCopyWithImpl<$Res>
    implements _$OptionSelectedCopyWith<$Res> {
  __$OptionSelectedCopyWithImpl(this._self, this._then);

  final _OptionSelected _self;
  final $Res Function(_OptionSelected) _then;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answer = null,Object? totalSteps = null,}) {
  return _then(_OptionSelected(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,totalSteps: null == totalSteps ? _self.totalSteps : totalSteps // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _StepBack implements QuizEvent {
  const _StepBack();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StepBack);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizEvent.stepBack()';
}


}




/// @nodoc
mixin _$QuizState {

 int get currentIndex; QuizStatus get status; List<String> get selectedAnswers;
/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizStateCopyWith<QuizState> get copyWith => _$QuizStateCopyWithImpl<QuizState>(this as QuizState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.selectedAnswers, selectedAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,status,const DeepCollectionEquality().hash(selectedAnswers));

@override
String toString() {
  return 'QuizState(currentIndex: $currentIndex, status: $status, selectedAnswers: $selectedAnswers)';
}


}

/// @nodoc
abstract mixin class $QuizStateCopyWith<$Res>  {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) _then) = _$QuizStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, QuizStatus status, List<String> selectedAnswers
});




}
/// @nodoc
class _$QuizStateCopyWithImpl<$Res>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._self, this._then);

  final QuizState _self;
  final $Res Function(QuizState) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? status = null,Object? selectedAnswers = null,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QuizStatus,selectedAnswers: null == selectedAnswers ? _self.selectedAnswers : selectedAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizState].
extension QuizStatePatterns on QuizState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizState value)  $default,){
final _that = this;
switch (_that) {
case _QuizState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizState value)?  $default,){
final _that = this;
switch (_that) {
case _QuizState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  QuizStatus status,  List<String> selectedAnswers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizState() when $default != null:
return $default(_that.currentIndex,_that.status,_that.selectedAnswers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  QuizStatus status,  List<String> selectedAnswers)  $default,) {final _that = this;
switch (_that) {
case _QuizState():
return $default(_that.currentIndex,_that.status,_that.selectedAnswers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  QuizStatus status,  List<String> selectedAnswers)?  $default,) {final _that = this;
switch (_that) {
case _QuizState() when $default != null:
return $default(_that.currentIndex,_that.status,_that.selectedAnswers);case _:
  return null;

}
}

}

/// @nodoc


class _QuizState implements QuizState {
  const _QuizState({this.currentIndex = 0, this.status = QuizStatus.initial, final  List<String> selectedAnswers = const []}): _selectedAnswers = selectedAnswers;
  

@override@JsonKey() final  int currentIndex;
@override@JsonKey() final  QuizStatus status;
 final  List<String> _selectedAnswers;
@override@JsonKey() List<String> get selectedAnswers {
  if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedAnswers);
}


/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizStateCopyWith<_QuizState> get copyWith => __$QuizStateCopyWithImpl<_QuizState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._selectedAnswers, _selectedAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,status,const DeepCollectionEquality().hash(_selectedAnswers));

@override
String toString() {
  return 'QuizState(currentIndex: $currentIndex, status: $status, selectedAnswers: $selectedAnswers)';
}


}

/// @nodoc
abstract mixin class _$QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$QuizStateCopyWith(_QuizState value, $Res Function(_QuizState) _then) = __$QuizStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, QuizStatus status, List<String> selectedAnswers
});




}
/// @nodoc
class __$QuizStateCopyWithImpl<$Res>
    implements _$QuizStateCopyWith<$Res> {
  __$QuizStateCopyWithImpl(this._self, this._then);

  final _QuizState _self;
  final $Res Function(_QuizState) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? status = null,Object? selectedAnswers = null,}) {
  return _then(_QuizState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as QuizStatus,selectedAnswers: null == selectedAnswers ? _self._selectedAnswers : selectedAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
