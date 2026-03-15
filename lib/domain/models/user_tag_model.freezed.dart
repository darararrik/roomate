// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserTagModel {

 int get id; String get title; bool get isSelected;
/// Create a copy of UserTagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTagModelCopyWith<UserTagModel> get copyWith => _$UserTagModelCopyWithImpl<UserTagModel>(this as UserTagModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'UserTagModel(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $UserTagModelCopyWith<$Res>  {
  factory $UserTagModelCopyWith(UserTagModel value, $Res Function(UserTagModel) _then) = _$UserTagModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isSelected
});




}
/// @nodoc
class _$UserTagModelCopyWithImpl<$Res>
    implements $UserTagModelCopyWith<$Res> {
  _$UserTagModelCopyWithImpl(this._self, this._then);

  final UserTagModel _self;
  final $Res Function(UserTagModel) _then;

/// Create a copy of UserTagModel
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


/// Adds pattern-matching-related methods to [UserTagModel].
extension UserTagModelPatterns on UserTagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTagModel value)  $default,){
final _that = this;
switch (_that) {
case _UserTagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTagModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserTagModel() when $default != null:
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
case _UserTagModel() when $default != null:
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
case _UserTagModel():
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
case _UserTagModel() when $default != null:
return $default(_that.id,_that.title,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _UserTagModel implements UserTagModel {
  const _UserTagModel({this.id = 0, this.title = '', this.isSelected = false});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool isSelected;

/// Create a copy of UserTagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTagModelCopyWith<_UserTagModel> get copyWith => __$UserTagModelCopyWithImpl<_UserTagModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'UserTagModel(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$UserTagModelCopyWith<$Res> implements $UserTagModelCopyWith<$Res> {
  factory _$UserTagModelCopyWith(_UserTagModel value, $Res Function(_UserTagModel) _then) = __$UserTagModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isSelected
});




}
/// @nodoc
class __$UserTagModelCopyWithImpl<$Res>
    implements _$UserTagModelCopyWith<$Res> {
  __$UserTagModelCopyWithImpl(this._self, this._then);

  final _UserTagModel _self;
  final $Res Function(_UserTagModel) _then;

/// Create a copy of UserTagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isSelected = null,}) {
  return _then(_UserTagModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UserTagsGroupModel {

 String get groupId; String get groupTitle; List<UserTagModel> get tags;
/// Create a copy of UserTagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTagsGroupModelCopyWith<UserTagsGroupModel> get copyWith => _$UserTagsGroupModelCopyWithImpl<UserTagsGroupModel>(this as UserTagsGroupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTagsGroupModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'UserTagsGroupModel(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UserTagsGroupModelCopyWith<$Res>  {
  factory $UserTagsGroupModelCopyWith(UserTagsGroupModel value, $Res Function(UserTagsGroupModel) _then) = _$UserTagsGroupModelCopyWithImpl;
@useResult
$Res call({
 String groupId, String groupTitle, List<UserTagModel> tags
});




}
/// @nodoc
class _$UserTagsGroupModelCopyWithImpl<$Res>
    implements $UserTagsGroupModelCopyWith<$Res> {
  _$UserTagsGroupModelCopyWithImpl(this._self, this._then);

  final UserTagsGroupModel _self;
  final $Res Function(UserTagsGroupModel) _then;

/// Create a copy of UserTagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = null,Object? groupTitle = null,Object? tags = null,}) {
  return _then(_self.copyWith(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,groupTitle: null == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTagsGroupModel].
extension UserTagsGroupModelPatterns on UserTagsGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTagsGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTagsGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTagsGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _UserTagsGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTagsGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserTagsGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String groupId,  String groupTitle,  List<UserTagModel> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTagsGroupModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String groupId,  String groupTitle,  List<UserTagModel> tags)  $default,) {final _that = this;
switch (_that) {
case _UserTagsGroupModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String groupId,  String groupTitle,  List<UserTagModel> tags)?  $default,) {final _that = this;
switch (_that) {
case _UserTagsGroupModel() when $default != null:
return $default(_that.groupId,_that.groupTitle,_that.tags);case _:
  return null;

}
}

}

/// @nodoc


class _UserTagsGroupModel implements UserTagsGroupModel {
  const _UserTagsGroupModel({this.groupId = '', this.groupTitle = '', final  List<UserTagModel> tags = const []}): _tags = tags;
  

@override@JsonKey() final  String groupId;
@override@JsonKey() final  String groupTitle;
 final  List<UserTagModel> _tags;
@override@JsonKey() List<UserTagModel> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of UserTagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTagsGroupModelCopyWith<_UserTagsGroupModel> get copyWith => __$UserTagsGroupModelCopyWithImpl<_UserTagsGroupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTagsGroupModel&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'UserTagsGroupModel(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UserTagsGroupModelCopyWith<$Res> implements $UserTagsGroupModelCopyWith<$Res> {
  factory _$UserTagsGroupModelCopyWith(_UserTagsGroupModel value, $Res Function(_UserTagsGroupModel) _then) = __$UserTagsGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String groupId, String groupTitle, List<UserTagModel> tags
});




}
/// @nodoc
class __$UserTagsGroupModelCopyWithImpl<$Res>
    implements _$UserTagsGroupModelCopyWith<$Res> {
  __$UserTagsGroupModelCopyWithImpl(this._self, this._then);

  final _UserTagsGroupModel _self;
  final $Res Function(_UserTagsGroupModel) _then;

/// Create a copy of UserTagsGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = null,Object? groupTitle = null,Object? tags = null,}) {
  return _then(_UserTagsGroupModel(
groupId: null == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String,groupTitle: null == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagModel>,
  ));
}


}

// dart format on
