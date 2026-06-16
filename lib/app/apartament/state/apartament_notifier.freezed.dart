// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentState {

 ApartamentModel get apartment; int get page; bool get hasImages; int get imagesCount; bool get isFavorite; String get verifiedTitle; String get companyTitle; bool get isOwnerApartment; String get publishedAt; String get viewsText;
/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentStateCopyWith<ApartamentState> get copyWith => _$ApartamentStateCopyWithImpl<ApartamentState>(this as ApartamentState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentState&&(identical(other.apartment, apartment) || other.apartment == apartment)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasImages, hasImages) || other.hasImages == hasImages)&&(identical(other.imagesCount, imagesCount) || other.imagesCount == imagesCount)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.verifiedTitle, verifiedTitle) || other.verifiedTitle == verifiedTitle)&&(identical(other.companyTitle, companyTitle) || other.companyTitle == companyTitle)&&(identical(other.isOwnerApartment, isOwnerApartment) || other.isOwnerApartment == isOwnerApartment)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.viewsText, viewsText) || other.viewsText == viewsText));
}


@override
int get hashCode => Object.hash(runtimeType,apartment,page,hasImages,imagesCount,isFavorite,verifiedTitle,companyTitle,isOwnerApartment,publishedAt,viewsText);

@override
String toString() {
  return 'ApartamentState(apartment: $apartment, page: $page, hasImages: $hasImages, imagesCount: $imagesCount, isFavorite: $isFavorite, verifiedTitle: $verifiedTitle, companyTitle: $companyTitle, isOwnerApartment: $isOwnerApartment, publishedAt: $publishedAt, viewsText: $viewsText)';
}


}

/// @nodoc
abstract mixin class $ApartamentStateCopyWith<$Res>  {
  factory $ApartamentStateCopyWith(ApartamentState value, $Res Function(ApartamentState) _then) = _$ApartamentStateCopyWithImpl;
@useResult
$Res call({
 ApartamentModel apartment, int page, bool hasImages, int imagesCount, bool isFavorite, String verifiedTitle, String companyTitle, bool isOwnerApartment, String publishedAt, String viewsText
});


$ApartamentModelCopyWith<$Res> get apartment;

}
/// @nodoc
class _$ApartamentStateCopyWithImpl<$Res>
    implements $ApartamentStateCopyWith<$Res> {
  _$ApartamentStateCopyWithImpl(this._self, this._then);

  final ApartamentState _self;
  final $Res Function(ApartamentState) _then;

/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apartment = null,Object? page = null,Object? hasImages = null,Object? imagesCount = null,Object? isFavorite = null,Object? verifiedTitle = null,Object? companyTitle = null,Object? isOwnerApartment = null,Object? publishedAt = null,Object? viewsText = null,}) {
  return _then(_self.copyWith(
apartment: null == apartment ? _self.apartment : apartment // ignore: cast_nullable_to_non_nullable
as ApartamentModel,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasImages: null == hasImages ? _self.hasImages : hasImages // ignore: cast_nullable_to_non_nullable
as bool,imagesCount: null == imagesCount ? _self.imagesCount : imagesCount // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,verifiedTitle: null == verifiedTitle ? _self.verifiedTitle : verifiedTitle // ignore: cast_nullable_to_non_nullable
as String,companyTitle: null == companyTitle ? _self.companyTitle : companyTitle // ignore: cast_nullable_to_non_nullable
as String,isOwnerApartment: null == isOwnerApartment ? _self.isOwnerApartment : isOwnerApartment // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,viewsText: null == viewsText ? _self.viewsText : viewsText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartment {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartment, (value) {
    return _then(_self.copyWith(apartment: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApartamentState].
extension ApartamentStatePatterns on ApartamentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentState value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentState value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ApartamentModel apartment,  int page,  bool hasImages,  int imagesCount,  bool isFavorite,  String verifiedTitle,  String companyTitle,  bool isOwnerApartment,  String publishedAt,  String viewsText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentState() when $default != null:
return $default(_that.apartment,_that.page,_that.hasImages,_that.imagesCount,_that.isFavorite,_that.verifiedTitle,_that.companyTitle,_that.isOwnerApartment,_that.publishedAt,_that.viewsText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ApartamentModel apartment,  int page,  bool hasImages,  int imagesCount,  bool isFavorite,  String verifiedTitle,  String companyTitle,  bool isOwnerApartment,  String publishedAt,  String viewsText)  $default,) {final _that = this;
switch (_that) {
case _ApartamentState():
return $default(_that.apartment,_that.page,_that.hasImages,_that.imagesCount,_that.isFavorite,_that.verifiedTitle,_that.companyTitle,_that.isOwnerApartment,_that.publishedAt,_that.viewsText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ApartamentModel apartment,  int page,  bool hasImages,  int imagesCount,  bool isFavorite,  String verifiedTitle,  String companyTitle,  bool isOwnerApartment,  String publishedAt,  String viewsText)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentState() when $default != null:
return $default(_that.apartment,_that.page,_that.hasImages,_that.imagesCount,_that.isFavorite,_that.verifiedTitle,_that.companyTitle,_that.isOwnerApartment,_that.publishedAt,_that.viewsText);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentState implements ApartamentState {
  const _ApartamentState({required this.apartment, this.page = 0, this.hasImages = false, this.imagesCount = 1, this.isFavorite = false, this.verifiedTitle = '', this.companyTitle = '', this.isOwnerApartment = false, this.publishedAt = '', this.viewsText = ''});
  

@override final  ApartamentModel apartment;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasImages;
@override@JsonKey() final  int imagesCount;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  String verifiedTitle;
@override@JsonKey() final  String companyTitle;
@override@JsonKey() final  bool isOwnerApartment;
@override@JsonKey() final  String publishedAt;
@override@JsonKey() final  String viewsText;

/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentStateCopyWith<_ApartamentState> get copyWith => __$ApartamentStateCopyWithImpl<_ApartamentState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentState&&(identical(other.apartment, apartment) || other.apartment == apartment)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasImages, hasImages) || other.hasImages == hasImages)&&(identical(other.imagesCount, imagesCount) || other.imagesCount == imagesCount)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.verifiedTitle, verifiedTitle) || other.verifiedTitle == verifiedTitle)&&(identical(other.companyTitle, companyTitle) || other.companyTitle == companyTitle)&&(identical(other.isOwnerApartment, isOwnerApartment) || other.isOwnerApartment == isOwnerApartment)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.viewsText, viewsText) || other.viewsText == viewsText));
}


@override
int get hashCode => Object.hash(runtimeType,apartment,page,hasImages,imagesCount,isFavorite,verifiedTitle,companyTitle,isOwnerApartment,publishedAt,viewsText);

@override
String toString() {
  return 'ApartamentState(apartment: $apartment, page: $page, hasImages: $hasImages, imagesCount: $imagesCount, isFavorite: $isFavorite, verifiedTitle: $verifiedTitle, companyTitle: $companyTitle, isOwnerApartment: $isOwnerApartment, publishedAt: $publishedAt, viewsText: $viewsText)';
}


}

/// @nodoc
abstract mixin class _$ApartamentStateCopyWith<$Res> implements $ApartamentStateCopyWith<$Res> {
  factory _$ApartamentStateCopyWith(_ApartamentState value, $Res Function(_ApartamentState) _then) = __$ApartamentStateCopyWithImpl;
@override @useResult
$Res call({
 ApartamentModel apartment, int page, bool hasImages, int imagesCount, bool isFavorite, String verifiedTitle, String companyTitle, bool isOwnerApartment, String publishedAt, String viewsText
});


@override $ApartamentModelCopyWith<$Res> get apartment;

}
/// @nodoc
class __$ApartamentStateCopyWithImpl<$Res>
    implements _$ApartamentStateCopyWith<$Res> {
  __$ApartamentStateCopyWithImpl(this._self, this._then);

  final _ApartamentState _self;
  final $Res Function(_ApartamentState) _then;

/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apartment = null,Object? page = null,Object? hasImages = null,Object? imagesCount = null,Object? isFavorite = null,Object? verifiedTitle = null,Object? companyTitle = null,Object? isOwnerApartment = null,Object? publishedAt = null,Object? viewsText = null,}) {
  return _then(_ApartamentState(
apartment: null == apartment ? _self.apartment : apartment // ignore: cast_nullable_to_non_nullable
as ApartamentModel,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasImages: null == hasImages ? _self.hasImages : hasImages // ignore: cast_nullable_to_non_nullable
as bool,imagesCount: null == imagesCount ? _self.imagesCount : imagesCount // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,verifiedTitle: null == verifiedTitle ? _self.verifiedTitle : verifiedTitle // ignore: cast_nullable_to_non_nullable
as String,companyTitle: null == companyTitle ? _self.companyTitle : companyTitle // ignore: cast_nullable_to_non_nullable
as String,isOwnerApartment: null == isOwnerApartment ? _self.isOwnerApartment : isOwnerApartment // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as String,viewsText: null == viewsText ? _self.viewsText : viewsText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ApartamentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApartamentModelCopyWith<$Res> get apartment {
  
  return $ApartamentModelCopyWith<$Res>(_self.apartment, (value) {
    return _then(_self.copyWith(apartment: value));
  });
}
}

// dart format on
