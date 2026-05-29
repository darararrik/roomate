// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessageData {

 String get id; String get chatId; String get text; String get senderId; String get senderName; String get senderAvatarUrl; DateTime? get createdAt;
/// Create a copy of ChatMessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageDataCopyWith<ChatMessageData> get copyWith => _$ChatMessageDataCopyWithImpl<ChatMessageData>(this as ChatMessageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageData&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.text, text) || other.text == text)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAvatarUrl, senderAvatarUrl) || other.senderAvatarUrl == senderAvatarUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,text,senderId,senderName,senderAvatarUrl,createdAt);

@override
String toString() {
  return 'ChatMessageData(id: $id, chatId: $chatId, text: $text, senderId: $senderId, senderName: $senderName, senderAvatarUrl: $senderAvatarUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ChatMessageDataCopyWith<$Res>  {
  factory $ChatMessageDataCopyWith(ChatMessageData value, $Res Function(ChatMessageData) _then) = _$ChatMessageDataCopyWithImpl;
@useResult
$Res call({
 String id, String chatId, String text, String senderId, String senderName, String senderAvatarUrl, DateTime? createdAt
});




}
/// @nodoc
class _$ChatMessageDataCopyWithImpl<$Res>
    implements $ChatMessageDataCopyWith<$Res> {
  _$ChatMessageDataCopyWithImpl(this._self, this._then);

  final ChatMessageData _self;
  final $Res Function(ChatMessageData) _then;

/// Create a copy of ChatMessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? text = null,Object? senderId = null,Object? senderName = null,Object? senderAvatarUrl = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAvatarUrl: null == senderAvatarUrl ? _self.senderAvatarUrl : senderAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageData].
extension ChatMessageDataPatterns on ChatMessageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageData value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String chatId,  String text,  String senderId,  String senderName,  String senderAvatarUrl,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageData() when $default != null:
return $default(_that.id,_that.chatId,_that.text,_that.senderId,_that.senderName,_that.senderAvatarUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String chatId,  String text,  String senderId,  String senderName,  String senderAvatarUrl,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageData():
return $default(_that.id,_that.chatId,_that.text,_that.senderId,_that.senderName,_that.senderAvatarUrl,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String chatId,  String text,  String senderId,  String senderName,  String senderAvatarUrl,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageData() when $default != null:
return $default(_that.id,_that.chatId,_that.text,_that.senderId,_that.senderName,_that.senderAvatarUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessageData extends ChatMessageData {
  const _ChatMessageData({this.id = '', this.chatId = '', this.text = '', this.senderId = '', this.senderName = '', this.senderAvatarUrl = '', this.createdAt}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String chatId;
@override@JsonKey() final  String text;
@override@JsonKey() final  String senderId;
@override@JsonKey() final  String senderName;
@override@JsonKey() final  String senderAvatarUrl;
@override final  DateTime? createdAt;

/// Create a copy of ChatMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageDataCopyWith<_ChatMessageData> get copyWith => __$ChatMessageDataCopyWithImpl<_ChatMessageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageData&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.text, text) || other.text == text)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.senderAvatarUrl, senderAvatarUrl) || other.senderAvatarUrl == senderAvatarUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,text,senderId,senderName,senderAvatarUrl,createdAt);

@override
String toString() {
  return 'ChatMessageData(id: $id, chatId: $chatId, text: $text, senderId: $senderId, senderName: $senderName, senderAvatarUrl: $senderAvatarUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageDataCopyWith<$Res> implements $ChatMessageDataCopyWith<$Res> {
  factory _$ChatMessageDataCopyWith(_ChatMessageData value, $Res Function(_ChatMessageData) _then) = __$ChatMessageDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String chatId, String text, String senderId, String senderName, String senderAvatarUrl, DateTime? createdAt
});




}
/// @nodoc
class __$ChatMessageDataCopyWithImpl<$Res>
    implements _$ChatMessageDataCopyWith<$Res> {
  __$ChatMessageDataCopyWithImpl(this._self, this._then);

  final _ChatMessageData _self;
  final $Res Function(_ChatMessageData) _then;

/// Create a copy of ChatMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? text = null,Object? senderId = null,Object? senderName = null,Object? senderAvatarUrl = null,Object? createdAt = freezed,}) {
  return _then(_ChatMessageData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,senderAvatarUrl: null == senderAvatarUrl ? _self.senderAvatarUrl : senderAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
