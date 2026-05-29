import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_model.freezed.dart';

@freezed
sealed class UploadFileModel with _$UploadFileModel {
  const factory UploadFileModel({
    @Default('') String path,
    String? fileName,
    String? contentType,
  }) = _UploadFileModel;
}
