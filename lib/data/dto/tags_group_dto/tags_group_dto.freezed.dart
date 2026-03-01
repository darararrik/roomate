// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TagsGroupDto {

 String get title; String? get description; List<String> get tags;
/// Create a copy of TagsGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagsGroupDtoCopyWith<TagsGroupDto> get copyWith => _$TagsGroupDtoCopyWithImpl<TagsGroupDto>(this as TagsGroupDto, _$identity);

  /// Serializes this TagsGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagsGroupDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'TagsGroupDto(title: $title, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $TagsGroupDtoCopyWith<$Res>  {
  factory $TagsGroupDtoCopyWith(TagsGroupDto value, $Res Function(TagsGroupDto) _then) = _$TagsGroupDtoCopyWithImpl;
@useResult
$Res call({
 String title, String? description, List<String> tags
});




}
/// @nodoc
class _$TagsGroupDtoCopyWithImpl<$Res>
    implements $TagsGroupDtoCopyWith<$Res> {
  _$TagsGroupDtoCopyWithImpl(this._self, this._then);

  final TagsGroupDto _self;
  final $Res Function(TagsGroupDto) _then;

/// Create a copy of TagsGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TagsGroupDto].
extension TagsGroupDtoPatterns on TagsGroupDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TagsGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagsGroupDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TagsGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _TagsGroupDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TagsGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _TagsGroupDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagsGroupDto() when $default != null:
return $default(_that.title,_that.description,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _TagsGroupDto():
return $default(_that.title,_that.description,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _TagsGroupDto() when $default != null:
return $default(_that.title,_that.description,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TagsGroupDto implements TagsGroupDto {
  const _TagsGroupDto({required this.title, this.description, required final  List<String> tags}): _tags = tags;
  factory _TagsGroupDto.fromJson(Map<String, dynamic> json) => _$TagsGroupDtoFromJson(json);

@override final  String title;
@override final  String? description;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of TagsGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagsGroupDtoCopyWith<_TagsGroupDto> get copyWith => __$TagsGroupDtoCopyWithImpl<_TagsGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagsGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagsGroupDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'TagsGroupDto(title: $title, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$TagsGroupDtoCopyWith<$Res> implements $TagsGroupDtoCopyWith<$Res> {
  factory _$TagsGroupDtoCopyWith(_TagsGroupDto value, $Res Function(_TagsGroupDto) _then) = __$TagsGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, List<String> tags
});




}
/// @nodoc
class __$TagsGroupDtoCopyWithImpl<$Res>
    implements _$TagsGroupDtoCopyWith<$Res> {
  __$TagsGroupDtoCopyWithImpl(this._self, this._then);

  final _TagsGroupDto _self;
  final $Res Function(_TagsGroupDto) _then;

/// Create a copy of TagsGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? tags = null,}) {
  return _then(_TagsGroupDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
