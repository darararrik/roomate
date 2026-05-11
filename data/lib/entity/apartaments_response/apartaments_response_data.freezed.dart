// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartaments_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApartamentsResponseData {

@JsonKey(name: 'total_count') int get totalCount;@JsonKey(name: 'items') List<ApartamentData> get items;
/// Create a copy of ApartamentsResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentsResponseDataCopyWith<ApartamentsResponseData> get copyWith => _$ApartamentsResponseDataCopyWithImpl<ApartamentsResponseData>(this as ApartamentsResponseData, _$identity);

  /// Serializes this ApartamentsResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentsResponseData&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ApartamentsResponseData(totalCount: $totalCount, items: $items)';
}


}

/// @nodoc
abstract mixin class $ApartamentsResponseDataCopyWith<$Res>  {
  factory $ApartamentsResponseDataCopyWith(ApartamentsResponseData value, $Res Function(ApartamentsResponseData) _then) = _$ApartamentsResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'items') List<ApartamentData> items
});




}
/// @nodoc
class _$ApartamentsResponseDataCopyWithImpl<$Res>
    implements $ApartamentsResponseDataCopyWith<$Res> {
  _$ApartamentsResponseDataCopyWithImpl(this._self, this._then);

  final ApartamentsResponseData _self;
  final $Res Function(ApartamentsResponseData) _then;

/// Create a copy of ApartamentsResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? items = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ApartamentData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentsResponseData].
extension ApartamentsResponseDataPatterns on ApartamentsResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentsResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentsResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentsResponseData value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentsResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentsResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentsResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<ApartamentData> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentsResponseData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<ApartamentData> items)  $default,) {final _that = this;
switch (_that) {
case _ApartamentsResponseData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'items')  List<ApartamentData> items)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentsResponseData() when $default != null:
return $default(_that.totalCount,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApartamentsResponseData implements ApartamentsResponseData {
   _ApartamentsResponseData({@JsonKey(name: 'total_count') this.totalCount = 0, @JsonKey(name: 'items') final  List<ApartamentData> items = const []}): _items = items;
  factory _ApartamentsResponseData.fromJson(Map<String, dynamic> json) => _$ApartamentsResponseDataFromJson(json);

@override@JsonKey(name: 'total_count') final  int totalCount;
 final  List<ApartamentData> _items;
@override@JsonKey(name: 'items') List<ApartamentData> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ApartamentsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentsResponseDataCopyWith<_ApartamentsResponseData> get copyWith => __$ApartamentsResponseDataCopyWithImpl<_ApartamentsResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApartamentsResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentsResponseData&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ApartamentsResponseData(totalCount: $totalCount, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ApartamentsResponseDataCopyWith<$Res> implements $ApartamentsResponseDataCopyWith<$Res> {
  factory _$ApartamentsResponseDataCopyWith(_ApartamentsResponseData value, $Res Function(_ApartamentsResponseData) _then) = __$ApartamentsResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'items') List<ApartamentData> items
});




}
/// @nodoc
class __$ApartamentsResponseDataCopyWithImpl<$Res>
    implements _$ApartamentsResponseDataCopyWith<$Res> {
  __$ApartamentsResponseDataCopyWithImpl(this._self, this._then);

  final _ApartamentsResponseData _self;
  final $Res Function(_ApartamentsResponseData) _then;

/// Create a copy of ApartamentsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? items = null,}) {
  return _then(_ApartamentsResponseData(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ApartamentData>,
  ));
}


}

// dart format on
