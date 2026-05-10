// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_group_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutGroupState {

 List<String> get imageUrls; int get page; bool get isFavorite; String get publishedAt;
/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutGroupStateCopyWith<AboutGroupState> get copyWith => _$AboutGroupStateCopyWithImpl<AboutGroupState>(this as AboutGroupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutGroupState&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.page, page) || other.page == page)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(imageUrls),page,isFavorite,publishedAt);

@override
String toString() {
  return 'AboutGroupState(imageUrls: $imageUrls, page: $page, isFavorite: $isFavorite, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $AboutGroupStateCopyWith<$Res>  {
  factory $AboutGroupStateCopyWith(AboutGroupState value, $Res Function(AboutGroupState) _then) = _$AboutGroupStateCopyWithImpl;
@useResult
$Res call({
 List<String> imageUrls, int page, bool isFavorite, String publishedAt
});




}
/// @nodoc
class _$AboutGroupStateCopyWithImpl<$Res>
    implements $AboutGroupStateCopyWith<$Res> {
  _$AboutGroupStateCopyWithImpl(this._self, this._then);

  final AboutGroupState _self;
  final $Res Function(AboutGroupState) _then;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrls = null,Object? page = null,Object? isFavorite = null,Object? publishedAt = null,}) {
  return _then(_self.copyWith(
imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutGroupState].
extension AboutGroupStatePatterns on AboutGroupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutGroupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutGroupState value)  $default,){
final _that = this;
switch (_that) {
case _AboutGroupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutGroupState value)?  $default,){
final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> imageUrls,  int page,  bool isFavorite,  String publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
return $default(_that.imageUrls,_that.page,_that.isFavorite,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> imageUrls,  int page,  bool isFavorite,  String publishedAt)  $default,) {final _that = this;
switch (_that) {
case _AboutGroupState():
return $default(_that.imageUrls,_that.page,_that.isFavorite,_that.publishedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> imageUrls,  int page,  bool isFavorite,  String publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
return $default(_that.imageUrls,_that.page,_that.isFavorite,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AboutGroupState implements AboutGroupState {
  const _AboutGroupState({final  List<String> imageUrls = const <String>[], this.page = 0, this.isFavorite = false, this.publishedAt = ''}): _imageUrls = imageUrls;
  

 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override@JsonKey() final  int page;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  String publishedAt;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutGroupStateCopyWith<_AboutGroupState> get copyWith => __$AboutGroupStateCopyWithImpl<_AboutGroupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutGroupState&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.page, page) || other.page == page)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_imageUrls),page,isFavorite,publishedAt);

@override
String toString() {
  return 'AboutGroupState(imageUrls: $imageUrls, page: $page, isFavorite: $isFavorite, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$AboutGroupStateCopyWith<$Res> implements $AboutGroupStateCopyWith<$Res> {
  factory _$AboutGroupStateCopyWith(_AboutGroupState value, $Res Function(_AboutGroupState) _then) = __$AboutGroupStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> imageUrls, int page, bool isFavorite, String publishedAt
});




}
/// @nodoc
class __$AboutGroupStateCopyWithImpl<$Res>
    implements _$AboutGroupStateCopyWith<$Res> {
  __$AboutGroupStateCopyWithImpl(this._self, this._then);

  final _AboutGroupState _self;
  final $Res Function(_AboutGroupState) _then;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrls = null,Object? page = null,Object? isFavorite = null,Object? publishedAt = null,}) {
  return _then(_AboutGroupState(
imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
