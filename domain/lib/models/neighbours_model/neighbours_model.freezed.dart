// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'neighbours_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NeighboursModel {

 String get id; String get title; String get description; int get participantsCount; int get maxParticipantsCount; int get price;
/// Create a copy of NeighboursModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NeighboursModelCopyWith<NeighboursModel> get copyWith => _$NeighboursModelCopyWithImpl<NeighboursModel>(this as NeighboursModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NeighboursModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,participantsCount,maxParticipantsCount,price);

@override
String toString() {
  return 'NeighboursModel(id: $id, title: $title, description: $description, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, price: $price)';
}


}

/// @nodoc
abstract mixin class $NeighboursModelCopyWith<$Res>  {
  factory $NeighboursModelCopyWith(NeighboursModel value, $Res Function(NeighboursModel) _then) = _$NeighboursModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int participantsCount, int maxParticipantsCount, int price
});




}
/// @nodoc
class _$NeighboursModelCopyWithImpl<$Res>
    implements $NeighboursModelCopyWith<$Res> {
  _$NeighboursModelCopyWithImpl(this._self, this._then);

  final NeighboursModel _self;
  final $Res Function(NeighboursModel) _then;

/// Create a copy of NeighboursModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NeighboursModel].
extension NeighboursModelPatterns on NeighboursModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NeighboursModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NeighboursModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NeighboursModel value)  $default,){
final _that = this;
switch (_that) {
case _NeighboursModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NeighboursModel value)?  $default,){
final _that = this;
switch (_that) {
case _NeighboursModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int participantsCount,  int maxParticipantsCount,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NeighboursModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.participantsCount,_that.maxParticipantsCount,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int participantsCount,  int maxParticipantsCount,  int price)  $default,) {final _that = this;
switch (_that) {
case _NeighboursModel():
return $default(_that.id,_that.title,_that.description,_that.participantsCount,_that.maxParticipantsCount,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int participantsCount,  int maxParticipantsCount,  int price)?  $default,) {final _that = this;
switch (_that) {
case _NeighboursModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.participantsCount,_that.maxParticipantsCount,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _NeighboursModel implements NeighboursModel {
   _NeighboursModel({this.id = '', this.title = '', this.description = '', this.participantsCount = 0, this.maxParticipantsCount = 0, this.price = 0});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int maxParticipantsCount;
@override@JsonKey() final  int price;

/// Create a copy of NeighboursModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NeighboursModelCopyWith<_NeighboursModel> get copyWith => __$NeighboursModelCopyWithImpl<_NeighboursModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NeighboursModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.maxParticipantsCount, maxParticipantsCount) || other.maxParticipantsCount == maxParticipantsCount)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,participantsCount,maxParticipantsCount,price);

@override
String toString() {
  return 'NeighboursModel(id: $id, title: $title, description: $description, participantsCount: $participantsCount, maxParticipantsCount: $maxParticipantsCount, price: $price)';
}


}

/// @nodoc
abstract mixin class _$NeighboursModelCopyWith<$Res> implements $NeighboursModelCopyWith<$Res> {
  factory _$NeighboursModelCopyWith(_NeighboursModel value, $Res Function(_NeighboursModel) _then) = __$NeighboursModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int participantsCount, int maxParticipantsCount, int price
});




}
/// @nodoc
class __$NeighboursModelCopyWithImpl<$Res>
    implements _$NeighboursModelCopyWith<$Res> {
  __$NeighboursModelCopyWithImpl(this._self, this._then);

  final _NeighboursModel _self;
  final $Res Function(_NeighboursModel) _then;

/// Create a copy of NeighboursModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? participantsCount = null,Object? maxParticipantsCount = null,Object? price = null,}) {
  return _then(_NeighboursModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,maxParticipantsCount: null == maxParticipantsCount ? _self.maxParticipantsCount : maxParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
