import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploaded_image_model.freezed.dart';

@freezed
sealed class UploadedImageModel with _$UploadedImageModel {
  const factory UploadedImageModel({
    @Default('') String originalFileName,
    String? fileName,
    String? url,
    @Default('') String contentType,
    @Default(0) int size,
    @Default(false) bool success,
    String? error,
  }) = _UploadedImageModel;
}
