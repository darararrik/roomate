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

 List<OptionModel> get categories; List<OptionModel> get propertyTypes; List<OptionModel> get roomsCounts;
/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterModelCopyWith<FilterModel> get copyWith => _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterModel&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts));

@override
String toString() {
  return 'FilterModel(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res>  {
  factory $FilterModelCopyWith(FilterModel value, $Res Function(FilterModel) _then) = _$FilterModelCopyWithImpl;
@useResult
$Res call({
 List<OptionModel> categories, List<OptionModel> propertyTypes, List<OptionModel> roomsCounts
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
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? propertyTypes = null,Object? roomsCounts = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyTypes: null == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCounts: null == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OptionModel> categories,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OptionModel> categories,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts)  $default,) {final _that = this;
switch (_that) {
case _FilterModel():
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OptionModel> categories,  List<OptionModel> propertyTypes,  List<OptionModel> roomsCounts)?  $default,) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
  return null;

}
}

}

/// @nodoc


class _FilterModel implements FilterModel {
  const _FilterModel({final  List<OptionModel> categories = const [], final  List<OptionModel> propertyTypes = const [], final  List<OptionModel> roomsCounts = const []}): _categories = categories,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts;
  

 final  List<OptionModel> _categories;
@override@JsonKey() List<OptionModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
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


/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterModelCopyWith<_FilterModel> get copyWith => __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterModel&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts));

@override
String toString() {
  return 'FilterModel(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res> implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(_FilterModel value, $Res Function(_FilterModel) _then) = __$FilterModelCopyWithImpl;
@override @useResult
$Res call({
 List<OptionModel> categories, List<OptionModel> propertyTypes, List<OptionModel> roomsCounts
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
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? propertyTypes = null,Object? roomsCounts = null,}) {
  return _then(_FilterModel(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyTypes: null == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCounts: null == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
