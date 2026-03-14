// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TagsGroupModel {

 String get title; String? get description; List<String> get tags; bool get isRadio;
/// Create a copy of TagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagsGroupModelCopyWith<TagsGroupModel> get copyWith => _$TagsGroupModelCopyWithImpl<TagsGroupModel>(this as TagsGroupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagsGroupModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isRadio, isRadio) || other.isRadio == isRadio));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(tags),isRadio);

@override
String toString() {
  return 'TagsGroupModel(title: $title, description: $description, tags: $tags, isRadio: $isRadio)';
}


}

/// @nodoc
abstract mixin class $TagsGroupModelCopyWith<$Res>  {
  factory $TagsGroupModelCopyWith(TagsGroupModel value, $Res Function(TagsGroupModel) _then) = _$TagsGroupModelCopyWithImpl;
@useResult
$Res call({
 String title, String? description, List<String> tags, bool isRadio
});




}
/// @nodoc
class _$TagsGroupModelCopyWithImpl<$Res>
    implements $TagsGroupModelCopyWith<$Res> {
  _$TagsGroupModelCopyWithImpl(this._self, this._then);

  final TagsGroupModel _self;
  final $Res Function(TagsGroupModel) _then;

/// Create a copy of TagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? tags = null,Object? isRadio = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isRadio: null == isRadio ? _self.isRadio : isRadio // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TagsGroupModel].
extension TagsGroupModelPatterns on TagsGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TagsGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagsGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TagsGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _TagsGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TagsGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _TagsGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  List<String> tags,  bool isRadio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagsGroupModel() when $default != null:
return $default(_that.title,_that.description,_that.tags,_that.isRadio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  List<String> tags,  bool isRadio)  $default,) {final _that = this;
switch (_that) {
case _TagsGroupModel():
return $default(_that.title,_that.description,_that.tags,_that.isRadio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  List<String> tags,  bool isRadio)?  $default,) {final _that = this;
switch (_that) {
case _TagsGroupModel() when $default != null:
return $default(_that.title,_that.description,_that.tags,_that.isRadio);case _:
  return null;

}
}

}

/// @nodoc


class _TagsGroupModel implements TagsGroupModel {
  const _TagsGroupModel({required this.title, this.description, required final  List<String> tags, required this.isRadio}): _tags = tags;
  

@override final  String title;
@override final  String? description;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isRadio;

/// Create a copy of TagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagsGroupModelCopyWith<_TagsGroupModel> get copyWith => __$TagsGroupModelCopyWithImpl<_TagsGroupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagsGroupModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isRadio, isRadio) || other.isRadio == isRadio));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(_tags),isRadio);

@override
String toString() {
  return 'TagsGroupModel(title: $title, description: $description, tags: $tags, isRadio: $isRadio)';
}


}

/// @nodoc
abstract mixin class _$TagsGroupModelCopyWith<$Res> implements $TagsGroupModelCopyWith<$Res> {
  factory _$TagsGroupModelCopyWith(_TagsGroupModel value, $Res Function(_TagsGroupModel) _then) = __$TagsGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, List<String> tags, bool isRadio
});




}
/// @nodoc
class __$TagsGroupModelCopyWithImpl<$Res>
    implements _$TagsGroupModelCopyWith<$Res> {
  __$TagsGroupModelCopyWithImpl(this._self, this._then);

  final _TagsGroupModel _self;
  final $Res Function(_TagsGroupModel) _then;

/// Create a copy of TagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? tags = null,Object? isRadio = null,}) {
  return _then(_TagsGroupModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isRadio: null == isRadio ? _self.isRadio : isRadio // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
