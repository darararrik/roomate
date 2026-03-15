// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tag_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserTagData {

@JsonKey(name: "id") int? get id;@JsonKey(name: "title") String? get title;@JsonKey(name: "is_selected") bool? get isSelected;
/// Create a copy of UserTagData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTagDataCopyWith<UserTagData> get copyWith => _$UserTagDataCopyWithImpl<UserTagData>(this as UserTagData, _$identity);

  /// Serializes this UserTagData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTagData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'UserTagData(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $UserTagDataCopyWith<$Res>  {
  factory $UserTagDataCopyWith(UserTagData value, $Res Function(UserTagData) _then) = _$UserTagDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "is_selected") bool? isSelected
});




}
/// @nodoc
class _$UserTagDataCopyWithImpl<$Res>
    implements $UserTagDataCopyWith<$Res> {
  _$UserTagDataCopyWithImpl(this._self, this._then);

  final UserTagData _self;
  final $Res Function(UserTagData) _then;

/// Create a copy of UserTagData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? isSelected = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTagData].
extension UserTagDataPatterns on UserTagData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTagData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTagData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTagData value)  $default,){
final _that = this;
switch (_that) {
case _UserTagData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTagData value)?  $default,){
final _that = this;
switch (_that) {
case _UserTagData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "is_selected")  bool? isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTagData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "is_selected")  bool? isSelected)  $default,) {final _that = this;
switch (_that) {
case _UserTagData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "title")  String? title, @JsonKey(name: "is_selected")  bool? isSelected)?  $default,) {final _that = this;
switch (_that) {
case _UserTagData() when $default != null:
return $default(_that.id,_that.title,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserTagData implements UserTagData {
  const _UserTagData({@JsonKey(name: "id") this.id, @JsonKey(name: "title") this.title, @JsonKey(name: "is_selected") this.isSelected});
  factory _UserTagData.fromJson(Map<String, dynamic> json) => _$UserTagDataFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "is_selected") final  bool? isSelected;

/// Create a copy of UserTagData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTagDataCopyWith<_UserTagData> get copyWith => __$UserTagDataCopyWithImpl<_UserTagData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserTagDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTagData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isSelected);

@override
String toString() {
  return 'UserTagData(id: $id, title: $title, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$UserTagDataCopyWith<$Res> implements $UserTagDataCopyWith<$Res> {
  factory _$UserTagDataCopyWith(_UserTagData value, $Res Function(_UserTagData) _then) = __$UserTagDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "title") String? title,@JsonKey(name: "is_selected") bool? isSelected
});




}
/// @nodoc
class __$UserTagDataCopyWithImpl<$Res>
    implements _$UserTagDataCopyWith<$Res> {
  __$UserTagDataCopyWithImpl(this._self, this._then);

  final _UserTagData _self;
  final $Res Function(_UserTagData) _then;

/// Create a copy of UserTagData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? isSelected = freezed,}) {
  return _then(_UserTagData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$UserTagsGroupData {

@JsonKey(name: "group_id") String? get groupId;@JsonKey(name: "group_title") String? get groupTitle;@JsonKey(name: "tags") List<UserTagData>? get tags;
/// Create a copy of UserTagsGroupData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserTagsGroupDataCopyWith<UserTagsGroupData> get copyWith => _$UserTagsGroupDataCopyWithImpl<UserTagsGroupData>(this as UserTagsGroupData, _$identity);

  /// Serializes this UserTagsGroupData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserTagsGroupData&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'UserTagsGroupData(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UserTagsGroupDataCopyWith<$Res>  {
  factory $UserTagsGroupDataCopyWith(UserTagsGroupData value, $Res Function(UserTagsGroupData) _then) = _$UserTagsGroupDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "group_id") String? groupId,@JsonKey(name: "group_title") String? groupTitle,@JsonKey(name: "tags") List<UserTagData>? tags
});




}
/// @nodoc
class _$UserTagsGroupDataCopyWithImpl<$Res>
    implements $UserTagsGroupDataCopyWith<$Res> {
  _$UserTagsGroupDataCopyWithImpl(this._self, this._then);

  final UserTagsGroupData _self;
  final $Res Function(UserTagsGroupData) _then;

/// Create a copy of UserTagsGroupData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupId = freezed,Object? groupTitle = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,groupTitle: freezed == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserTagsGroupData].
extension UserTagsGroupDataPatterns on UserTagsGroupData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserTagsGroupData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserTagsGroupData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserTagsGroupData value)  $default,){
final _that = this;
switch (_that) {
case _UserTagsGroupData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserTagsGroupData value)?  $default,){
final _that = this;
switch (_that) {
case _UserTagsGroupData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "group_id")  String? groupId, @JsonKey(name: "group_title")  String? groupTitle, @JsonKey(name: "tags")  List<UserTagData>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserTagsGroupData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "group_id")  String? groupId, @JsonKey(name: "group_title")  String? groupTitle, @JsonKey(name: "tags")  List<UserTagData>? tags)  $default,) {final _that = this;
switch (_that) {
case _UserTagsGroupData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "group_id")  String? groupId, @JsonKey(name: "group_title")  String? groupTitle, @JsonKey(name: "tags")  List<UserTagData>? tags)?  $default,) {final _that = this;
switch (_that) {
case _UserTagsGroupData() when $default != null:
return $default(_that.groupId,_that.groupTitle,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserTagsGroupData implements UserTagsGroupData {
  const _UserTagsGroupData({@JsonKey(name: "group_id") this.groupId, @JsonKey(name: "group_title") this.groupTitle, @JsonKey(name: "tags") final  List<UserTagData>? tags}): _tags = tags;
  factory _UserTagsGroupData.fromJson(Map<String, dynamic> json) => _$UserTagsGroupDataFromJson(json);

@override@JsonKey(name: "group_id") final  String? groupId;
@override@JsonKey(name: "group_title") final  String? groupTitle;
 final  List<UserTagData>? _tags;
@override@JsonKey(name: "tags") List<UserTagData>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserTagsGroupData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserTagsGroupDataCopyWith<_UserTagsGroupData> get copyWith => __$UserTagsGroupDataCopyWithImpl<_UserTagsGroupData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserTagsGroupDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserTagsGroupData&&(identical(other.groupId, groupId) || other.groupId == groupId)&&(identical(other.groupTitle, groupTitle) || other.groupTitle == groupTitle)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupId,groupTitle,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'UserTagsGroupData(groupId: $groupId, groupTitle: $groupTitle, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UserTagsGroupDataCopyWith<$Res> implements $UserTagsGroupDataCopyWith<$Res> {
  factory _$UserTagsGroupDataCopyWith(_UserTagsGroupData value, $Res Function(_UserTagsGroupData) _then) = __$UserTagsGroupDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "group_id") String? groupId,@JsonKey(name: "group_title") String? groupTitle,@JsonKey(name: "tags") List<UserTagData>? tags
});




}
/// @nodoc
class __$UserTagsGroupDataCopyWithImpl<$Res>
    implements _$UserTagsGroupDataCopyWith<$Res> {
  __$UserTagsGroupDataCopyWithImpl(this._self, this._then);

  final _UserTagsGroupData _self;
  final $Res Function(_UserTagsGroupData) _then;

/// Create a copy of UserTagsGroupData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupId = freezed,Object? groupTitle = freezed,Object? tags = freezed,}) {
  return _then(_UserTagsGroupData(
groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as String?,groupTitle: freezed == groupTitle ? _self.groupTitle : groupTitle // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<UserTagData>?,
  ));
}


}

// dart format on
