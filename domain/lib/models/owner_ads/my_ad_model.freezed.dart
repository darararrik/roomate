// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAdModel {

 String get id; String get title; String get description; List<String> get imageUrls; String get price; String get roomsCount; String get area; int get floor; int get totalFloor; String get address; MyAdStatus get status;
/// Create a copy of MyAdModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAdModelCopyWith<MyAdModel> get copyWith => _$MyAdModelCopyWithImpl<MyAdModel>(this as MyAdModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(imageUrls),price,roomsCount,area,floor,totalFloor,address,status);

@override
String toString() {
  return 'MyAdModel(id: $id, title: $title, description: $description, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class $MyAdModelCopyWith<$Res>  {
  factory $MyAdModelCopyWith(MyAdModel value, $Res Function(MyAdModel) _then) = _$MyAdModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, List<String> imageUrls, String price, String roomsCount, String area, int floor, int totalFloor, String address, MyAdStatus status
});




}
/// @nodoc
class _$MyAdModelCopyWithImpl<$Res>
    implements $MyAdModelCopyWith<$Res> {
  _$MyAdModelCopyWithImpl(this._self, this._then);

  final MyAdModel _self;
  final $Res Function(MyAdModel) _then;

/// Create a copy of MyAdModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrls = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MyAdStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAdModel].
extension MyAdModelPatterns on MyAdModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAdModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAdModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAdModel value)  $default,){
final _that = this;
switch (_that) {
case _MyAdModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAdModel value)?  $default,){
final _that = this;
switch (_that) {
case _MyAdModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  MyAdStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAdModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  MyAdStatus status)  $default,) {final _that = this;
switch (_that) {
case _MyAdModel():
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address,  MyAdStatus status)?  $default,) {final _that = this;
switch (_that) {
case _MyAdModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _MyAdModel implements MyAdModel {
  const _MyAdModel({this.id = '', this.title = '', this.description = '', final  List<String> imageUrls = const <String>[], this.price = '', this.roomsCount = '', this.area = '', this.floor = 0, this.totalFloor = 0, this.address = '', this.status = MyAdStatus.unknown}): _imageUrls = imageUrls;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override@JsonKey() final  String price;
@override@JsonKey() final  String roomsCount;
@override@JsonKey() final  String area;
@override@JsonKey() final  int floor;
@override@JsonKey() final  int totalFloor;
@override@JsonKey() final  String address;
@override@JsonKey() final  MyAdStatus status;

/// Create a copy of MyAdModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAdModelCopyWith<_MyAdModel> get copyWith => __$MyAdModelCopyWithImpl<_MyAdModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_imageUrls),price,roomsCount,area,floor,totalFloor,address,status);

@override
String toString() {
  return 'MyAdModel(id: $id, title: $title, description: $description, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MyAdModelCopyWith<$Res> implements $MyAdModelCopyWith<$Res> {
  factory _$MyAdModelCopyWith(_MyAdModel value, $Res Function(_MyAdModel) _then) = __$MyAdModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, List<String> imageUrls, String price, String roomsCount, String area, int floor, int totalFloor, String address, MyAdStatus status
});




}
/// @nodoc
class __$MyAdModelCopyWithImpl<$Res>
    implements _$MyAdModelCopyWith<$Res> {
  __$MyAdModelCopyWithImpl(this._self, this._then);

  final _MyAdModel _self;
  final $Res Function(_MyAdModel) _then;

/// Create a copy of MyAdModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrls = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,Object? status = null,}) {
  return _then(_MyAdModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MyAdStatus,
  ));
}


}

// dart format on
