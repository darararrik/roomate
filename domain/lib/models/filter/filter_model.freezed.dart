// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterModel {

 List<OptionModel> get rentGoal; List<OptionModel> get propertyTypes; List<OptionModel> get roomsCounts; List<OptionModel> get districts; List<OptionModel> get rentDuration;
/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterModelCopyWith<FilterModel> get copyWith => _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterModel&&const DeepCollectionEquality().equals(other.rentGoal, rentGoal)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts)&&const DeepCollectionEquality().equals(other.districts, districts)&&const DeepCollectionEquality().equals(other.rentDuration, rentDuration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(rentGoal),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts),const DeepCollectionEquality().hash(districts),const DeepCollectionEquality().hash(rentDuration));

@override
String toString() {
  return 'FilterModel(rentGoal: $rentGoal, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts, districts: $districts, rentDuration: $rentDuration)';
}


}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res>  {
  factory $FilterModelCopyWith(FilterModel value, $Res Function(FilterModel) _then) = _$FilterModelCopyWithImpl;
@useResult
$Res call({
 List<OptionModel> rentGoal, List<OptionModel> propertyTypes, List<OptionModel> roomsCounts, List<OptionModel> districts, List<OptionModel> rentDuration
});




}
/// @nodoc
class _$FilterModelCopyWithImpl<$Res>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._self, this._then);

  final FilterModel _self;
  final $Res Function(FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoal = null,Object? propertyTypes = null,Object? roomsCounts = null,Object? districts = null,Object? rentDuration = null,}) {
  return _then(_self.copyWith(
rentGoal: null == rentGoal ? _self.rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyTypes: null == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCounts: null == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,districts: null == districts ? _self.districts : districts // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentDuration: null == rentDuration ? _self.rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterModel].
extension FilterModelPatterns on FilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OptionModel> rentGoal,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts,  List<OptionModel> districts,  List<OptionModel> rentDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.districts,_that.rentDuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OptionModel> rentGoal,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts,  List<OptionModel> districts,  List<OptionModel> rentDuration)  $default,) {final _that = this;
switch (_that) {
case _FilterModel():
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.districts,_that.rentDuration);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OptionModel> rentGoal,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts,  List<OptionModel> districts,  List<OptionModel> rentDuration)?  $default,) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.rentGoal,_that.propertyTypes,_that.roomsCounts,_that.districts,_that.rentDuration);case _:
  return null;

}
}

}

/// @nodoc


class _FilterModel implements FilterModel {
  const _FilterModel({final  List<OptionModel> rentGoal = const [], final  List<OptionModel> propertyTypes = const [], final  List<OptionModel> roomsCounts = const [], final  List<OptionModel> districts = const [], final  List<OptionModel> rentDuration = const []}): _rentGoal = rentGoal,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts,_districts = districts,_rentDuration = rentDuration;
  

 final  List<OptionModel> _rentGoal;
@override@JsonKey() List<OptionModel> get rentGoal {
  if (_rentGoal is EqualUnmodifiableListView) return _rentGoal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentGoal);
}

 final  List<OptionModel> _propertyTypes;
@override@JsonKey() List<OptionModel> get propertyTypes {
  if (_propertyTypes is EqualUnmodifiableListView) return _propertyTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyTypes);
}

 final  List<OptionModel> _roomsCounts;
@override@JsonKey() List<OptionModel> get roomsCounts {
  if (_roomsCounts is EqualUnmodifiableListView) return _roomsCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roomsCounts);
}

 final  List<OptionModel> _districts;
@override@JsonKey() List<OptionModel> get districts {
  if (_districts is EqualUnmodifiableListView) return _districts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_districts);
}

 final  List<OptionModel> _rentDuration;
@override@JsonKey() List<OptionModel> get rentDuration {
  if (_rentDuration is EqualUnmodifiableListView) return _rentDuration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentDuration);
}


/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterModelCopyWith<_FilterModel> get copyWith => __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterModel&&const DeepCollectionEquality().equals(other._rentGoal, _rentGoal)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts)&&const DeepCollectionEquality().equals(other._districts, _districts)&&const DeepCollectionEquality().equals(other._rentDuration, _rentDuration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rentGoal),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts),const DeepCollectionEquality().hash(_districts),const DeepCollectionEquality().hash(_rentDuration));

@override
String toString() {
  return 'FilterModel(rentGoal: $rentGoal, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts, districts: $districts, rentDuration: $rentDuration)';
}


}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res> implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(_FilterModel value, $Res Function(_FilterModel) _then) = __$FilterModelCopyWithImpl;
@override @useResult
$Res call({
 List<OptionModel> rentGoal, List<OptionModel> propertyTypes, List<OptionModel> roomsCounts, List<OptionModel> districts, List<OptionModel> rentDuration
});




}
/// @nodoc
class __$FilterModelCopyWithImpl<$Res>
    implements _$FilterModelCopyWith<$Res> {
  __$FilterModelCopyWithImpl(this._self, this._then);

  final _FilterModel _self;
  final $Res Function(_FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoal = null,Object? propertyTypes = null,Object? roomsCounts = null,Object? districts = null,Object? rentDuration = null,}) {
  return _then(_FilterModel(
rentGoal: null == rentGoal ? _self._rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyTypes: null == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCounts: null == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,districts: null == districts ? _self._districts : districts // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentDuration: null == rentDuration ? _self._rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
