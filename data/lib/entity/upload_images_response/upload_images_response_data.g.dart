// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_images_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadImagesResponseData _$UploadImagesResponseDataFromJson(
  Map<String, dynamic> json,
) => _UploadImagesResponseData(
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => UploadedImageData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <UploadedImageData>[],
);

Map<String, dynamic> _$UploadImagesResponseDataToJson(
  _UploadImagesResponseData instance,
) => <String, dynamic>{'results': instance.results};

_UploadedImageData _$UploadedImageDataFromJson(Map<String, dynamic> json) =>
    _UploadedImageData(
      originalFileName: json['original_file_name'] as String? ?? '',
      fileName: json['file_name'] as String?,
      url: json['url'] as String?,
      contentType: json['content_type'] as String? ?? '',
      size: (json['size'] as num?)?.toInt() ?? 0,
      success: json['success'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$UploadedImageDataToJson(_UploadedImageData instance) =>
    <String, dynamic>{
      'original_file_name': instance.originalFileName,
      'file_name': ?instance.fileName,
      'url': ?instance.url,
      'content_type': instance.contentType,
      'size': instance.size,
      'success': instance.success,
      'error': ?instance.error,
    };
