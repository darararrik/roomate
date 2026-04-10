// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterDto {

@JsonKey(name: 'rent_goal') List<OptionDto>? get rentGoal;@JsonKey(name: 'property_type') List<OptionDto>? get propertyTypes;@JsonKey(name: 'rooms_count') List<OptionDto>? get roomsCounts;@JsonKey(name: 'rentDuration') List<OptionDto>? get rentDuration;
/// Create a copy of FilterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterDtoCopyWith<FilterDto> get copyWith => _$FilterDtoCopyWithImpl<FilterDto>(this as FilterDto, _$identity);

  /// Serializes this FilterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterDto&&const DeepCollectionEquality().equals(other.rentGoal, rentGoal)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts)&&const DeepCollectionEquality().equals(other.rentDuration, rentDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rentGoal),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts),const DeepCollectionEquality().hash(rentDuration));

@override
String toString() {
  return 'FilterDto(rentGoal: $rentGoal, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts, rentDuration: $rentDuration)';
}


}

/// @nodoc
abstract mixin class $FilterDtoCopyWith<$Res>  {
  factory $FilterDtoCopyWith(FilterDto value, $Res Function(FilterDto) _then) = _$FilterDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,@JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts,@JsonKey(name: 'rentDuration') List<OptionDto>? rentDuration
});




}
/// @nodoc
class _$FilterDtoCopyWithImpl<$Res>
    implements $FilterDtoCopyWith<$Res> {
  _$FilterDtoCopyWithImpl(this._self, this._then);

  final FilterDto _self;
  final $Res Function(FilterDto) _then;

/// Create a copy of FilterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoal = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,Object? rentDuration = freezed,}) {
  return _then(_self.copyWith(
rentGoal: freezed == rentGoal ? _self.rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyTypes: freezed == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCounts: freezed == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentDuration: freezed == rentDuration ? _self.rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterDto].
extension FilterDtoPatterns on FilterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterDto value)  $default,){
final _that = this;
switch (_that) {
case _FilterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterDto value)?  $default,){
final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts, @JsonKey(name: 'rentDuration')  List<OptionDto>? rentDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.rentDuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts, @JsonKey(name: 'rentDuration')  List<OptionDto>? rentDuration)  $default,) {final _that = this;
switch (_that) {
case _FilterDto():
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.rentDuration);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts, @JsonKey(name: 'rentDuration')  List<OptionDto>? rentDuration)?  $default,) {final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.rentDuration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterDto implements FilterDto {
  const _FilterDto({@JsonKey(name: 'rent_goal') final  List<OptionDto>? rentGoal, @JsonKey(name: 'property_type') final  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count') final  List<OptionDto>? roomsCounts, @JsonKey(name: 'rentDuration') final  List<OptionDto>? rentDuration}): _rentGoal = rentGoal,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts,_rentDuration = rentDuration;
  factory _FilterDto.fromJson(Map<String, dynamic> json) => _$FilterDtoFromJson(json);

 final  List<OptionDto>? _rentGoal;
@override@JsonKey(name: 'rent_goal') List<OptionDto>? get rentGoal {
  final value = _rentGoal;
  if (value == null) return null;
  if (_rentGoal is EqualUnmodifiableListView) return _rentGoal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _propertyTypes;
@override@JsonKey(name: 'property_type') List<OptionDto>? get propertyTypes {
  final value = _propertyTypes;
  if (value == null) return null;
  if (_propertyTypes is EqualUnmodifiableListView) return _propertyTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _roomsCounts;
@override@JsonKey(name: 'rooms_count') List<OptionDto>? get roomsCounts {
  final value = _roomsCounts;
  if (value == null) return null;
  if (_roomsCounts is EqualUnmodifiableListView) return _roomsCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _rentDuration;
@override@JsonKey(name: 'rentDuration') List<OptionDto>? get rentDuration {
  final value = _rentDuration;
  if (value == null) return null;
  if (_rentDuration is EqualUnmodifiableListView) return _rentDuration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterDtoCopyWith<_FilterDto> get copyWith => __$FilterDtoCopyWithImpl<_FilterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterDto&&const DeepCollectionEquality().equals(other._rentGoal, _rentGoal)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts)&&const DeepCollectionEquality().equals(other._rentDuration, _rentDuration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rentGoal),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts),const DeepCollectionEquality().hash(_rentDuration));

@override
String toString() {
  return 'FilterDto(rentGoal: $rentGoal, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts, rentDuration: $rentDuration)';
}


}

/// @nodoc
abstract mixin class _$FilterDtoCopyWith<$Res> implements $FilterDtoCopyWith<$Res> {
  factory _$FilterDtoCopyWith(_FilterDto value, $Res Function(_FilterDto) _then) = __$FilterDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,@JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts,@JsonKey(name: 'rentDuration') List<OptionDto>? rentDuration
});




}
/// @nodoc
class __$FilterDtoCopyWithImpl<$Res>
    implements _$FilterDtoCopyWith<$Res> {
  __$FilterDtoCopyWithImpl(this._self, this._then);

  final _FilterDto _self;
  final $Res Function(_FilterDto) _then;

/// Create a copy of FilterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoal = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,Object? rentDuration = freezed,}) {
  return _then(_FilterDto(
rentGoal: freezed == rentGoal ? _self._rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyTypes: freezed == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCounts: freezed == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentDuration: freezed == rentDuration ? _self._rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,
  ));
}


}

// dart format on
