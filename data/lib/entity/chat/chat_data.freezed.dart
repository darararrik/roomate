// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatData {

 String get id; String get title; String get avatarUrl; int get participantsCount; String get lastMessageText; DateTime? get updatedAt; int get unreadCount; ChatParticipantData? get participant; ApartamentData? get apartament; ChatMessageData? get lastMessage;
/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDataCopyWith<ChatData> get copyWith => _$ChatDataCopyWithImpl<ChatData>(this as ChatData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.lastMessageText, lastMessageText) || other.lastMessageText == lastMessageText)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.participant, participant) || other.participant == participant)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,avatarUrl,participantsCount,lastMessageText,updatedAt,unreadCount,participant,apartament,lastMessage);

@override
String toString() {
  return 'ChatData(id: $id, title: $title, avatarUrl: $avatarUrl, participantsCount: $participantsCount, lastMessageText: $lastMessageText, updatedAt: $updatedAt, unreadCount: $unreadCount, participant: $participant, apartament: $apartament, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class $ChatDataCopyWith<$Res>  {
  factory $ChatDataCopyWith(ChatData value, $Res Function(ChatData) _then) = _$ChatDataCopyWithImpl;
@useResult
$Res call({
 String id, String title, String avatarUrl, int participantsCount, String lastMessageText, DateTime? updatedAt, int unreadCount, ChatParticipantData? participant, ApartamentData? apartament, ChatMessageData? lastMessage
});


$ChatParticipantDataCopyWith<$Res>? get participant;$ApartamentDataCopyWith<$Res>? get apartament;$ChatMessageDataCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class _$ChatDataCopyWithImpl<$Res>
    implements $ChatDataCopyWith<$Res> {
  _$ChatDataCopyWithImpl(this._self, this._then);

  final ChatData _self;
  final $Res Function(ChatData) _then;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? avatarUrl = null,Object? participantsCount = null,Object? lastMessageText = null,Object? updatedAt = freezed,Object? unreadCount = null,Object? participant = freezed,Object? apartament = freezed,Object? lastMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,lastMessageText: null == lastMessageText ? _self.lastMessageText : lastMessageText // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,participant: freezed == participant ? _self.participant : participant // ignore: cast_nullable_to_non_nullable
as ChatParticipantData?,apartament: freezed == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageData?,
  ));
}
/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantDataCopyWith<$Res>? get participant {
    if (_self.participant == null) {
    return null;
  }

  return $ChatParticipantDataCopyWith<$Res>(_self.participant!, (value) {
    return _then(_self.copyWith(participant: value));
  });
}/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res>? get apartament {
    if (_self.apartament == null) {
    return null;
  }

  return $ApartamentDataCopyWith<$Res>(_self.apartament!, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDataCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $ChatMessageDataCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatData].
extension ChatDataPatterns on ChatData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatData value)  $default,){
final _that = this;
switch (_that) {
case _ChatData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String avatarUrl,  int participantsCount,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ChatParticipantData? participant,  ApartamentData? apartament,  ChatMessageData? lastMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatData() when $default != null:
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantsCount,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.participant,_that.apartament,_that.lastMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String avatarUrl,  int participantsCount,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ChatParticipantData? participant,  ApartamentData? apartament,  ChatMessageData? lastMessage)  $default,) {final _that = this;
switch (_that) {
case _ChatData():
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantsCount,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.participant,_that.apartament,_that.lastMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String avatarUrl,  int participantsCount,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ChatParticipantData? participant,  ApartamentData? apartament,  ChatMessageData? lastMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChatData() when $default != null:
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantsCount,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.participant,_that.apartament,_that.lastMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChatData extends ChatData {
  const _ChatData({this.id = '', this.title = '', this.avatarUrl = '', this.participantsCount = 0, this.lastMessageText = '', this.updatedAt, this.unreadCount = 0, this.participant, this.apartament, this.lastMessage}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  String lastMessageText;
@override final  DateTime? updatedAt;
@override@JsonKey() final  int unreadCount;
@override final  ChatParticipantData? participant;
@override final  ApartamentData? apartament;
@override final  ChatMessageData? lastMessage;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDataCopyWith<_ChatData> get copyWith => __$ChatDataCopyWithImpl<_ChatData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.lastMessageText, lastMessageText) || other.lastMessageText == lastMessageText)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.participant, participant) || other.participant == participant)&&(identical(other.apartament, apartament) || other.apartament == apartament)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,avatarUrl,participantsCount,lastMessageText,updatedAt,unreadCount,participant,apartament,lastMessage);

@override
String toString() {
  return 'ChatData(id: $id, title: $title, avatarUrl: $avatarUrl, participantsCount: $participantsCount, lastMessageText: $lastMessageText, updatedAt: $updatedAt, unreadCount: $unreadCount, participant: $participant, apartament: $apartament, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class _$ChatDataCopyWith<$Res> implements $ChatDataCopyWith<$Res> {
  factory _$ChatDataCopyWith(_ChatData value, $Res Function(_ChatData) _then) = __$ChatDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String avatarUrl, int participantsCount, String lastMessageText, DateTime? updatedAt, int unreadCount, ChatParticipantData? participant, ApartamentData? apartament, ChatMessageData? lastMessage
});


@override $ChatParticipantDataCopyWith<$Res>? get participant;@override $ApartamentDataCopyWith<$Res>? get apartament;@override $ChatMessageDataCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class __$ChatDataCopyWithImpl<$Res>
    implements _$ChatDataCopyWith<$Res> {
  __$ChatDataCopyWithImpl(this._self, this._then);

  final _ChatData _self;
  final $Res Function(_ChatData) _then;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? avatarUrl = null,Object? participantsCount = null,Object? lastMessageText = null,Object? updatedAt = freezed,Object? unreadCount = null,Object? participant = freezed,Object? apartament = freezed,Object? lastMessage = freezed,}) {
  return _then(_ChatData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,lastMessageText: null == lastMessageText ? _self.lastMessageText : lastMessageText // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,participant: freezed == participant ? _self.participant : participant // ignore: cast_nullable_to_non_nullable
as ChatParticipantData?,apartament: freezed == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as ChatMessageData?,
  ));
}

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantDataCopyWith<$Res>? get participant {
    if (_self.participant == null) {
    return null;
  }

  return $ChatParticipantDataCopyWith<$Res>(_self.participant!, (value) {
    return _then(_self.copyWith(participant: value));
  });
}/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res>? get apartament {
    if (_self.apartament == null) {
    return null;
  }

  return $ApartamentDataCopyWith<$Res>(_self.apartament!, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageDataCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $ChatMessageDataCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}

// dart format on
