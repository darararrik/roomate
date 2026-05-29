// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_images_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadImagesResponseData {

@JsonKey(name: 'results') List<UploadedImageData> get results;
/// Create a copy of UploadImagesResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadImagesResponseDataCopyWith<UploadImagesResponseData> get copyWith => _$UploadImagesResponseDataCopyWithImpl<UploadImagesResponseData>(this as UploadImagesResponseData, _$identity);

  /// Serializes this UploadImagesResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadImagesResponseData&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'UploadImagesResponseData(results: $results)';
}


}

/// @nodoc
abstract mixin class $UploadImagesResponseDataCopyWith<$Res>  {
  factory $UploadImagesResponseDataCopyWith(UploadImagesResponseData value, $Res Function(UploadImagesResponseData) _then) = _$UploadImagesResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'results') List<UploadedImageData> results
});




}
/// @nodoc
class _$UploadImagesResponseDataCopyWithImpl<$Res>
    implements $UploadImagesResponseDataCopyWith<$Res> {
  _$UploadImagesResponseDataCopyWithImpl(this._self, this._then);

  final UploadImagesResponseData _self;
  final $Res Function(UploadImagesResponseData) _then;

/// Create a copy of UploadImagesResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<UploadedImageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadImagesResponseData].
extension UploadImagesResponseDataPatterns on UploadImagesResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadImagesResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadImagesResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadImagesResponseData value)  $default,){
final _that = this;
switch (_that) {
case _UploadImagesResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadImagesResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _UploadImagesResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'results')  List<UploadedImageData> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadImagesResponseData() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'results')  List<UploadedImageData> results)  $default,) {final _that = this;
switch (_that) {
case _UploadImagesResponseData():
return $default(_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'results')  List<UploadedImageData> results)?  $default,) {final _that = this;
switch (_that) {
case _UploadImagesResponseData() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UploadImagesResponseData implements UploadImagesResponseData {
  const _UploadImagesResponseData({@JsonKey(name: 'results') final  List<UploadedImageData> results = const <UploadedImageData>[]}): _results = results;
  factory _UploadImagesResponseData.fromJson(Map<String, dynamic> json) => _$UploadImagesResponseDataFromJson(json);

 final  List<UploadedImageData> _results;
@override@JsonKey(name: 'results') List<UploadedImageData> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of UploadImagesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadImagesResponseDataCopyWith<_UploadImagesResponseData> get copyWith => __$UploadImagesResponseDataCopyWithImpl<_UploadImagesResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadImagesResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadImagesResponseData&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'UploadImagesResponseData(results: $results)';
}


}

/// @nodoc
abstract mixin class _$UploadImagesResponseDataCopyWith<$Res> implements $UploadImagesResponseDataCopyWith<$Res> {
  factory _$UploadImagesResponseDataCopyWith(_UploadImagesResponseData value, $Res Function(_UploadImagesResponseData) _then) = __$UploadImagesResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'results') List<UploadedImageData> results
});




}
/// @nodoc
class __$UploadImagesResponseDataCopyWithImpl<$Res>
    implements _$UploadImagesResponseDataCopyWith<$Res> {
  __$UploadImagesResponseDataCopyWithImpl(this._self, this._then);

  final _UploadImagesResponseData _self;
  final $Res Function(_UploadImagesResponseData) _then;

/// Create a copy of UploadImagesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_UploadImagesResponseData(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<UploadedImageData>,
  ));
}


}


/// @nodoc
mixin _$UploadedImageData {

@JsonKey(name: 'original_file_name') String get originalFileName;@JsonKey(name: 'file_name') String? get fileName; String? get url;@JsonKey(name: 'content_type') String get contentType; int get size; bool get success; String? get error;
/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadedImageDataCopyWith<UploadedImageData> get copyWith => _$UploadedImageDataCopyWithImpl<UploadedImageData>(this as UploadedImageData, _$identity);

  /// Serializes this UploadedImageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadedImageData&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.url, url) || other.url == url)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalFileName,fileName,url,contentType,size,success,error);

@override
String toString() {
  return 'UploadedImageData(originalFileName: $originalFileName, fileName: $fileName, url: $url, contentType: $contentType, size: $size, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $UploadedImageDataCopyWith<$Res>  {
  factory $UploadedImageDataCopyWith(UploadedImageData value, $Res Function(UploadedImageData) _then) = _$UploadedImageDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'original_file_name') String originalFileName,@JsonKey(name: 'file_name') String? fileName, String? url,@JsonKey(name: 'content_type') String contentType, int size, bool success, String? error
});




}
/// @nodoc
class _$UploadedImageDataCopyWithImpl<$Res>
    implements $UploadedImageDataCopyWith<$Res> {
  _$UploadedImageDataCopyWithImpl(this._self, this._then);

  final UploadedImageData _self;
  final $Res Function(UploadedImageData) _then;

/// Create a copy of UploadedImageData
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


/// Adds pattern-matching-related methods to [UploadedImageData].
extension UploadedImageDataPatterns on UploadedImageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadedImageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadedImageData value)  $default,){
final _that = this;
switch (_that) {
case _UploadedImageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadedImageData value)?  $default,){
final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'original_file_name')  String originalFileName, @JsonKey(name: 'file_name')  String? fileName,  String? url, @JsonKey(name: 'content_type')  String contentType,  int size,  bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'original_file_name')  String originalFileName, @JsonKey(name: 'file_name')  String? fileName,  String? url, @JsonKey(name: 'content_type')  String contentType,  int size,  bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _UploadedImageData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'original_file_name')  String originalFileName, @JsonKey(name: 'file_name')  String? fileName,  String? url, @JsonKey(name: 'content_type')  String contentType,  int size,  bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _UploadedImageData() when $default != null:
return $default(_that.originalFileName,_that.fileName,_that.url,_that.contentType,_that.size,_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UploadedImageData implements UploadedImageData {
  const _UploadedImageData({@JsonKey(name: 'original_file_name') this.originalFileName = '', @JsonKey(name: 'file_name') this.fileName, this.url, @JsonKey(name: 'content_type') this.contentType = '', this.size = 0, this.success = false, this.error});
  factory _UploadedImageData.fromJson(Map<String, dynamic> json) => _$UploadedImageDataFromJson(json);

@override@JsonKey(name: 'original_file_name') final  String originalFileName;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override final  String? url;
@override@JsonKey(name: 'content_type') final  String contentType;
@override@JsonKey() final  int size;
@override@JsonKey() final  bool success;
@override final  String? error;

/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedImageDataCopyWith<_UploadedImageData> get copyWith => __$UploadedImageDataCopyWithImpl<_UploadedImageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadedImageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadedImageData&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.url, url) || other.url == url)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.size, size) || other.size == size)&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalFileName,fileName,url,contentType,size,success,error);

@override
String toString() {
  return 'UploadedImageData(originalFileName: $originalFileName, fileName: $fileName, url: $url, contentType: $contentType, size: $size, success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UploadedImageDataCopyWith<$Res> implements $UploadedImageDataCopyWith<$Res> {
  factory _$UploadedImageDataCopyWith(_UploadedImageData value, $Res Function(_UploadedImageData) _then) = __$UploadedImageDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'original_file_name') String originalFileName,@JsonKey(name: 'file_name') String? fileName, String? url,@JsonKey(name: 'content_type') String contentType, int size, bool success, String? error
});




}
/// @nodoc
class __$UploadedImageDataCopyWithImpl<$Res>
    implements _$UploadedImageDataCopyWith<$Res> {
  __$UploadedImageDataCopyWithImpl(this._self, this._then);

  final _UploadedImageData _self;
  final $Res Function(_UploadedImageData) _then;

/// Create a copy of UploadedImageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalFileName = null,Object? fileName = freezed,Object? url = freezed,Object? contentType = null,Object? size = null,Object? success = null,Object? error = freezed,}) {
  return _then(_UploadedImageData(
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
