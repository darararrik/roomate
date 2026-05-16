// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupsResponseData {

@JsonKey(name: 'total_count') int get totalCount;@JsonKey(name: 'items') List<GroupListItemData> get items;
/// Create a copy of GroupsResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupsResponseDataCopyWith<GroupsResponseData> get copyWith => _$GroupsResponseDataCopyWithImpl<GroupsResponseData>(this as GroupsResponseData, _$identity);

  /// Serializes this GroupsResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupsResponseData&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GroupsResponseData(totalCount: $totalCount, items: $items)';
}


}

/// @nodoc
abstract mixin class $GroupsResponseDataCopyWith<$Res>  {
  factory $GroupsResponseDataCopyWith(GroupsResponseData value, $Res Function(GroupsResponseData) _then) = _$GroupsResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'items') List<GroupListItemData> items
});




}
/// @nodoc
class _$GroupsResponseDataCopyWithImpl<$Res>
    implements $GroupsResponseDataCopyWith<$Res> {
  _$GroupsResponseDataCopyWithImpl(this._self, this._then);

  final GroupsResponseData _self;
  final $Res Function(GroupsResponseData) _then;

/// Create a copy of GroupsResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? items = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GroupListItemData>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupsResponseData].
extension GroupsResponseDataPatterns on GroupsResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupsResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupsResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupsResponseData value)  $default,){
final _that = this;
switch (_that) {
case _GroupsResponseData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupsResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupsResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<GroupListItemData> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupsResponseData() when $default != null:
return $default(_that.totalCount,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<GroupListItemData> items)  $default,) {final _that = this;
switch (_that) {
case _GroupsResponseData():
return $default(_that.totalCount,_that.items);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<GroupListItemData> items)?  $default,) {final _that = this;
switch (_that) {
case _GroupsResponseData() when $default != null:
return $default(_that.totalCount,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupsResponseData implements GroupsResponseData {
   _GroupsResponseData({@JsonKey(name: 'total_count') this.totalCount = 0, @JsonKey(name: 'items') final  List<GroupListItemData> items = const []}): _items = items;
  factory _GroupsResponseData.fromJson(Map<String, dynamic> json) => _$GroupsResponseDataFromJson(json);

@override@JsonKey(name: 'total_count') final  int totalCount;
 final  List<GroupListItemData> _items;
@override@JsonKey(name: 'items') List<GroupListItemData> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GroupsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupsResponseDataCopyWith<_GroupsResponseData> get copyWith => __$GroupsResponseDataCopyWithImpl<_GroupsResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupsResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupsResponseData&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GroupsResponseData(totalCount: $totalCount, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GroupsResponseDataCopyWith<$Res> implements $GroupsResponseDataCopyWith<$Res> {
  factory _$GroupsResponseDataCopyWith(_GroupsResponseData value, $Res Function(_GroupsResponseData) _then) = __$GroupsResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'items') List<GroupListItemData> items
});




}
/// @nodoc
class __$GroupsResponseDataCopyWithImpl<$Res>
    implements _$GroupsResponseDataCopyWith<$Res> {
  __$GroupsResponseDataCopyWithImpl(this._self, this._then);

  final _GroupsResponseData _self;
  final $Res Function(_GroupsResponseData) _then;

/// Create a copy of GroupsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? items = null,}) {
  return _then(_GroupsResponseData(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GroupListItemData>,
  ));
}


}

// dart format on
