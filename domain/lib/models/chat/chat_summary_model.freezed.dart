// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatSummaryModel {

 String get id; String get title; String get avatarUrl; String get participantId; String get participantName; String get lastMessageText; DateTime? get updatedAt; int get unreadCount; ApartamentPreviewModel get apartament;
/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatSummaryModelCopyWith<ChatSummaryModel> get copyWith => _$ChatSummaryModelCopyWithImpl<ChatSummaryModel>(this as ChatSummaryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.participantName, participantName) || other.participantName == participantName)&&(identical(other.lastMessageText, lastMessageText) || other.lastMessageText == lastMessageText)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,avatarUrl,participantId,participantName,lastMessageText,updatedAt,unreadCount,apartament);

@override
String toString() {
  return 'ChatSummaryModel(id: $id, title: $title, avatarUrl: $avatarUrl, participantId: $participantId, participantName: $participantName, lastMessageText: $lastMessageText, updatedAt: $updatedAt, unreadCount: $unreadCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class $ChatSummaryModelCopyWith<$Res>  {
  factory $ChatSummaryModelCopyWith(ChatSummaryModel value, $Res Function(ChatSummaryModel) _then) = _$ChatSummaryModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String avatarUrl, String participantId, String participantName, String lastMessageText, DateTime? updatedAt, int unreadCount, ApartamentPreviewModel apartament
});


$ApartamentPreviewModelCopyWith<$Res> get apartament;

}
/// @nodoc
class _$ChatSummaryModelCopyWithImpl<$Res>
    implements $ChatSummaryModelCopyWith<$Res> {
  _$ChatSummaryModelCopyWithImpl(this._self, this._then);

  final ChatSummaryModel _self;
  final $Res Function(ChatSummaryModel) _then;

/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? avatarUrl = null,Object? participantId = null,Object? participantName = null,Object? lastMessageText = null,Object? updatedAt = freezed,Object? unreadCount = null,Object? apartament = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,lastMessageText: null == lastMessageText ? _self.lastMessageText : lastMessageText // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentPreviewModel,
  ));
}
/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentPreviewModelCopyWith<$Res> get apartament {
  
  return $ApartamentPreviewModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatSummaryModel].
extension ChatSummaryModelPatterns on ChatSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String avatarUrl,  String participantId,  String participantName,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ApartamentPreviewModel apartament)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatSummaryModel() when $default != null:
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantId,_that.participantName,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.apartament);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String avatarUrl,  String participantId,  String participantName,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ApartamentPreviewModel apartament)  $default,) {final _that = this;
switch (_that) {
case _ChatSummaryModel():
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantId,_that.participantName,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.apartament);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String avatarUrl,  String participantId,  String participantName,  String lastMessageText,  DateTime? updatedAt,  int unreadCount,  ApartamentPreviewModel apartament)?  $default,) {final _that = this;
switch (_that) {
case _ChatSummaryModel() when $default != null:
return $default(_that.id,_that.title,_that.avatarUrl,_that.participantId,_that.participantName,_that.lastMessageText,_that.updatedAt,_that.unreadCount,_that.apartament);case _:
  return null;

}
}

}

/// @nodoc


class _ChatSummaryModel implements ChatSummaryModel {
  const _ChatSummaryModel({this.id = '', this.title = '', this.avatarUrl = '', this.participantId = '', this.participantName = '', this.lastMessageText = '', this.updatedAt, this.unreadCount = 0, this.apartament = const ApartamentPreviewModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  String participantId;
@override@JsonKey() final  String participantName;
@override@JsonKey() final  String lastMessageText;
@override final  DateTime? updatedAt;
@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  ApartamentPreviewModel apartament;

/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatSummaryModelCopyWith<_ChatSummaryModel> get copyWith => __$ChatSummaryModelCopyWithImpl<_ChatSummaryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.participantName, participantName) || other.participantName == participantName)&&(identical(other.lastMessageText, lastMessageText) || other.lastMessageText == lastMessageText)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,avatarUrl,participantId,participantName,lastMessageText,updatedAt,unreadCount,apartament);

@override
String toString() {
  return 'ChatSummaryModel(id: $id, title: $title, avatarUrl: $avatarUrl, participantId: $participantId, participantName: $participantName, lastMessageText: $lastMessageText, updatedAt: $updatedAt, unreadCount: $unreadCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class _$ChatSummaryModelCopyWith<$Res> implements $ChatSummaryModelCopyWith<$Res> {
  factory _$ChatSummaryModelCopyWith(_ChatSummaryModel value, $Res Function(_ChatSummaryModel) _then) = __$ChatSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String avatarUrl, String participantId, String participantName, String lastMessageText, DateTime? updatedAt, int unreadCount, ApartamentPreviewModel apartament
});


@override $ApartamentPreviewModelCopyWith<$Res> get apartament;

}
/// @nodoc
class __$ChatSummaryModelCopyWithImpl<$Res>
    implements _$ChatSummaryModelCopyWith<$Res> {
  __$ChatSummaryModelCopyWithImpl(this._self, this._then);

  final _ChatSummaryModel _self;
  final $Res Function(_ChatSummaryModel) _then;

/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? avatarUrl = null,Object? participantId = null,Object? participantName = null,Object? lastMessageText = null,Object? updatedAt = freezed,Object? unreadCount = null,Object? apartament = null,}) {
  return _then(_ChatSummaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,lastMessageText: null == lastMessageText ? _self.lastMessageText : lastMessageText // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentPreviewModel,
  ));
}

/// Create a copy of ChatSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentPreviewModelCopyWith<$Res> get apartament {
  
  return $ApartamentPreviewModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}

// dart format on
