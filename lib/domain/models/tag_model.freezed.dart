// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TagModel {

 int get id; String get title; bool get isSelected;
/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagModelCopyWith<TagModel> get copyWith => _$TagModelCopyWithImpl<TagModel>(this as TagModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'TagModel(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $TagModelCopyWith<$Res>  {
  factory $TagModelCopyWith(TagModel value, $Res Function(TagModel) _then) = _$TagModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isSelected
});




}
/// @nodoc
class _$TagModelCopyWithImpl<$Res>
    implements $TagModelCopyWith<$Res> {
  _$TagModelCopyWithImpl(this._self, this._then);

  final TagModel _self;
  final $Res Function(TagModel) _then;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TagModel].
extension TagModelPatterns on TagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TagModel value)  $default,){
final _that = this;
switch (_that) {
case _TagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TagModel value)?  $default,){
final _that = this;
switch (_that) {
case _TagModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagModel() when $default != null:
return $default(_that.id,_that.title,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _TagModel():
return $default(_that.id,_that.title,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _TagModel() when $default != null:
return $default(_that.id,_that.title,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _TagModel implements TagModel {
  const _TagModel({this.id = 0, this.title = '', this.isSelected = false});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool isSelected;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagModelCopyWith<_TagModel> get copyWith => __$TagModelCopyWithImpl<_TagModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'TagModel(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$TagModelCopyWith<$Res> implements $TagModelCopyWith<$Res> {
  factory _$TagModelCopyWith(_TagModel value, $Res Function(_TagModel) _then) = __$TagModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isSelected
});




}
/// @nodoc
class __$TagModelCopyWithImpl<$Res>
    implements _$TagModelCopyWith<$Res> {
  __$TagModelCopyWithImpl(this._self, this._then);

  final _TagModel _self;
  final $Res Function(_TagModel) _then;

/// Create a copy of TagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isSelected = null,}) {
  return _then(_TagModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TagGroupModel {

 String get groupId; String get groupTitle; List<TagModel> get tags;
/// Create a copy of TagGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<TagGroupModel> get copyWith => _$TagGroupModelCopyWithImpl<TagGroupModel>(this as TagGroupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagGroupModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'TagGroupModel(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $TagGroupModelCopyWith<$Res>  {
  factory $TagGroupModelCopyWith(TagGroupModel value, $Res Function(TagGroupModel) _then) = _$TagGroupModelCopyWithImpl;
@useResult
$Res call({
 String groupId, String groupTitle, List<TagModel> tags
});




}
/// @nodoc
class _$TagGroupModelCopyWithImpl<$Res>
    implements $TagGroupModelCopyWith<$Res> {
  _$TagGroupModelCopyWithImpl(this._self, this._then);

  final TagGroupModel _self;
  final $Res Function(TagGroupModel) _then;

/// Create a copy of TagGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? groupTitle = null,Object? tags = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,groupTitle: null == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<TagModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TagGroupModel].
extension TagGroupModelPatterns on TagGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TagGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TagGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _TagGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TagGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _TagGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String groupId,  String groupTitle,  List<TagModel> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagGroupModel() when $default != null:
return $default(_that.groupId,_that.groupTitle,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String groupId,  String groupTitle,  List<TagModel> tags)  $default,) {final _that = this;
switch (_that) {
case _TagGroupModel():
return $default(_that.groupId,_that.groupTitle,_that.tags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String groupId,  String groupTitle,  List<TagModel> tags)?  $default,) {final _that = this;
switch (_that) {
case _TagGroupModel() when $default != null:
return $default(_that.groupId,_that.groupTitle,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _TagGroupModel implements TagGroupModel {
  const _TagGroupModel({this.groupId = '', this.groupTitle = '', final  List<TagModel> tags = const []}): _tags = tags;
  

@override@JsonKey() final  String groupId;
@override@JsonKey() final  String groupTitle;
 final  List<TagModel> _tags;
@override@JsonKey() List<TagModel> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of TagGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagGroupModelCopyWith<_TagGroupModel> get copyWith => __$TagGroupModelCopyWithImpl<_TagGroupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagGroupModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'TagGroupModel(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$TagGroupModelCopyWith<$Res> implements $TagGroupModelCopyWith<$Res> {
  factory _$TagGroupModelCopyWith(_TagGroupModel value, $Res Function(_TagGroupModel) _then) = __$TagGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String groupId, String groupTitle, List<TagModel> tags
});




}
/// @nodoc
class __$TagGroupModelCopyWithImpl<$Res>
    implements _$TagGroupModelCopyWith<$Res> {
  __$TagGroupModelCopyWithImpl(this._self, this._then);

  final _TagGroupModel _self;
  final $Res Function(_TagGroupModel) _then;

/// Create a copy of TagGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? groupTitle = null,Object? tags = null,}) {
  return _then(_TagGroupModel(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,groupTitle: null == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<TagModel>,
  ));
}


}

// dart format on
