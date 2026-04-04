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
mixin _$OptionDto {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String? get title;
/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionDtoCopyWith<OptionDto> get copyWith => _$OptionDtoCopyWithImpl<OptionDto>(this as OptionDto, _$identity);

  /// Serializes this OptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'OptionDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $OptionDtoCopyWith<$Res>  {
  factory $OptionDtoCopyWith(OptionDto value, $Res Function(OptionDto) _then) = _$OptionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class _$OptionDtoCopyWithImpl<$Res>
    implements $OptionDtoCopyWith<$Res> {
  _$OptionDtoCopyWithImpl(this._self, this._then);

  final OptionDto _self;
  final $Res Function(OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionDto].
extension OptionDtoPatterns on OptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionDto value)  $default,){
final _that = this;
switch (_that) {
case _OptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)  $default,) {final _that = this;
switch (_that) {
case _OptionDto():
return $default(_that.id,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'title')  String? title)?  $default,) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionDto implements OptionDto {
  const _OptionDto({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title});
  factory _OptionDto.fromJson(Map<String, dynamic> json) => _$OptionDtoFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String? title;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionDtoCopyWith<_OptionDto> get copyWith => __$OptionDtoCopyWithImpl<_OptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'OptionDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$OptionDtoCopyWith<$Res> implements $OptionDtoCopyWith<$Res> {
  factory _$OptionDtoCopyWith(_OptionDto value, $Res Function(_OptionDto) _then) = __$OptionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String? title
});




}
/// @nodoc
class __$OptionDtoCopyWithImpl<$Res>
    implements _$OptionDtoCopyWith<$Res> {
  __$OptionDtoCopyWithImpl(this._self, this._then);

  final _OptionDto _self;
  final $Res Function(_OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_OptionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FilterDto {

@JsonKey(name: 'categories') List<OptionDto>? get categories;@JsonKey(name: 'property_type') List<OptionDto>? get propertyTypes;@JsonKey(name: 'rooms_count') List<OptionDto>? get roomsCounts;
/// Create a copy of FilterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterDtoCopyWith<FilterDto> get copyWith => _$FilterDtoCopyWithImpl<FilterDto>(this as FilterDto, _$identity);

  /// Serializes this FilterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterDto&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts));

@override
String toString() {
  return 'FilterDto(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class $FilterDtoCopyWith<$Res>  {
  factory $FilterDtoCopyWith(FilterDto value, $Res Function(FilterDto) _then) = _$FilterDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'categories') List<OptionDto>? categories,@JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts
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
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyTypes: freezed == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCounts: freezed == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'categories')  List<OptionDto>? categories, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'categories')  List<OptionDto>? categories, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts)  $default,) {final _that = this;
switch (_that) {
case _FilterDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'categories')  List<OptionDto>? categories, @JsonKey(name: 'property_type')  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCounts)?  $default,) {final _that = this;
switch (_that) {
case _FilterDto() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterDto implements FilterDto {
  const _FilterDto({@JsonKey(name: 'categories') final  List<OptionDto>? categories, @JsonKey(name: 'property_type') final  List<OptionDto>? propertyTypes, @JsonKey(name: 'rooms_count') final  List<OptionDto>? roomsCounts}): _categories = categories,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts;
  factory _FilterDto.fromJson(Map<String, dynamic> json) => _$FilterDtoFromJson(json);

 final  List<OptionDto>? _categories;
@override@JsonKey(name: 'categories') List<OptionDto>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterDto&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts));

@override
String toString() {
  return 'FilterDto(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class _$FilterDtoCopyWith<$Res> implements $FilterDtoCopyWith<$Res> {
  factory _$FilterDtoCopyWith(_FilterDto value, $Res Function(_FilterDto) _then) = __$FilterDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'categories') List<OptionDto>? categories,@JsonKey(name: 'property_type') List<OptionDto>? propertyTypes,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCounts
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
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,}) {
  return _then(_FilterDto(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyTypes: freezed == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCounts: freezed == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,
  ));
}


}

// dart format on
