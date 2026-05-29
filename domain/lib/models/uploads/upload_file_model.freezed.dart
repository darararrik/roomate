// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadFileModel {

 String get path; String? get fileName; String? get contentType;
/// Create a copy of UploadFileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadFileModelCopyWith<UploadFileModel> get copyWith => _$UploadFileModelCopyWithImpl<UploadFileModel>(this as UploadFileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadFileModel&&(identical(other.path, path) || other.path == path)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}


@override
int get hashCode => Object.hash(runtimeType,path,fileName,contentType);

@override
String toString() {
  return 'UploadFileModel(path: $path, fileName: $fileName, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $UploadFileModelCopyWith<$Res>  {
  factory $UploadFileModelCopyWith(UploadFileModel value, $Res Function(UploadFileModel) _then) = _$UploadFileModelCopyWithImpl;
@useResult
$Res call({
 String path, String? fileName, String? contentType
});




}
/// @nodoc
class _$UploadFileModelCopyWithImpl<$Res>
    implements $UploadFileModelCopyWith<$Res> {
  _$UploadFileModelCopyWithImpl(this._self, this._then);

  final UploadFileModel _self;
  final $Res Function(UploadFileModel) _then;

/// Create a copy of UploadFileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? fileName = freezed,Object? contentType = freezed,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadFileModel].
extension UploadFileModelPatterns on UploadFileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadFileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadFileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadFileModel value)  $default,){
final _that = this;
switch (_that) {
case _UploadFileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadFileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UploadFileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String? fileName,  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadFileModel() when $default != null:
return $default(_that.path,_that.fileName,_that.contentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String? fileName,  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _UploadFileModel():
return $default(_that.path,_that.fileName,_that.contentType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String? fileName,  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _UploadFileModel() when $default != null:
return $default(_that.path,_that.fileName,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc


class _UploadFileModel implements UploadFileModel {
  const _UploadFileModel({this.path = '', this.fileName, this.contentType});
  

@override@JsonKey() final  String path;
@override final  String? fileName;
@override final  String? contentType;

/// Create a copy of UploadFileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadFileModelCopyWith<_UploadFileModel> get copyWith => __$UploadFileModelCopyWithImpl<_UploadFileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadFileModel&&(identical(other.path, path) || other.path == path)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}


@override
int get hashCode => Object.hash(runtimeType,path,fileName,contentType);

@override
String toString() {
  return 'UploadFileModel(path: $path, fileName: $fileName, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$UploadFileModelCopyWith<$Res> implements $UploadFileModelCopyWith<$Res> {
  factory _$UploadFileModelCopyWith(_UploadFileModel value, $Res Function(_UploadFileModel) _then) = __$UploadFileModelCopyWithImpl;
@override @useResult
$Res call({
 String path, String? fileName, String? contentType
});




}
/// @nodoc
class __$UploadFileModelCopyWithImpl<$Res>
    implements _$UploadFileModelCopyWith<$Res> {
  __$UploadFileModelCopyWithImpl(this._self, this._then);

  final _UploadFileModel _self;
  final $Res Function(_UploadFileModel) _then;

/// Create a copy of UploadFileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? fileName = freezed,Object? contentType = freezed,}) {
  return _then(_UploadFileModel(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
