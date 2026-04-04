// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryModel {

 int get id; String get title; bool get isDisabled;
/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<CategoryModel> get copyWith => _$CategoryModelCopyWithImpl<CategoryModel>(this as CategoryModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'CategoryModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class $CategoryModelCopyWith<$Res>  {
  factory $CategoryModelCopyWith(CategoryModel value, $Res Function(CategoryModel) _then) = _$CategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._self, this._then);

  final CategoryModel _self;
  final $Res Function(CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryModel].
extension CategoryModelPatterns on CategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)  $default,) {final _that = this;
switch (_that) {
case _CategoryModel():
return $default(_that.id,_that.title,_that.isDisabled);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool isDisabled)?  $default,) {final _that = this;
switch (_that) {
case _CategoryModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryModel extends CategoryModel {
  const _CategoryModel({this.id = 0, this.title = '', this.isDisabled = false}): super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool isDisabled;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryModelCopyWith<_CategoryModel> get copyWith => __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'CategoryModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class _$CategoryModelCopyWith<$Res> implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(_CategoryModel value, $Res Function(_CategoryModel) _then) = __$CategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(this._self, this._then);

  final _CategoryModel _self;
  final $Res Function(_CategoryModel) _then;

/// Create a copy of CategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_CategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PropertyTypeModel {

 int get id; String get title; bool get isDisabled;
/// Create a copy of PropertyTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyTypeModelCopyWith<PropertyTypeModel> get copyWith => _$PropertyTypeModelCopyWithImpl<PropertyTypeModel>(this as PropertyTypeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'PropertyTypeModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class $PropertyTypeModelCopyWith<$Res>  {
  factory $PropertyTypeModelCopyWith(PropertyTypeModel value, $Res Function(PropertyTypeModel) _then) = _$PropertyTypeModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class _$PropertyTypeModelCopyWithImpl<$Res>
    implements $PropertyTypeModelCopyWith<$Res> {
  _$PropertyTypeModelCopyWithImpl(this._self, this._then);

  final PropertyTypeModel _self;
  final $Res Function(PropertyTypeModel) _then;

/// Create a copy of PropertyTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyTypeModel].
extension PropertyTypeModelPatterns on PropertyTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _PropertyTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyTypeModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)  $default,) {final _that = this;
switch (_that) {
case _PropertyTypeModel():
return $default(_that.id,_that.title,_that.isDisabled);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool isDisabled)?  $default,) {final _that = this;
switch (_that) {
case _PropertyTypeModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
  return null;

}
}

}

/// @nodoc


class _PropertyTypeModel extends PropertyTypeModel {
  const _PropertyTypeModel({this.id = 0, this.title = '', this.isDisabled = false}): super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool isDisabled;

/// Create a copy of PropertyTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyTypeModelCopyWith<_PropertyTypeModel> get copyWith => __$PropertyTypeModelCopyWithImpl<_PropertyTypeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'PropertyTypeModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class _$PropertyTypeModelCopyWith<$Res> implements $PropertyTypeModelCopyWith<$Res> {
  factory _$PropertyTypeModelCopyWith(_PropertyTypeModel value, $Res Function(_PropertyTypeModel) _then) = __$PropertyTypeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class __$PropertyTypeModelCopyWithImpl<$Res>
    implements _$PropertyTypeModelCopyWith<$Res> {
  __$PropertyTypeModelCopyWithImpl(this._self, this._then);

  final _PropertyTypeModel _self;
  final $Res Function(_PropertyTypeModel) _then;

/// Create a copy of PropertyTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_PropertyTypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$RoomsCountModel {

 int get id; String get title; bool get isDisabled;
/// Create a copy of RoomsCountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomsCountModelCopyWith<RoomsCountModel> get copyWith => _$RoomsCountModelCopyWithImpl<RoomsCountModel>(this as RoomsCountModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomsCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'RoomsCountModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class $RoomsCountModelCopyWith<$Res>  {
  factory $RoomsCountModelCopyWith(RoomsCountModel value, $Res Function(RoomsCountModel) _then) = _$RoomsCountModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class _$RoomsCountModelCopyWithImpl<$Res>
    implements $RoomsCountModelCopyWith<$Res> {
  _$RoomsCountModelCopyWithImpl(this._self, this._then);

  final RoomsCountModel _self;
  final $Res Function(RoomsCountModel) _then;

/// Create a copy of RoomsCountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomsCountModel].
extension RoomsCountModelPatterns on RoomsCountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomsCountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomsCountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomsCountModel value)  $default,){
final _that = this;
switch (_that) {
case _RoomsCountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomsCountModel value)?  $default,){
final _that = this;
switch (_that) {
case _RoomsCountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomsCountModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool isDisabled)  $default,) {final _that = this;
switch (_that) {
case _RoomsCountModel():
return $default(_that.id,_that.title,_that.isDisabled);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool isDisabled)?  $default,) {final _that = this;
switch (_that) {
case _RoomsCountModel() when $default != null:
return $default(_that.id,_that.title,_that.isDisabled);case _:
  return null;

}
}

}

/// @nodoc


class _RoomsCountModel extends RoomsCountModel {
  const _RoomsCountModel({this.id = 0, this.title = '', this.isDisabled = false}): super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool isDisabled;

/// Create a copy of RoomsCountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomsCountModelCopyWith<_RoomsCountModel> get copyWith => __$RoomsCountModelCopyWithImpl<_RoomsCountModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,isDisabled);

@override
String toString() {
  return 'RoomsCountModel(id: $id, title: $title, isDisabled: $isDisabled)';
}


}

/// @nodoc
abstract mixin class _$RoomsCountModelCopyWith<$Res> implements $RoomsCountModelCopyWith<$Res> {
  factory _$RoomsCountModelCopyWith(_RoomsCountModel value, $Res Function(_RoomsCountModel) _then) = __$RoomsCountModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isDisabled
});




}
/// @nodoc
class __$RoomsCountModelCopyWithImpl<$Res>
    implements _$RoomsCountModelCopyWith<$Res> {
  __$RoomsCountModelCopyWithImpl(this._self, this._then);

  final _RoomsCountModel _self;
  final $Res Function(_RoomsCountModel) _then;

/// Create a copy of RoomsCountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isDisabled = null,}) {
  return _then(_RoomsCountModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDisabled: null == isDisabled ? _self.isDisabled : isDisabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$FilterModel {

 List<CategoryModel> get categories; List<PropertyTypeModel> get propertyTypes; List<RoomsCountModel> get roomsCounts;
/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterModelCopyWith<FilterModel> get copyWith => _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterModel&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.propertyTypes, propertyTypes)&&const DeepCollectionEquality().equals(other.roomsCounts, roomsCounts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(propertyTypes),const DeepCollectionEquality().hash(roomsCounts));

@override
String toString() {
  return 'FilterModel(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res>  {
  factory $FilterModelCopyWith(FilterModel value, $Res Function(FilterModel) _then) = _$FilterModelCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories, List<PropertyTypeModel> propertyTypes, List<RoomsCountModel> roomsCounts
});




}
/// @nodoc
class _$FilterModelCopyWithImpl<$Res>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._self, this._then);

  final FilterModel _self;
  final $Res Function(FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? propertyTypes = null,Object? roomsCounts = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,propertyTypes: null == propertyTypes ? _self.propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<PropertyTypeModel>,roomsCounts: null == roomsCounts ? _self.roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<RoomsCountModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterModel].
extension FilterModelPatterns on FilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  List<PropertyTypeModel> propertyTypes,  List<RoomsCountModel> roomsCounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  List<PropertyTypeModel> propertyTypes,  List<RoomsCountModel> roomsCounts)  $default,) {final _that = this;
switch (_that) {
case _FilterModel():
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> categories,  List<PropertyTypeModel> propertyTypes,  List<RoomsCountModel> roomsCounts)?  $default,) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.categories,_that.propertyTypes,_that.roomsCounts);case _:
  return null;

}
}

}

/// @nodoc


class _FilterModel implements FilterModel {
  const _FilterModel({final  List<CategoryModel> categories = const [], final  List<PropertyTypeModel> propertyTypes = const [], final  List<RoomsCountModel> roomsCounts = const []}): _categories = categories,_propertyTypes = propertyTypes,_roomsCounts = roomsCounts;
  

 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<PropertyTypeModel> _propertyTypes;
@override@JsonKey() List<PropertyTypeModel> get propertyTypes {
  if (_propertyTypes is EqualUnmodifiableListView) return _propertyTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyTypes);
}

 final  List<RoomsCountModel> _roomsCounts;
@override@JsonKey() List<RoomsCountModel> get roomsCounts {
  if (_roomsCounts is EqualUnmodifiableListView) return _roomsCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roomsCounts);
}


/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterModelCopyWith<_FilterModel> get copyWith => __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterModel&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._propertyTypes, _propertyTypes)&&const DeepCollectionEquality().equals(other._roomsCounts, _roomsCounts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_propertyTypes),const DeepCollectionEquality().hash(_roomsCounts));

@override
String toString() {
  return 'FilterModel(categories: $categories, propertyTypes: $propertyTypes, roomsCounts: $roomsCounts)';
}


}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res> implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(_FilterModel value, $Res Function(_FilterModel) _then) = __$FilterModelCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories, List<PropertyTypeModel> propertyTypes, List<RoomsCountModel> roomsCounts
});




}
/// @nodoc
class __$FilterModelCopyWithImpl<$Res>
    implements _$FilterModelCopyWith<$Res> {
  __$FilterModelCopyWithImpl(this._self, this._then);

  final _FilterModel _self;
  final $Res Function(_FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? propertyTypes = null,Object? roomsCounts = null,}) {
  return _then(_FilterModel(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,propertyTypes: null == propertyTypes ? _self._propertyTypes : propertyTypes // ignore: cast_nullable_to_non_nullable
as List<PropertyTypeModel>,roomsCounts: null == roomsCounts ? _self._roomsCounts : roomsCounts // ignore: cast_nullable_to_non_nullable
as List<RoomsCountModel>,
  ));
}


}

// dart format on
