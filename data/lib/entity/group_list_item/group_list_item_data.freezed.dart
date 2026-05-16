// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_list_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupListItemData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'match_percent') int get matchPercent;@JsonKey(name: 'participants_count') int get participantsCount;@JsonKey(name: 'max_participants_count') int get maxParticipantsCount;@JsonKey(name: 'participant_avatars') List<String> get participantAvatars;@JsonKey(name: 'price') String get price;@JsonKey(name: 'apartment') ApartamentData get apartament;
/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupListItemDataCopyWith<GroupListItemData> get copyWith => _$GroupListItemDataCopyWithImpl<GroupListItemData>(this as GroupListItemData, _$identity);

  /// Serializes this GroupListItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupListItemData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other.participantAvatars, participantAvatars)&&(identical(other.price, price) || other.price == price)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(participantAvatars),price,apartament);

@override
String toString() {
  return 'GroupListItemData(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participantAvatars: $participantAvatars, price: $price, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class $GroupListItemDataCopyWith<$Res>  {
  factory $GroupListItemDataCopyWith(GroupListItemData value, $Res Function(GroupListItemData) _then) = _$GroupListItemDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'match_percent') int matchPercent,@JsonKey(name: 'participants_count') int participantsCount,@JsonKey(name: 'max_participants_count') int maxParticipantsCount,@JsonKey(name: 'participant_avatars') List<String> participantAvatars,@JsonKey(name: 'price') String price,@JsonKey(name: 'apartment') ApartamentData apartament
});


$ApartamentDataCopyWith<$Res> get apartament;

}
/// @nodoc
class _$GroupListItemDataCopyWithImpl<$Res>
    implements $GroupListItemDataCopyWith<$Res> {
  _$GroupListItemDataCopyWithImpl(this._self, this._then);

  final GroupListItemData _self;
  final $Res Function(GroupListItemData) _then;

/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? participantAvatars = null,Object? price = null,Object? apartament = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,participantAvatars: null == participantAvatars ? _self.participantAvatars : participantAvatars // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData,
  ));
}
/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res> get apartament {
  
  return $ApartamentDataCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupListItemData].
extension GroupListItemDataPatterns on GroupListItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupListItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupListItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupListItemData value)  $default,){
final _that = this;
switch (_that) {
case _GroupListItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupListItemData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupListItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'participant_avatars')  List<String> participantAvatars, @JsonKey(name: 'price')  String price, @JsonKey(name: 'apartment')  ApartamentData apartament)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupListItemData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.participantAvatars,_that.price,_that.apartament);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'participant_avatars')  List<String> participantAvatars, @JsonKey(name: 'price')  String price, @JsonKey(name: 'apartment')  ApartamentData apartament)  $default,) {final _that = this;
switch (_that) {
case _GroupListItemData():
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.participantAvatars,_that.price,_that.apartament);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'match_percent')  int matchPercent, @JsonKey(name: 'participants_count')  int participantsCount, @JsonKey(name: 'max_participants_count')  int maxParticipantsCount, @JsonKey(name: 'participant_avatars')  List<String> participantAvatars, @JsonKey(name: 'price')  String price, @JsonKey(name: 'apartment')  ApartamentData apartament)?  $default,) {final _that = this;
switch (_that) {
case _GroupListItemData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.participantAvatars,_that.price,_that.apartament);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupListItemData implements GroupListItemData {
  const _GroupListItemData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'match_percent') this.matchPercent = 0, @JsonKey(name: 'participants_count') this.participantsCount = 0, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount = 0, @JsonKey(name: 'participant_avatars') final  List<String> participantAvatars = const <String>[], @JsonKey(name: 'price') this.price = '', @JsonKey(name: 'apartment') this.apartament = const ApartamentData()}): _participantAvatars = participantAvatars;
  factory _GroupListItemData.fromJson(Map<String, dynamic> json) => _$GroupListItemDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'match_percent') final  int matchPercent;
@override@JsonKey(name: 'participants_count') final  int participantsCount;
@override@JsonKey(name: 'max_participants_count') final  int maxParticipantsCount;
 final  List<String> _participantAvatars;
@override@JsonKey(name: 'participant_avatars') List<String> get participantAvatars {
  if (_participantAvatars is EqualUnmodifiableListView) return _participantAvatars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participantAvatars);
}

@override@JsonKey(name: 'price') final  String price;
@override@JsonKey(name: 'apartment') final  ApartamentData apartament;

/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupListItemDataCopyWith<_GroupListItemData> get copyWith => __$GroupListItemDataCopyWithImpl<_GroupListItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupListItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupListItemData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other._participantAvatars, _participantAvatars)&&(identical(other.price, price) || other.price == price)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(_participantAvatars),price,apartament);

@override
String toString() {
  return 'GroupListItemData(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participantAvatars: $participantAvatars, price: $price, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class _$GroupListItemDataCopyWith<$Res> implements $GroupListItemDataCopyWith<$Res> {
  factory _$GroupListItemDataCopyWith(_GroupListItemData value, $Res Function(_GroupListItemData) _then) = __$GroupListItemDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'match_percent') int matchPercent,@JsonKey(name: 'participants_count') int participantsCount,@JsonKey(name: 'max_participants_count') int maxParticipantsCount,@JsonKey(name: 'participant_avatars') List<String> participantAvatars,@JsonKey(name: 'price') String price,@JsonKey(name: 'apartment') ApartamentData apartament
});


@override $ApartamentDataCopyWith<$Res> get apartament;

}
/// @nodoc
class __$GroupListItemDataCopyWithImpl<$Res>
    implements _$GroupListItemDataCopyWith<$Res> {
  __$GroupListItemDataCopyWithImpl(this._self, this._then);

  final _GroupListItemData _self;
  final $Res Function(_GroupListItemData) _then;

/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? participantAvatars = null,Object? price = null,Object? apartament = null,}) {
  return _then(_GroupListItemData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,participantAvatars: null == participantAvatars ? _self._participantAvatars : participantAvatars // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData,
  ));
}

/// Create a copy of GroupListItemData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentDataCopyWith<$Res> get apartament {
  
  return $ApartamentDataCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}

// dart format on
