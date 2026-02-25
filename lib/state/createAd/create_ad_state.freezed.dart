// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdState {

 Map<SelectionStepKey, Map<String, List<String>>> get selectedTags; Currency get selectedCurrency; String get cost;
/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdStateCopyWith<CreateAdState> get copyWith => _$CreateAdStateCopyWithImpl<CreateAdState>(this as CreateAdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdState&&const DeepCollectionEquality().equals(other.selectedTags, selectedTags)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedTags),selectedCurrency,cost);

@override
String toString() {
  return 'CreateAdState(selectedTags: $selectedTags, selectedCurrency: $selectedCurrency, cost: $cost)';
}


}

/// @nodoc
abstract mixin class $CreateAdStateCopyWith<$Res>  {
  factory $CreateAdStateCopyWith(CreateAdState value, $Res Function(CreateAdState) _then) = _$CreateAdStateCopyWithImpl;
@useResult
$Res call({
 Map<SelectionStepKey, Map<String, List<String>>> selectedTags, Currency selectedCurrency, String cost
});




}
/// @nodoc
class _$CreateAdStateCopyWithImpl<$Res>
    implements $CreateAdStateCopyWith<$Res> {
  _$CreateAdStateCopyWithImpl(this._self, this._then);

  final CreateAdState _self;
  final $Res Function(CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTags = null,Object? selectedCurrency = null,Object? cost = null,}) {
  return _then(_self.copyWith(
selectedTags: null == selectedTags ? _self.selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<SelectionStepKey, Map<String, List<String>>>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdState].
extension CreateAdStatePatterns on CreateAdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<SelectionStepKey, Map<String, List<String>>> selectedTags,  Currency selectedCurrency,  String cost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.selectedTags,_that.selectedCurrency,_that.cost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<SelectionStepKey, Map<String, List<String>>> selectedTags,  Currency selectedCurrency,  String cost)  $default,) {final _that = this;
switch (_that) {
case _CreateAdState():
return $default(_that.selectedTags,_that.selectedCurrency,_that.cost);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<SelectionStepKey, Map<String, List<String>>> selectedTags,  Currency selectedCurrency,  String cost)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.selectedTags,_that.selectedCurrency,_that.cost);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdState implements CreateAdState {
  const _CreateAdState({final  Map<SelectionStepKey, Map<String, List<String>>> selectedTags = const {}, this.selectedCurrency = Currency.rub, this.cost = ""}): _selectedTags = selectedTags;
  

 final  Map<SelectionStepKey, Map<String, List<String>>> _selectedTags;
@override@JsonKey() Map<SelectionStepKey, Map<String, List<String>>> get selectedTags {
  if (_selectedTags is EqualUnmodifiableMapView) return _selectedTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedTags);
}

@override@JsonKey() final  Currency selectedCurrency;
@override@JsonKey() final  String cost;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdStateCopyWith<_CreateAdState> get copyWith => __$CreateAdStateCopyWithImpl<_CreateAdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdState&&const DeepCollectionEquality().equals(other._selectedTags, _selectedTags)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedTags),selectedCurrency,cost);

@override
String toString() {
  return 'CreateAdState(selectedTags: $selectedTags, selectedCurrency: $selectedCurrency, cost: $cost)';
}


}

/// @nodoc
abstract mixin class _$CreateAdStateCopyWith<$Res> implements $CreateAdStateCopyWith<$Res> {
  factory _$CreateAdStateCopyWith(_CreateAdState value, $Res Function(_CreateAdState) _then) = __$CreateAdStateCopyWithImpl;
@override @useResult
$Res call({
 Map<SelectionStepKey, Map<String, List<String>>> selectedTags, Currency selectedCurrency, String cost
});




}
/// @nodoc
class __$CreateAdStateCopyWithImpl<$Res>
    implements _$CreateAdStateCopyWith<$Res> {
  __$CreateAdStateCopyWithImpl(this._self, this._then);

  final _CreateAdState _self;
  final $Res Function(_CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTags = null,Object? selectedCurrency = null,Object? cost = null,}) {
  return _then(_CreateAdState(
selectedTags: null == selectedTags ? _self._selectedTags : selectedTags // ignore: cast_nullable_to_non_nullable
as Map<SelectionStepKey, Map<String, List<String>>>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
