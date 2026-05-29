// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploaded_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadedImageModel {

 String get originalFileName; String? get fileName; String? get url; String get contentType; int get size; bool get success; String? get error;
/// Create a copy of UploadedImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadedImageModelCopyWith<UploadedImageModel> get copyWith => _$UploadedImageModelCopyWithImpl<UploadedImageModel>(this as UploadedImageModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadedImageModel&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.url, url) || other.url == url)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,originalFileName,fileName,url,contentType,size,success,error);

@override
String toString() {
  return 'UploadedImageModel(originalFileName: $originalFileName, fileName: $fileName, url: $url, contentType: $contentType, size: $size, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $UploadedImageModelCopyWith<$Res>  {
  factory $UploadedImageModelCopyWith(UploadedImageModel value, $Res Function(UploadedImageModel) _then) = _$UploadedImageModelCopyWithImpl;
@useResult
$Res call({
 String originalFileName, String? fileName, String? url, String contentType, int size, bool success, String? error
});




}
/// @nodoc
class _$UploadedImageModelCopyWithImpl<$Res>
    implements $UploadedImageModelCopyWith<$Res> {
  _$UploadedImageModelCopyWithImpl(this._self, this._then);

  final UploadedImageModel _self;
  final $Res Function(UploadedImageModel) _then;

/// Create a copy of UploadedImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalFileName = null,Object? fileName = freezed,Object? url = freezed,Object? contentType = null,Object? size = null,Object? success = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadedImageModel].
extension UploadedImageModelPatterns on UploadedImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadedImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadedImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadedImageModel value)  $default,){
final _that = this;
switch (_that) {
case _UploadedImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadedImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _UploadedImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String originalFileName,  String? fileName,  String? url,  String contentType,  int size,  bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadedImageModel() when $default != null:
return $default(_that.originalFileName,_that.fileName,_that.url,_that.contentType,_that.size,_that.success,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String originalFileName,  String? fileName,  String? url,  String contentType,  int size,  bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _UploadedImageModel():
return $default(_that.originalFileName,_that.fileName,_that.url,_that.contentType,_that.size,_that.success,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String originalFileName,  String? fileName,  String? url,  String contentType,  int size,  bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _UploadedImageModel() when $default != null:
return $default(_that.originalFileName,_that.fileName,_that.url,_that.contentType,_that.size,_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UploadedImageModel implements UploadedImageModel {
  const _UploadedImageModel({this.originalFileName = '', this.fileName, this.url, this.contentType = '', this.size = 0, this.success = false, this.error});
  

@override@JsonKey() final  String originalFileName;
@override final  String? fileName;
@override final  String? url;
@override@JsonKey() final  String contentType;
@override@JsonKey() final  int size;
@override@JsonKey() final  bool success;
@override final  String? error;

/// Create a copy of UploadedImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedImageModelCopyWith<_UploadedImageModel> get copyWith => __$UploadedImageModelCopyWithImpl<_UploadedImageModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadedImageModel&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.url, url) || other.url == url)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,originalFileName,fileName,url,contentType,size,success,error);

@override
String toString() {
  return 'UploadedImageModel(originalFileName: $originalFileName, fileName: $fileName, url: $url, contentType: $contentType, size: $size, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UploadedImageModelCopyWith<$Res> implements $UploadedImageModelCopyWith<$Res> {
  factory _$UploadedImageModelCopyWith(_UploadedImageModel value, $Res Function(_UploadedImageModel) _then) = __$UploadedImageModelCopyWithImpl;
@override @useResult
$Res call({
 String originalFileName, String? fileName, String? url, String contentType, int size, bool success, String? error
});




}
/// @nodoc
class __$UploadedImageModelCopyWithImpl<$Res>
    implements _$UploadedImageModelCopyWith<$Res> {
  __$UploadedImageModelCopyWithImpl(this._self, this._then);

  final _UploadedImageModel _self;
  final $Res Function(_UploadedImageModel) _then;

/// Create a copy of UploadedImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalFileName = null,Object? fileName = freezed,Object? url = freezed,Object? contentType = null,Object? size = null,Object? success = null,Object? error = freezed,}) {
  return _then(_UploadedImageModel(
originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
