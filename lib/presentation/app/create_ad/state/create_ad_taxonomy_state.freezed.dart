// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_taxonomy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdTaxonomyState {

 Map<String, TagGroupModel> get allGroups;
/// Create a copy of CreateAdTaxonomyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdTaxonomyStateCopyWith<CreateAdTaxonomyState> get copyWith => _$CreateAdTaxonomyStateCopyWithImpl<CreateAdTaxonomyState>(this as CreateAdTaxonomyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdTaxonomyState&&const DeepCollectionEquality().equals(other.allGroups, allGroups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allGroups));

@override
String toString() {
  return 'CreateAdTaxonomyState(allGroups: $allGroups)';
}


}

/// @nodoc
abstract mixin class $CreateAdTaxonomyStateCopyWith<$Res>  {
  factory $CreateAdTaxonomyStateCopyWith(CreateAdTaxonomyState value, $Res Function(CreateAdTaxonomyState) _then) = _$CreateAdTaxonomyStateCopyWithImpl;
@useResult
$Res call({
 Map<String, TagGroupModel> allGroups
});




}
/// @nodoc
class _$CreateAdTaxonomyStateCopyWithImpl<$Res>
    implements $CreateAdTaxonomyStateCopyWith<$Res> {
  _$CreateAdTaxonomyStateCopyWithImpl(this._self, this._then);

  final CreateAdTaxonomyState _self;
  final $Res Function(CreateAdTaxonomyState) _then;

/// Create a copy of CreateAdTaxonomyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allGroups = null,}) {
  return _then(_self.copyWith(
allGroups: null == allGroups ? _self.allGroups : allGroups // ignore: cast_nullable_to_non_nullable
as Map<String, TagGroupModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdTaxonomyState].
extension CreateAdTaxonomyStatePatterns on CreateAdTaxonomyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdTaxonomyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdTaxonomyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdTaxonomyState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdTaxonomyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdTaxonomyState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdTaxonomyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, TagGroupModel> allGroups)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdTaxonomyState() when $default != null:
return $default(_that.allGroups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, TagGroupModel> allGroups)  $default,) {final _that = this;
switch (_that) {
case _CreateAdTaxonomyState():
return $default(_that.allGroups);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, TagGroupModel> allGroups)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdTaxonomyState() when $default != null:
return $default(_that.allGroups);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdTaxonomyState implements CreateAdTaxonomyState {
  const _CreateAdTaxonomyState({final  Map<String, TagGroupModel> allGroups = const {}}): _allGroups = allGroups;
  

 final  Map<String, TagGroupModel> _allGroups;
@override@JsonKey() Map<String, TagGroupModel> get allGroups {
  if (_allGroups is EqualUnmodifiableMapView) return _allGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_allGroups);
}


/// Create a copy of CreateAdTaxonomyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdTaxonomyStateCopyWith<_CreateAdTaxonomyState> get copyWith => __$CreateAdTaxonomyStateCopyWithImpl<_CreateAdTaxonomyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdTaxonomyState&&const DeepCollectionEquality().equals(other._allGroups, _allGroups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allGroups));

@override
String toString() {
  return 'CreateAdTaxonomyState(allGroups: $allGroups)';
}


}

/// @nodoc
abstract mixin class _$CreateAdTaxonomyStateCopyWith<$Res> implements $CreateAdTaxonomyStateCopyWith<$Res> {
  factory _$CreateAdTaxonomyStateCopyWith(_CreateAdTaxonomyState value, $Res Function(_CreateAdTaxonomyState) _then) = __$CreateAdTaxonomyStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, TagGroupModel> allGroups
});




}
/// @nodoc
class __$CreateAdTaxonomyStateCopyWithImpl<$Res>
    implements _$CreateAdTaxonomyStateCopyWith<$Res> {
  __$CreateAdTaxonomyStateCopyWithImpl(this._self, this._then);

  final _CreateAdTaxonomyState _self;
  final $Res Function(_CreateAdTaxonomyState) _then;

/// Create a copy of CreateAdTaxonomyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allGroups = null,}) {
  return _then(_CreateAdTaxonomyState(
allGroups: null == allGroups ? _self._allGroups : allGroups // ignore: cast_nullable_to_non_nullable
as Map<String, TagGroupModel>,
  ));
}


}

// dart format on
