// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apartament_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApartamentPreviewModel {

 String get id; List<String> get imageUrls; String get price; String get roomsCount; String get area; int get floor; int get totalFloor; String get address;
/// Create a copy of ApartamentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApartamentPreviewModelCopyWith<ApartamentPreviewModel> get copyWith => _$ApartamentPreviewModelCopyWithImpl<ApartamentPreviewModel>(this as ApartamentPreviewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApartamentPreviewModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(imageUrls),price,roomsCount,area,floor,totalFloor,address);

@override
String toString() {
  return 'ApartamentPreviewModel(id: $id, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address)';
}


}

/// @nodoc
abstract mixin class $ApartamentPreviewModelCopyWith<$Res>  {
  factory $ApartamentPreviewModelCopyWith(ApartamentPreviewModel value, $Res Function(ApartamentPreviewModel) _then) = _$ApartamentPreviewModelCopyWithImpl;
@useResult
$Res call({
 String id, List<String> imageUrls, String price, String roomsCount, String area, int floor, int totalFloor, String address
});




}
/// @nodoc
class _$ApartamentPreviewModelCopyWithImpl<$Res>
    implements $ApartamentPreviewModelCopyWith<$Res> {
  _$ApartamentPreviewModelCopyWithImpl(this._self, this._then);

  final ApartamentPreviewModel _self;
  final $Res Function(ApartamentPreviewModel) _then;

/// Create a copy of ApartamentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrls = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApartamentPreviewModel].
extension ApartamentPreviewModelPatterns on ApartamentPreviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApartamentPreviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApartamentPreviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApartamentPreviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ApartamentPreviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApartamentPreviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApartamentPreviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApartamentPreviewModel() when $default != null:
return $default(_that.id,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address)  $default,) {final _that = this;
switch (_that) {
case _ApartamentPreviewModel():
return $default(_that.id,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> imageUrls,  String price,  String roomsCount,  String area,  int floor,  int totalFloor,  String address)?  $default,) {final _that = this;
switch (_that) {
case _ApartamentPreviewModel() when $default != null:
return $default(_that.id,_that.imageUrls,_that.price,_that.roomsCount,_that.area,_that.floor,_that.totalFloor,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _ApartamentPreviewModel implements ApartamentPreviewModel {
  const _ApartamentPreviewModel({this.id = '', final  List<String> imageUrls = const [], this.price = '', this.roomsCount = '', this.area = '', this.floor = 0, this.totalFloor = 0, this.address = ''}): _imageUrls = imageUrls;
  

@override@JsonKey() final  String id;
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

/// Create a copy of ApartamentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApartamentPreviewModelCopyWith<_ApartamentPreviewModel> get copyWith => __$ApartamentPreviewModelCopyWithImpl<_ApartamentPreviewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApartamentPreviewModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.price, price) || other.price == price)&&(identical(other.roomsCount, roomsCount) || other.roomsCount == roomsCount)&&(identical(other.area, area) || other.area == area)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloor, totalFloor) || other.totalFloor == totalFloor)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_imageUrls),price,roomsCount,area,floor,totalFloor,address);

@override
String toString() {
  return 'ApartamentPreviewModel(id: $id, imageUrls: $imageUrls, price: $price, roomsCount: $roomsCount, area: $area, floor: $floor, totalFloor: $totalFloor, address: $address)';
}


}

/// @nodoc
abstract mixin class _$ApartamentPreviewModelCopyWith<$Res> implements $ApartamentPreviewModelCopyWith<$Res> {
  factory _$ApartamentPreviewModelCopyWith(_ApartamentPreviewModel value, $Res Function(_ApartamentPreviewModel) _then) = __$ApartamentPreviewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> imageUrls, String price, String roomsCount, String area, int floor, int totalFloor, String address
});




}
/// @nodoc
class __$ApartamentPreviewModelCopyWithImpl<$Res>
    implements _$ApartamentPreviewModelCopyWith<$Res> {
  __$ApartamentPreviewModelCopyWithImpl(this._self, this._then);

  final _ApartamentPreviewModel _self;
  final $Res Function(_ApartamentPreviewModel) _then;

/// Create a copy of ApartamentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrls = null,Object? price = null,Object? roomsCount = null,Object? area = null,Object? floor = null,Object? totalFloor = null,Object? address = null,}) {
  return _then(_ApartamentPreviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloor: null == totalFloor ? _self.totalFloor : totalFloor // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
