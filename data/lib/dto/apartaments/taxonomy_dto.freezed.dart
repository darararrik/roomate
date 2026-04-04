// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxonomy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDto {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;
/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDtoCopyWith<CategoryDto> get copyWith => _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CategoryDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res>  {
  factory $CategoryDtoCopyWith(CategoryDto value, $Res Function(CategoryDto) _then) = _$CategoryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)  $default,) {final _that = this;
switch (_that) {
case _CategoryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDto implements CategoryDto {
  const _CategoryDto({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title});
  factory _CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDtoCopyWith<_CategoryDto> get copyWith => __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CategoryDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res> implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(_CategoryDto value, $Res Function(_CategoryDto) _then) = __$CategoryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_CategoryDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PropertyTypeDto {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;
/// Create a copy of PropertyTypeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyTypeDtoCopyWith<PropertyTypeDto> get copyWith => _$PropertyTypeDtoCopyWithImpl<PropertyTypeDto>(this as PropertyTypeDto, _$identity);

  /// Serializes this PropertyTypeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyTypeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'PropertyTypeDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $PropertyTypeDtoCopyWith<$Res>  {
  factory $PropertyTypeDtoCopyWith(PropertyTypeDto value, $Res Function(PropertyTypeDto) _then) = _$PropertyTypeDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class _$PropertyTypeDtoCopyWithImpl<$Res>
    implements $PropertyTypeDtoCopyWith<$Res> {
  _$PropertyTypeDtoCopyWithImpl(this._self, this._then);

  final PropertyTypeDto _self;
  final $Res Function(PropertyTypeDto) _then;

/// Create a copy of PropertyTypeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyTypeDto].
extension PropertyTypeDtoPatterns on PropertyTypeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyTypeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyTypeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyTypeDto value)  $default,){
final _that = this;
switch (_that) {
case _PropertyTypeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyTypeDto value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyTypeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyTypeDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)  $default,) {final _that = this;
switch (_that) {
case _PropertyTypeDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,) {final _that = this;
switch (_that) {
case _PropertyTypeDto() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyTypeDto implements PropertyTypeDto {
  const _PropertyTypeDto({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title});
  factory _PropertyTypeDto.fromJson(Map<String, dynamic> json) => _$PropertyTypeDtoFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;

/// Create a copy of PropertyTypeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyTypeDtoCopyWith<_PropertyTypeDto> get copyWith => __$PropertyTypeDtoCopyWithImpl<_PropertyTypeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyTypeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyTypeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'PropertyTypeDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$PropertyTypeDtoCopyWith<$Res> implements $PropertyTypeDtoCopyWith<$Res> {
  factory _$PropertyTypeDtoCopyWith(_PropertyTypeDto value, $Res Function(_PropertyTypeDto) _then) = __$PropertyTypeDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class __$PropertyTypeDtoCopyWithImpl<$Res>
    implements _$PropertyTypeDtoCopyWith<$Res> {
  __$PropertyTypeDtoCopyWithImpl(this._self, this._then);

  final _PropertyTypeDto _self;
  final $Res Function(_PropertyTypeDto) _then;

/// Create a copy of PropertyTypeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_PropertyTypeDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RoomsCountDto {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;
/// Create a copy of RoomsCountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomsCountDtoCopyWith<RoomsCountDto> get copyWith => _$RoomsCountDtoCopyWithImpl<RoomsCountDto>(this as RoomsCountDto, _$identity);

  /// Serializes this RoomsCountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomsCountDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'RoomsCountDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $RoomsCountDtoCopyWith<$Res>  {
  factory $RoomsCountDtoCopyWith(RoomsCountDto value, $Res Function(RoomsCountDto) _then) = _$RoomsCountDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class _$RoomsCountDtoCopyWithImpl<$Res>
    implements $RoomsCountDtoCopyWith<$Res> {
  _$RoomsCountDtoCopyWithImpl(this._self, this._then);

  final RoomsCountDto _self;
  final $Res Function(RoomsCountDto) _then;

/// Create a copy of RoomsCountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomsCountDto].
extension RoomsCountDtoPatterns on RoomsCountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomsCountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomsCountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomsCountDto value)  $default,){
final _that = this;
switch (_that) {
case _RoomsCountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomsCountDto value)?  $default,){
final _that = this;
switch (_that) {
case _RoomsCountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomsCountDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)  $default,) {final _that = this;
switch (_that) {
case _RoomsCountDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title)?  $default,) {final _that = this;
switch (_that) {
case _RoomsCountDto() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomsCountDto implements RoomsCountDto {
  const _RoomsCountDto({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title});
  factory _RoomsCountDto.fromJson(Map<String, dynamic> json) => _$RoomsCountDtoFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;

/// Create a copy of RoomsCountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomsCountDtoCopyWith<_RoomsCountDto> get copyWith => __$RoomsCountDtoCopyWithImpl<_RoomsCountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomsCountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsCountDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'RoomsCountDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$RoomsCountDtoCopyWith<$Res> implements $RoomsCountDtoCopyWith<$Res> {
  factory _$RoomsCountDtoCopyWith(_RoomsCountDto value, $Res Function(_RoomsCountDto) _then) = __$RoomsCountDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class __$RoomsCountDtoCopyWithImpl<$Res>
    implements _$RoomsCountDtoCopyWith<$Res> {
  __$RoomsCountDtoCopyWithImpl(this._self, this._then);

  final _RoomsCountDto _self;
  final $Res Function(_RoomsCountDto) _then;

/// Create a copy of RoomsCountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_RoomsCountDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApartamentTaxonomyDto {

@JsonKey(name: "categories") List<CategoryDto>? get categories;@JsonKey(name: "property_type") List<PropertyTypeDto>? get propertyTypes;@JsonKey(name: "rooms_count") List<RoomsCountDto>? get roomsCounts;
/// Create a copy of ApartamentTaxonomyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentTaxonomyDtoCopyWith<ApartamentTaxonomyDto> get copyWith => _$ApartamentTaxonomyDtoCopyWithImpl<ApartamentTaxonomyDto>(this as ApartamentTaxonomyDto, _$identity);

  /// Serializes this ApartamentTaxonomyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentTaxonomyDto&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts));

@override
String toString() {
  return 'ApartamentTaxonomyDto(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class $ApartamentTaxonomyDtoCopyWith<$Res>  {
  factory $ApartamentTaxonomyDtoCopyWith(ApartamentTaxonomyDto value, $Res Function(ApartamentTaxonomyDto) _then) = _$ApartamentTaxonomyDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "categories") List<CategoryDto>? categories,@JsonKey(name: "property_type") List<PropertyTypeDto>? propertyTypes,@JsonKey(name: "rooms_count") List<RoomsCountDto>? roomsCounts
});




}
/// @nodoc
class _$ApartamentTaxonomyDtoCopyWithImpl<$Res>
    implements $ApartamentTaxonomyDtoCopyWith<$Res> {
  _$ApartamentTaxonomyDtoCopyWithImpl(this._self, this._then);

  final ApartamentTaxonomyDto _self;
  final $Res Function(ApartamentTaxonomyDto) _then;

/// Create a copy of ApartamentTaxonomyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>?,propertyTypes: freezed == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<PropertyTypeDto>?,roomsCounts: freezed == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<RoomsCountDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentTaxonomyDto].
extension ApartamentTaxonomyDtoPatterns on ApartamentTaxonomyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentTaxonomyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentTaxonomyDto value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentTaxonomyDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "categories")  List<CategoryDto>? categories, @JsonKey(name: "property_type")  List<PropertyTypeDto>? propertyTypes, @JsonKey(name: "rooms_count")  List<RoomsCountDto>? roomsCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "categories")  List<CategoryDto>? categories, @JsonKey(name: "property_type")  List<PropertyTypeDto>? propertyTypes, @JsonKey(name: "rooms_count")  List<RoomsCountDto>? roomsCounts)  $default,) {final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "categories")  List<CategoryDto>? categories, @JsonKey(name: "property_type")  List<PropertyTypeDto>? propertyTypes, @JsonKey(name: "rooms_count")  List<RoomsCountDto>? roomsCounts)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentTaxonomyDto() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApartamentTaxonomyDto implements ApartamentTaxonomyDto {
  const _ApartamentTaxonomyDto({@JsonKey(name: "categories") final  List<CategoryDto>? categories, @JsonKey(name: "property_type") final  List<PropertyTypeDto>? propertyTypes, @JsonKey(name: "rooms_count") final  List<RoomsCountDto>? roomsCounts}): _categories = categories,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts;
  factory _ApartamentTaxonomyDto.fromJson(Map<String, dynamic> json) => _$ApartamentTaxonomyDtoFromJson(json);

 final  List<CategoryDto>? _categories;
@override@JsonKey(name: "categories") List<CategoryDto>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PropertyTypeDto>? _propertyTypes;
@override@JsonKey(name: "property_type") List<PropertyTypeDto>? get propertyTypes {
  final value = _propertyTypes;
  if (value == null) return null;
  if (_propertyTypes is EqualUnmodifiableListView) return _propertyTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<RoomsCountDto>? _roomsCounts;
@override@JsonKey(name: "rooms_count") List<RoomsCountDto>? get roomsCounts {
  final value = _roomsCounts;
  if (value == null) return null;
  if (_roomsCounts is EqualUnmodifiableListView) return _roomsCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ApartamentTaxonomyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentTaxonomyDtoCopyWith<_ApartamentTaxonomyDto> get copyWith => __$ApartamentTaxonomyDtoCopyWithImpl<_ApartamentTaxonomyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApartamentTaxonomyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentTaxonomyDto&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts));

@override
String toString() {
  return 'ApartamentTaxonomyDto(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class _$ApartamentTaxonomyDtoCopyWith<$Res> implements $ApartamentTaxonomyDtoCopyWith<$Res> {
  factory _$ApartamentTaxonomyDtoCopyWith(_ApartamentTaxonomyDto value, $Res Function(_ApartamentTaxonomyDto) _then) = __$ApartamentTaxonomyDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "categories") List<CategoryDto>? categories,@JsonKey(name: "property_type") List<PropertyTypeDto>? propertyTypes,@JsonKey(name: "rooms_count") List<RoomsCountDto>? roomsCounts
});




}
/// @nodoc
class __$ApartamentTaxonomyDtoCopyWithImpl<$Res>
    implements _$ApartamentTaxonomyDtoCopyWith<$Res> {
  __$ApartamentTaxonomyDtoCopyWithImpl(this._self, this._then);

  final _ApartamentTaxonomyDto _self;
  final $Res Function(_ApartamentTaxonomyDto) _then;

/// Create a copy of ApartamentTaxonomyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? propertyTypes = freezed,Object? roomsCounts = freezed,}) {
  return _then(_ApartamentTaxonomyDto(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>?,propertyTypes: freezed == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<PropertyTypeDto>?,roomsCounts: freezed == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<RoomsCountDto>?,
  ));
}


}

// dart format on
