// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartaments_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApartamentsResponseData _$ApartamentsResponseDataFromJson(
  Map<String, dynamic> json,
) => _ApartamentsResponseData(
  totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ApartamentData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ApartamentsResponseDataToJson(
  _ApartamentsResponseData instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'items': instance.items,
};
