// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartaments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentsState {

 List<ApartamentModel> get apartaments;
/// Create a copy of ApartamentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentsStateCopyWith<ApartamentsState> get copyWith => _$ApartamentsStateCopyWithImpl<ApartamentsState>(this as ApartamentsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentsState&&const DeepCollectionEquality().equals(other.apartaments, apartaments));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(apartaments));

@override
String toString() {
  return 'ApartamentsState(apartaments: $apartaments)';
}


}

/// @nodoc
abstract mixin class $ApartamentsStateCopyWith<$Res>  {
  factory $ApartamentsStateCopyWith(ApartamentsState value, $Res Function(ApartamentsState) _then) = _$ApartamentsStateCopyWithImpl;
@useResult
$Res call({
 List<ApartamentModel> apartaments
});




}
/// @nodoc
class _$ApartamentsStateCopyWithImpl<$Res>
    implements $ApartamentsStateCopyWith<$Res> {
  _$ApartamentsStateCopyWithImpl(this._self, this._then);

  final ApartamentsState _self;
  final $Res Function(ApartamentsState) _then;

/// Create a copy of ApartamentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apartaments = null,}) {
  return _then(_self.copyWith(
apartaments: null == apartaments ? _self.apartaments : apartaments // ignore: cast_nullable_to_non_nullable
as List<ApartamentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentsState].
extension ApartamentsStatePatterns on ApartamentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentsState value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentsState value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ApartamentModel> apartaments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentsState() when $default != null:
return $default(_that.apartaments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ApartamentModel> apartaments)  $default,) {final _that = this;
switch (_that) {
case _ApartamentsState():
return $default(_that.apartaments);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ApartamentModel> apartaments)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentsState() when $default != null:
return $default(_that.apartaments);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentsState implements ApartamentsState {
  const _ApartamentsState({final  List<ApartamentModel> apartaments = const []}): _apartaments = apartaments;
  

 final  List<ApartamentModel> _apartaments;
@override@JsonKey() List<ApartamentModel> get apartaments {
  if (_apartaments is EqualUnmodifiableListView) return _apartaments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apartaments);
}


/// Create a copy of ApartamentsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentsStateCopyWith<_ApartamentsState> get copyWith => __$ApartamentsStateCopyWithImpl<_ApartamentsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentsState&&const DeepCollectionEquality().equals(other._apartaments, _apartaments));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_apartaments));

@override
String toString() {
  return 'ApartamentsState(apartaments: $apartaments)';
}


}

/// @nodoc
abstract mixin class _$ApartamentsStateCopyWith<$Res> implements $ApartamentsStateCopyWith<$Res> {
  factory _$ApartamentsStateCopyWith(_ApartamentsState value, $Res Function(_ApartamentsState) _then) = __$ApartamentsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ApartamentModel> apartaments
});




}
/// @nodoc
class __$ApartamentsStateCopyWithImpl<$Res>
    implements _$ApartamentsStateCopyWith<$Res> {
  __$ApartamentsStateCopyWithImpl(this._self, this._then);

  final _ApartamentsState _self;
  final $Res Function(_ApartamentsState) _then;

/// Create a copy of ApartamentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apartaments = null,}) {
  return _then(_ApartamentsState(
apartaments: null == apartaments ? _self._apartaments : apartaments // ignore: cast_nullable_to_non_nullable
as List<ApartamentModel>,
  ));
}


}

// dart format on
