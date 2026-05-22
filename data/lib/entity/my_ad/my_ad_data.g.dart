// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_ad_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyAdData _$MyAdDataFromJson(Map<String, dynamic> json) => _MyAdData(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  imageUrls:
      (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  price: json['price'] as String? ?? '',
  roomsCount: json['rooms_count'] as String? ?? '',
  area: json['area'] as String? ?? '',
  floor: (json['floor'] as num?)?.toInt() ?? 0,
  totalFloor: (json['total_floor'] as num?)?.toInt() ?? 0,
  address: json['address'] as String? ?? '',
  status: json['status'] as String? ?? '',
);

Map<String, dynamic> _$MyAdDataToJson(_MyAdData instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'image_urls': instance.imageUrls,
  'price': instance.price,
  'rooms_count': instance.roomsCount,
  'area': instance.area,
  'floor': instance.floor,
  'total_floor': instance.totalFloor,
  'address': instance.address,
  'status': instance.status,
};
