// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_ad_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyAdData {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'image_urls') List<String> get imageUrls;@JsonKey(name: 'price') String get price;@JsonKey(name: 'rooms_count') String get roomsCount;@JsonKey(name: 'area') String get area;@JsonKey(name: 'floor') int get floor;@JsonKey(name: 'total_floor') int get totalFloor;@JsonKey(name: 'address') String get address;@JsonKey(name: 'status') String get status;
/// Create a copy of MyAdData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAdDataCopyWith<MyAdData> get copyWith => _$MyAdDataCopyWithImpl<MyAdData>(this as MyAdData, _$identity);

  /// Serializes this MyAdData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAdData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(imageUrls),price,roomsCount,area,floor,totalFloor,address,status);

@override
String toString() {
  return 'MyAdData(id: $id, title: $title, description: $description, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class $MyAdDataCopyWith<$Res>  {
  factory $MyAdDataCopyWith(MyAdData value, $Res Function(MyAdData) _then) = _$MyAdDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'image_urls') List<String> imageUrls,@JsonKey(name: 'price') String price,@JsonKey(name: 'rooms_count') String roomsCount,@JsonKey(name: 'area') String area,@JsonKey(name: 'floor') int floor,@JsonKey(name: 'total_floor') int totalFloor,@JsonKey(name: 'address') String address,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class _$MyAdDataCopyWithImpl<$Res>
    implements $MyAdDataCopyWith<$Res> {
  _$MyAdDataCopyWithImpl(this._self, this._then);

  final MyAdData _self;
  final $Res Function(MyAdData) _then;

/// Create a copy of MyAdData
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
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAdData].
extension MyAdDataPatterns on MyAdData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAdData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAdData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAdData value)  $default,){
final _that = this;
switch (_that) {
case _MyAdData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAdData value)?  $default,){
final _that = this;
switch (_that) {
case _MyAdData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'image_urls')  List<String> imageUrls, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address, @JsonKey(name: 'status')  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAdData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'image_urls')  List<String> imageUrls, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address, @JsonKey(name: 'status')  String status)  $default,) {final _that = this;
switch (_that) {
case _MyAdData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'image_urls')  List<String> imageUrls, @JsonKey(name: 'price')  String price, @JsonKey(name: 'rooms_count')  String roomsCount, @JsonKey(name: 'area')  String area, @JsonKey(name: 'floor')  int floor, @JsonKey(name: 'total_floor')  int totalFloor, @JsonKey(name: 'address')  String address, @JsonKey(name: 'status')  String status)?  $default,) {final _that = this;
switch (_that) {
case _MyAdData() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyAdData implements MyAdData {
  const _MyAdData({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'image_urls') final  List<String> imageUrls = const <String>[], @JsonKey(name: 'price') this.price = '', @JsonKey(name: 'rooms_count') this.roomsCount = '', @JsonKey(name: 'area') this.area = '', @JsonKey(name: 'floor') this.floor = 0, @JsonKey(name: 'total_floor') this.totalFloor = 0, @JsonKey(name: 'address') this.address = '', @JsonKey(name: 'status') this.status = ''}): _imageUrls = imageUrls;
  factory _MyAdData.fromJson(Map<String, dynamic> json) => _$MyAdDataFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
 final  List<String> _imageUrls;
@override@JsonKey(name: 'image_urls') List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override@JsonKey(name: 'price') final  String price;
@override@JsonKey(name: 'rooms_count') final  String roomsCount;
@override@JsonKey(name: 'area') final  String area;
@override@JsonKey(name: 'floor') final  int floor;
@override@JsonKey(name: 'total_floor') final  int totalFloor;
@override@JsonKey(name: 'address') final  String address;
@override@JsonKey(name: 'status') final  String status;

/// Create a copy of MyAdData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAdDataCopyWith<_MyAdData> get copyWith => __$MyAdDataCopyWithImpl<_MyAdData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyAdDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAdData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_imageUrls),price,roomsCount,area,floor,totalFloor,address,status);

@override
String toString() {
  return 'MyAdData(id: $id, title: $title, description: $description, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MyAdDataCopyWith<$Res> implements $MyAdDataCopyWith<$Res> {
  factory _$MyAdDataCopyWith(_MyAdData value, $Res Function(_MyAdData) _then) = __$MyAdDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'image_urls') List<String> imageUrls,@JsonKey(name: 'price') String price,@JsonKey(name: 'rooms_count') String roomsCount,@JsonKey(name: 'area') String area,@JsonKey(name: 'floor') int floor,@JsonKey(name: 'total_floor') int totalFloor,@JsonKey(name: 'address') String address,@JsonKey(name: 'status') String status
});




}
/// @nodoc
class __$MyAdDataCopyWithImpl<$Res>
    implements _$MyAdDataCopyWith<$Res> {
  __$MyAdDataCopyWithImpl(this._self, this._then);

  final _MyAdData _self;
  final $Res Function(_MyAdData) _then;

/// Create a copy of MyAdData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? imageUrls = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,Object? status = null,}) {
  return _then(_MyAdData(
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
as String,
  ));
}


}

// dart format on
