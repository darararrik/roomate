// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupListItemModel {

 String get id; String get title; String get description; int get matchPercent; int get participantsCount; int get maxParticipantsCount; List<String> get participantAvatars; String get price; ApartamentPreviewModel get apartament;
/// Create a copy of GroupListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupListItemModelCopyWith<GroupListItemModel> get copyWith => _$GroupListItemModelCopyWithImpl<GroupListItemModel>(this as GroupListItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupListItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other.participantAvatars, participantAvatars)&&(identical(other.price, price) || other.price == price)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(participantAvatars),price,apartament);

@override
String toString() {
  return 'GroupListItemModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participantAvatars: $participantAvatars, price: $price, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class $GroupListItemModelCopyWith<$Res>  {
  factory $GroupListItemModelCopyWith(GroupListItemModel value, $Res Function(GroupListItemModel) _then) = _$GroupListItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, List<String> participantAvatars, String price, ApartamentPreviewModel apartament
});


$ApartamentPreviewModelCopyWith<$Res> get apartament;

}
/// @nodoc
class _$GroupListItemModelCopyWithImpl<$Res>
    implements $GroupListItemModelCopyWith<$Res> {
  _$GroupListItemModelCopyWithImpl(this._self, this._then);

  final GroupListItemModel _self;
  final $Res Function(GroupListItemModel) _then;

/// Create a copy of GroupListItemModel
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
as ApartamentPreviewModel,
  ));
}
/// Create a copy of GroupListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentPreviewModelCopyWith<$Res> get apartament {
  
  return $ApartamentPreviewModelCopyWith<$Res>(_self.apartament, (value) {
    return _then(_self.copyWith(apartament: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupListItemModel].
extension GroupListItemModelPatterns on GroupListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _GroupListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroupListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  List<String> participantAvatars,  String price,  ApartamentPreviewModel apartament)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupListItemModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  List<String> participantAvatars,  String price,  ApartamentPreviewModel apartament)  $default,) {final _that = this;
switch (_that) {
case _GroupListItemModel():
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.participantAvatars,_that.price,_that.apartament);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int matchPercent,  int participantsCount,  int maxParticipantsCount,  List<String> participantAvatars,  String price,  ApartamentPreviewModel apartament)?  $default,) {final _that = this;
switch (_that) {
case _GroupListItemModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.matchPercent,_that.participantsCount,_that.maxParticipantsCount,_that.participantAvatars,_that.price,_that.apartament);case _:
  return null;

}
}

}

/// @nodoc


class _GroupListItemModel implements GroupListItemModel {
  const _GroupListItemModel({this.id = '', this.title = '', this.description = '', this.matchPercent = 0, this.participantsCount = 0, this.maxParticipantsCount = 0, final  List<String> participantAvatars = const [], this.price = '', this.apartament = const ApartamentPreviewModel()}): _participantAvatars = participantAvatars;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int matchPercent;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int maxParticipantsCount;
 final  List<String> _participantAvatars;
@override@JsonKey() List<String> get participantAvatars {
  if (_participantAvatars is EqualUnmodifiableListView) return _participantAvatars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participantAvatars);
}

@override@JsonKey() final  String price;
@override@JsonKey() final  ApartamentPreviewModel apartament;

/// Create a copy of GroupListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupListItemModelCopyWith<_GroupListItemModel> get copyWith => __$GroupListItemModelCopyWithImpl<_GroupListItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupListItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.matchPercent, matchPercent) || other.matchPercent == matchPercent)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&const DeepCollectionEquality().equals(other._participantAvatars, _participantAvatars)&&(identical(other.price, price) || other.price == price)&&(identical(other.apartament, apartament) || other.apartament == apartament));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,matchPercent,participantsCount,maxParticipantsCount,const DeepCollectionEquality().hash(_participantAvatars),price,apartament);

@override
String toString() {
  return 'GroupListItemModel(id: $id, title: $title, description: $description, matchPercent: $matchPercent, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, participantAvatars: $participantAvatars, price: $price, apartament: $apartament)';
}


}

/// @nodoc
abstract mixin class _$GroupListItemModelCopyWith<$Res> implements $GroupListItemModelCopyWith<$Res> {
  factory _$GroupListItemModelCopyWith(_GroupListItemModel value, $Res Function(_GroupListItemModel) _then) = __$GroupListItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int matchPercent, int participantsCount, int maxParticipantsCount, List<String> participantAvatars, String price, ApartamentPreviewModel apartament
});


@override $ApartamentPreviewModelCopyWith<$Res> get apartament;

}
/// @nodoc
class __$GroupListItemModelCopyWithImpl<$Res>
    implements _$GroupListItemModelCopyWith<$Res> {
  __$GroupListItemModelCopyWithImpl(this._self, this._then);

  final _GroupListItemModel _self;
  final $Res Function(_GroupListItemModel) _then;

/// Create a copy of GroupListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? matchPercent = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? participantAvatars = null,Object? price = null,Object? apartament = null,}) {
  return _then(_GroupListItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,matchPercent: null == matchPercent ? _self.matchPercent : matchPercent // ignore: cast_nullable_to_non_nullable
as int,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,participantAvatars: null == participantAvatars ? _self._participantAvatars : participantAvatars // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,apartament: null == apartament ? _self.apartament : apartament // ignore: cast_nullable_to_non_nullable
as ApartamentPreviewModel,
  ));
}

/// Create a copy of GroupListItemModel
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
