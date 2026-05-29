import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class UploadsMapper {
  static UploadedImageModel toModel(UploadedImageData dto) {
    return UploadedImageModel(
      originalFileName: dto.originalFileName,
      fileName: dto.fileName,
      url: dto.url,
      contentType: dto.contentType,
      size: dto.size,
      success: dto.success,
      error: dto.error,
    );
  }
}
