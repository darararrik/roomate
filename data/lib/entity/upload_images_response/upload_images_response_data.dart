import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_images_response_data.freezed.dart';
part 'upload_images_response_data.g.dart';

@freezed
sealed class UploadImagesResponseData with _$UploadImagesResponseData {
  @JsonSerializable(includeIfNull: false)
  const factory UploadImagesResponseData({
    @JsonKey(name: 'results')
    @Default(<UploadedImageData>[])
    List<UploadedImageData> results,
  }) = _UploadImagesResponseData;

  factory UploadImagesResponseData.fromJson(Map<String, dynamic> json) =>
      _$UploadImagesResponseDataFromJson(json);
}

@freezed
sealed class UploadedImageData with _$UploadedImageData {
  @JsonSerializable(includeIfNull: false)
  const factory UploadedImageData({
    @JsonKey(name: 'original_file_name') @Default('') String originalFileName,
    @JsonKey(name: 'file_name') String? fileName,
    String? url,
    @JsonKey(name: 'content_type') @Default('') String contentType,
    @Default(0) int size,
    @Default(false) bool success,
    String? error,
  }) = _UploadedImageData;

  factory UploadedImageData.fromJson(Map<String, dynamic> json) =>
      _$UploadedImageDataFromJson(json);
}
