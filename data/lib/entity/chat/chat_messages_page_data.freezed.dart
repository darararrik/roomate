// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessagesPageData {

 String get chatId; String get title; int get participantsCount; List<ChatMessageData> get messages;
/// Create a copy of ChatMessagesPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagesPageDataCopyWith<ChatMessagesPageData> get copyWith => _$ChatMessagesPageDataCopyWithImpl<ChatMessagesPageData>(this as ChatMessagesPageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagesPageData&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.title, title) || other.title == title)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,chatId,title,participantsCount,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'ChatMessagesPageData(chatId: $chatId, title: $title, participantsCount: $participantsCount, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatMessagesPageDataCopyWith<$Res>  {
  factory $ChatMessagesPageDataCopyWith(ChatMessagesPageData value, $Res Function(ChatMessagesPageData) _then) = _$ChatMessagesPageDataCopyWithImpl;
@useResult
$Res call({
 String chatId, String title, int participantsCount, List<ChatMessageData> messages
});




}
/// @nodoc
class _$ChatMessagesPageDataCopyWithImpl<$Res>
    implements $ChatMessagesPageDataCopyWith<$Res> {
  _$ChatMessagesPageDataCopyWithImpl(this._self, this._then);

  final ChatMessagesPageData _self;
  final $Res Function(ChatMessagesPageData) _then;

/// Create a copy of ChatMessagesPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? title = null,Object? participantsCount = null,Object? messages = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessagesPageData].
extension ChatMessagesPageDataPatterns on ChatMessagesPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagesPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagesPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagesPageData value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagesPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagesPageData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagesPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chatId,  String title,  int participantsCount,  List<ChatMessageData> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagesPageData() when $default != null:
return $default(_that.chatId,_that.title,_that.participantsCount,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chatId,  String title,  int participantsCount,  List<ChatMessageData> messages)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagesPageData():
return $default(_that.chatId,_that.title,_that.participantsCount,_that.messages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chatId,  String title,  int participantsCount,  List<ChatMessageData> messages)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagesPageData() when $default != null:
return $default(_that.chatId,_that.title,_that.participantsCount,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessagesPageData extends ChatMessagesPageData {
  const _ChatMessagesPageData({this.chatId = '', this.title = '', this.participantsCount = 0, final  List<ChatMessageData> messages = const []}): _messages = messages,super._();
  

@override@JsonKey() final  String chatId;
@override@JsonKey() final  String title;
@override@JsonKey() final  int participantsCount;
 final  List<ChatMessageData> _messages;
@override@JsonKey() List<ChatMessageData> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatMessagesPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagesPageDataCopyWith<_ChatMessagesPageData> get copyWith => __$ChatMessagesPageDataCopyWithImpl<_ChatMessagesPageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagesPageData&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.title, title) || other.title == title)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,chatId,title,participantsCount,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatMessagesPageData(chatId: $chatId, title: $title, participantsCount: $participantsCount, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagesPageDataCopyWith<$Res> implements $ChatMessagesPageDataCopyWith<$Res> {
  factory _$ChatMessagesPageDataCopyWith(_ChatMessagesPageData value, $Res Function(_ChatMessagesPageData) _then) = __$ChatMessagesPageDataCopyWithImpl;
@override @useResult
$Res call({
 String chatId, String title, int participantsCount, List<ChatMessageData> messages
});




}
/// @nodoc
class __$ChatMessagesPageDataCopyWithImpl<$Res>
    implements _$ChatMessagesPageDataCopyWith<$Res> {
  __$ChatMessagesPageDataCopyWithImpl(this._self, this._then);

  final _ChatMessagesPageData _self;
  final $Res Function(_ChatMessagesPageData) _then;

/// Create a copy of ChatMessagesPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? title = null,Object? participantsCount = null,Object? messages = null,}) {
  return _then(_ChatMessagesPageData(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageData>,
  ));
}


}

// dart format on
