// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupModel {

 String get id; String get title; String get description; int get matchPercent; int get participantsCount; int get maxParticipantsCount; ApartamentModel get apartament;
/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupModelCopyWith<GroupModel> get copyWith => _$GroupModelCopyWithImpl<GroupModel>(this as GroupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,apartament);

@override
String toString() {
  return 'GroupModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class $GroupModelCopyWith<$Res>  {
  factory $GroupModelCopyWith(GroupModel value, $Res Function(GroupModel) _then) = _$GroupModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, ApartamentModel apartament
});


$ApartamentModelCopyWith<$Res> get apartament;

}
/// @nodoc
class _$GroupModelCopyWithImpl<$Res>
    implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._self, this._then);

  final GroupModel _self;
  final $Res Function(GroupModel) _then;

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? apartament = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentModel,
  ));
}
/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartament {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupModel].
extension GroupModelPatterns on GroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  ApartamentModel apartament)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  ApartamentModel apartament)  $default,) {final _that = this;
switch (_that) {
case _GroupModel():
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.apartament);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  ApartamentModel apartament)?  $default,) {final _that = this;
switch (_that) {
case _GroupModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.apartament);case _:
  return null;

}
}

}

/// @nodoc


class _GroupModel implements GroupModel {
  const _GroupModel({this.id = '', this.title = '', this.description = '', this.matchPercent = 0, this.participantsCount = 0, this.maxParticipantsCount = 0, this.apartament = const ApartamentModel()});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int matchPercent;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int maxParticipantsCount;
@override@JsonKey() final  ApartamentModel apartament;

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupModelCopyWith<_GroupModel> get copyWith => __$GroupModelCopyWithImpl<_GroupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,apartament);

@override
String toString() {
  return 'GroupModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class _$GroupModelCopyWith<$Res> implements $GroupModelCopyWith<$Res> {
  factory _$GroupModelCopyWith(_GroupModel value, $Res Function(_GroupModel) _then) = __$GroupModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, ApartamentModel apartament
});


@override $ApartamentModelCopyWith<$Res> get apartament;

}
/// @nodoc
class __$GroupModelCopyWithImpl<$Res>
    implements _$GroupModelCopyWith<$Res> {
  __$GroupModelCopyWithImpl(this._self, this._then);

  final _GroupModel _self;
  final $Res Function(_GroupModel) _then;

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? apartament = null,}) {
  return _then(_GroupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentModel,
  ));
}

/// Create a copy of GroupModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartament {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}

// dart format on
