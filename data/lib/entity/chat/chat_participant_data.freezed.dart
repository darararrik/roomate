// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatParticipantData {

 String get id; String get name; String get avatarUrl;
/// Create a copy of ChatParticipantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatParticipantDataCopyWith<ChatParticipantData> get copyWith => _$ChatParticipantDataCopyWithImpl<ChatParticipantData>(this as ChatParticipantData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'ChatParticipantData(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $ChatParticipantDataCopyWith<$Res>  {
  factory $ChatParticipantDataCopyWith(ChatParticipantData value, $Res Function(ChatParticipantData) _then) = _$ChatParticipantDataCopyWithImpl;
@useResult
$Res call({
 String id, String name, String avatarUrl
});




}
/// @nodoc
class _$ChatParticipantDataCopyWithImpl<$Res>
    implements $ChatParticipantDataCopyWith<$Res> {
  _$ChatParticipantDataCopyWithImpl(this._self, this._then);

  final ChatParticipantData _self;
  final $Res Function(ChatParticipantData) _then;

/// Create a copy of ChatParticipantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatParticipantData].
extension ChatParticipantDataPatterns on ChatParticipantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatParticipantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatParticipantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatParticipantData value)  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatParticipantData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatParticipantData() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantData():
return $default(_that.id,_that.name,_that.avatarUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantData() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ChatParticipantData extends ChatParticipantData {
  const _ChatParticipantData({this.id = '', this.name = '', this.avatarUrl = ''}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String avatarUrl;

/// Create a copy of ChatParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatParticipantDataCopyWith<_ChatParticipantData> get copyWith => __$ChatParticipantDataCopyWithImpl<_ChatParticipantData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatParticipantData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl);

@override
String toString() {
  return 'ChatParticipantData(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ChatParticipantDataCopyWith<$Res> implements $ChatParticipantDataCopyWith<$Res> {
  factory _$ChatParticipantDataCopyWith(_ChatParticipantData value, $Res Function(_ChatParticipantData) _then) = __$ChatParticipantDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String avatarUrl
});




}
/// @nodoc
class __$ChatParticipantDataCopyWithImpl<$Res>
    implements _$ChatParticipantDataCopyWith<$Res> {
  __$ChatParticipantDataCopyWithImpl(this._self, this._then);

  final _ChatParticipantData _self;
  final $Res Function(_ChatParticipantData) _then;

/// Create a copy of ChatParticipantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = null,}) {
  return _then(_ChatParticipantData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
