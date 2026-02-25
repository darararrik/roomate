// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_field_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AdFieldDto _$AdFieldDtoFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'tag_group':
          return _TagGroupDto.fromJson(
            json
          );
                case 'input':
          return _InputDto.fromJson(
            json
          );
                case 'address':
          return _AddressDto.fromJson(
            json
          );
                case 'media':
          return _MediaDto.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'AdFieldDto',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$AdFieldDto {

 String get id; String get title; String? get description;
/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdFieldDtoCopyWith<AdFieldDto> get copyWith => _$AdFieldDtoCopyWithImpl<AdFieldDto>(this as AdFieldDto, _$identity);

  /// Serializes this AdFieldDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdFieldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description);

@override
String toString() {
  return 'AdFieldDto(id: $id, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $AdFieldDtoCopyWith<$Res>  {
  factory $AdFieldDtoCopyWith(AdFieldDto value, $Res Function(AdFieldDto) _then) = _$AdFieldDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description
});




}
/// @nodoc
class _$AdFieldDtoCopyWithImpl<$Res>
    implements $AdFieldDtoCopyWith<$Res> {
  _$AdFieldDtoCopyWithImpl(this._self, this._then);

  final AdFieldDto _self;
  final $Res Function(AdFieldDto) _then;

/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdFieldDto].
extension AdFieldDtoPatterns on AdFieldDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TagGroupDto value)?  tagGroup,TResult Function( _InputDto value)?  input,TResult Function( _AddressDto value)?  address,TResult Function( _MediaDto value)?  media,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagGroupDto() when tagGroup != null:
return tagGroup(_that);case _InputDto() when input != null:
return input(_that);case _AddressDto() when address != null:
return address(_that);case _MediaDto() when media != null:
return media(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TagGroupDto value)  tagGroup,required TResult Function( _InputDto value)  input,required TResult Function( _AddressDto value)  address,required TResult Function( _MediaDto value)  media,}){
final _that = this;
switch (_that) {
case _TagGroupDto():
return tagGroup(_that);case _InputDto():
return input(_that);case _AddressDto():
return address(_that);case _MediaDto():
return media(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TagGroupDto value)?  tagGroup,TResult? Function( _InputDto value)?  input,TResult? Function( _AddressDto value)?  address,TResult? Function( _MediaDto value)?  media,}){
final _that = this;
switch (_that) {
case _TagGroupDto() when tagGroup != null:
return tagGroup(_that);case _InputDto() when input != null:
return input(_that);case _AddressDto() when address != null:
return address(_that);case _MediaDto() when media != null:
return media(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String title,  String? description,  List<String> tags,  bool isRadio)?  tagGroup,TResult Function( String id,  String title,  String? description,  String hintText,  bool isNumeric,  String? suffix)?  input,TResult Function( String id,  String title,  String? description)?  address,TResult Function( String id,  String title,  String? description,  bool isPhoto)?  media,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagGroupDto() when tagGroup != null:
return tagGroup(_that.id,_that.title,_that.description,_that.tags,_that.isRadio);case _InputDto() when input != null:
return input(_that.id,_that.title,_that.description,_that.hintText,_that.isNumeric,_that.suffix);case _AddressDto() when address != null:
return address(_that.id,_that.title,_that.description);case _MediaDto() when media != null:
return media(_that.id,_that.title,_that.description,_that.isPhoto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String title,  String? description,  List<String> tags,  bool isRadio)  tagGroup,required TResult Function( String id,  String title,  String? description,  String hintText,  bool isNumeric,  String? suffix)  input,required TResult Function( String id,  String title,  String? description)  address,required TResult Function( String id,  String title,  String? description,  bool isPhoto)  media,}) {final _that = this;
switch (_that) {
case _TagGroupDto():
return tagGroup(_that.id,_that.title,_that.description,_that.tags,_that.isRadio);case _InputDto():
return input(_that.id,_that.title,_that.description,_that.hintText,_that.isNumeric,_that.suffix);case _AddressDto():
return address(_that.id,_that.title,_that.description);case _MediaDto():
return media(_that.id,_that.title,_that.description,_that.isPhoto);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String title,  String? description,  List<String> tags,  bool isRadio)?  tagGroup,TResult? Function( String id,  String title,  String? description,  String hintText,  bool isNumeric,  String? suffix)?  input,TResult? Function( String id,  String title,  String? description)?  address,TResult? Function( String id,  String title,  String? description,  bool isPhoto)?  media,}) {final _that = this;
switch (_that) {
case _TagGroupDto() when tagGroup != null:
return tagGroup(_that.id,_that.title,_that.description,_that.tags,_that.isRadio);case _InputDto() when input != null:
return input(_that.id,_that.title,_that.description,_that.hintText,_that.isNumeric,_that.suffix);case _AddressDto() when address != null:
return address(_that.id,_that.title,_that.description);case _MediaDto() when media != null:
return media(_that.id,_that.title,_that.description,_that.isPhoto);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TagGroupDto implements AdFieldDto {
  const _TagGroupDto({required this.id, required this.title, this.description, required final  List<String> tags, this.isRadio = false, final  String? $type}): _tags = tags,$type = $type ?? 'tag_group';
  factory _TagGroupDto.fromJson(Map<String, dynamic> json) => _$TagGroupDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
 final  List<String> _tags;
 List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@JsonKey() final  bool isRadio;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagGroupDtoCopyWith<_TagGroupDto> get copyWith => __$TagGroupDtoCopyWithImpl<_TagGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagGroupDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isRadio, isRadio) || other.isRadio == isRadio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_tags),isRadio);

@override
String toString() {
  return 'AdFieldDto.tagGroup(id: $id, title: $title, description: $description, tags: $tags, isRadio: $isRadio)';
}


}

/// @nodoc
abstract mixin class _$TagGroupDtoCopyWith<$Res> implements $AdFieldDtoCopyWith<$Res> {
  factory _$TagGroupDtoCopyWith(_TagGroupDto value, $Res Function(_TagGroupDto) _then) = __$TagGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, List<String> tags, bool isRadio
});




}
/// @nodoc
class __$TagGroupDtoCopyWithImpl<$Res>
    implements _$TagGroupDtoCopyWith<$Res> {
  __$TagGroupDtoCopyWithImpl(this._self, this._then);

  final _TagGroupDto _self;
  final $Res Function(_TagGroupDto) _then;

/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? tags = null,Object? isRadio = null,}) {
  return _then(_TagGroupDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isRadio: null == isRadio ? _self.isRadio : isRadio // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _InputDto implements AdFieldDto {
  const _InputDto({required this.id, required this.title, this.description, required this.hintText, this.isNumeric = false, this.suffix, final  String? $type}): $type = $type ?? 'input';
  factory _InputDto.fromJson(Map<String, dynamic> json) => _$InputDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
 final  String hintText;
@JsonKey() final  bool isNumeric;
 final  String? suffix;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputDtoCopyWith<_InputDto> get copyWith => __$InputDtoCopyWithImpl<_InputDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.isNumeric, isNumeric) || other.isNumeric == isNumeric)&&(identical(other.suffix, suffix) || other.suffix == suffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,hintText,isNumeric,suffix);

@override
String toString() {
  return 'AdFieldDto.input(id: $id, title: $title, description: $description, hintText: $hintText, isNumeric: $isNumeric, suffix: $suffix)';
}


}

/// @nodoc
abstract mixin class _$InputDtoCopyWith<$Res> implements $AdFieldDtoCopyWith<$Res> {
  factory _$InputDtoCopyWith(_InputDto value, $Res Function(_InputDto) _then) = __$InputDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String hintText, bool isNumeric, String? suffix
});




}
/// @nodoc
class __$InputDtoCopyWithImpl<$Res>
    implements _$InputDtoCopyWith<$Res> {
  __$InputDtoCopyWithImpl(this._self, this._then);

  final _InputDto _self;
  final $Res Function(_InputDto) _then;

/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? hintText = null,Object? isNumeric = null,Object? suffix = freezed,}) {
  return _then(_InputDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,hintText: null == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String,isNumeric: null == isNumeric ? _self.isNumeric : isNumeric // ignore: cast_nullable_to_non_nullable
as bool,suffix: freezed == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AddressDto implements AdFieldDto {
  const _AddressDto({required this.id, required this.title, this.description, final  String? $type}): $type = $type ?? 'address';
  factory _AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDtoCopyWith<_AddressDto> get copyWith => __$AddressDtoCopyWithImpl<_AddressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description);

@override
String toString() {
  return 'AdFieldDto.address(id: $id, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AddressDtoCopyWith<$Res> implements $AdFieldDtoCopyWith<$Res> {
  factory _$AddressDtoCopyWith(_AddressDto value, $Res Function(_AddressDto) _then) = __$AddressDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description
});




}
/// @nodoc
class __$AddressDtoCopyWithImpl<$Res>
    implements _$AddressDtoCopyWith<$Res> {
  __$AddressDtoCopyWithImpl(this._self, this._then);

  final _AddressDto _self;
  final $Res Function(_AddressDto) _then;

/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,}) {
  return _then(_AddressDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MediaDto implements AdFieldDto {
  const _MediaDto({required this.id, required this.title, this.description, required this.isPhoto, final  String? $type}): $type = $type ?? 'media';
  factory _MediaDto.fromJson(Map<String, dynamic> json) => _$MediaDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
 final  bool isPhoto;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaDtoCopyWith<_MediaDto> get copyWith => __$MediaDtoCopyWithImpl<_MediaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isPhoto, isPhoto) || other.isPhoto == isPhoto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,isPhoto);

@override
String toString() {
  return 'AdFieldDto.media(id: $id, title: $title, description: $description, isPhoto: $isPhoto)';
}


}

/// @nodoc
abstract mixin class _$MediaDtoCopyWith<$Res> implements $AdFieldDtoCopyWith<$Res> {
  factory _$MediaDtoCopyWith(_MediaDto value, $Res Function(_MediaDto) _then) = __$MediaDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, bool isPhoto
});




}
/// @nodoc
class __$MediaDtoCopyWithImpl<$Res>
    implements _$MediaDtoCopyWith<$Res> {
  __$MediaDtoCopyWithImpl(this._self, this._then);

  final _MediaDto _self;
  final $Res Function(_MediaDto) _then;

/// Create a copy of AdFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? isPhoto = null,}) {
  return _then(_MediaDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isPhoto: null == isPhoto ? _self.isPhoto : isPhoto // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
