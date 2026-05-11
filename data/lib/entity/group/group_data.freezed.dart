// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'match_percent') int? get matchPercent;@JsonKey(name: 'participants_count') int? get participantsCount;@JsonKey(name: 'max_participants_count') int? get maxParticipantsCount;@JsonKey(name: 'apartament') ApartamentData? get apartament;
/// Create a copy of GroupData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupDataCopyWith<GroupData> get copyWith => _$GroupDataCopyWithImpl<GroupData>(this as GroupData, _$identity);

  /// Serializes this GroupData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,apartament);

@override
String toString() {
  return 'GroupData(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class $GroupDataCopyWith<$Res>  {
  factory $GroupDataCopyWith(GroupData value, $Res Function(GroupData) _then) = _$GroupDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'match_percent') int? matchPercent,@JsonKey(name: 'participants_count') int? participantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'apartament') ApartamentData? apartament
});


$ApartamentDataCopyWith<$Res>? get apartament;

}
/// @nodoc
class _$GroupDataCopyWithImpl<$Res>
    implements $GroupDataCopyWith<$Res> {
  _$GroupDataCopyWithImpl(this._self, this._then);

  final GroupData _self;
  final $Res Function(GroupData) _then;

/// Create a copy of GroupData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? matchPercent = freezed,Object? participantsCount = freezed,Object? maxParticipantsCount = freezed,Object? apartament = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,matchPercent: freezed == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int?,participantsCount: freezed == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,apartament: freezed == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData?,
  ));
}
/// Create a copy of GroupData
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
}
}


/// Adds pattern-matching-related methods to [GroupData].
extension GroupDataPatterns on GroupData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupData value)  $default,){
final _that = this;
switch (_that) {
case _GroupData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupData value)?  $default,){
final _that = this;
switch (_that) {
case _GroupData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'match_percent')  int? matchPercent, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'apartament')  ApartamentData? apartament)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.apartament);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'match_percent')  int? matchPercent, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'apartament')  ApartamentData? apartament)  $default,) {final _that = this;
switch (_that) {
case _GroupData():
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.apartament);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'match_percent')  int? matchPercent, @JsonKey(name: 'participants_count')  int? participantsCount, @JsonKey(name: 'max_participants_count')  int? maxParticipantsCount, @JsonKey(name: 'apartament')  ApartamentData? apartament)?  $default,) {final _that = this;
switch (_that) {
case _GroupData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.apartament);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupData implements GroupData {
  const _GroupData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'match_percent') this.matchPercent, @JsonKey(name: 'participants_count') this.participantsCount, @JsonKey(name: 'max_participants_count') this.maxParticipantsCount, @JsonKey(name: 'apartament') this.apartament});
  factory _GroupData.fromJson(Map<String, dynamic> json) => _$GroupDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'match_percent') final  int? matchPercent;
@override@JsonKey(name: 'participants_count') final  int? participantsCount;
@override@JsonKey(name: 'max_participants_count') final  int? maxParticipantsCount;
@override@JsonKey(name: 'apartament') final  ApartamentData? apartament;

/// Create a copy of GroupData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupDataCopyWith<_GroupData> get copyWith => __$GroupDataCopyWithImpl<_GroupData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,apartament);

@override
String toString() {
  return 'GroupData(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class _$GroupDataCopyWith<$Res> implements $GroupDataCopyWith<$Res> {
  factory _$GroupDataCopyWith(_GroupData value, $Res Function(_GroupData) _then) = __$GroupDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'title') String? title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'match_percent') int? matchPercent,@JsonKey(name: 'participants_count') int? participantsCount,@JsonKey(name: 'max_participants_count') int? maxParticipantsCount,@JsonKey(name: 'apartament') ApartamentData? apartament
});


@override $ApartamentDataCopyWith<$Res>? get apartament;

}
/// @nodoc
class __$GroupDataCopyWithImpl<$Res>
    implements _$GroupDataCopyWith<$Res> {
  __$GroupDataCopyWithImpl(this._self, this._then);

  final _GroupData _self;
  final $Res Function(_GroupData) _then;

/// Create a copy of GroupData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? matchPercent = freezed,Object? participantsCount = freezed,Object? maxParticipantsCount = freezed,Object? apartament = freezed,}) {
  return _then(_GroupData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,matchPercent: freezed == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int?,participantsCount: freezed == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int?,maxParticipantsCount: freezed == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int?,apartament: freezed == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentData?,
  ));
}

/// Create a copy of GroupData
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
}
}

// dart format on
