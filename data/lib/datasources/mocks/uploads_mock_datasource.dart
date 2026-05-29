import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class UploadsMockDataSource implements UploadsDataSource {
  @override
  Future<Either<RemoteException, List<UploadedImageModel>>> uploadImages(
    List<UploadFileModel> files,
  ) async {
    return Right(
      files.map((file) {
        final fileName = file.fileName ?? _fileNameFromPath(file.path);
        return UploadedImageModel(
          originalFileName: fileName,
          fileName: 'mock-$fileName',
          url: '/uploads/images/mock-$fileName',
          contentType: file.contentType ?? 'image/jpeg',
          size: 0,
          success: true,
        );
      }).toList(),
    );
  }

  String _fileNameFromPath(String path) {
    final segments = path.split('/');
    return segments.isEmpty ? 'image.jpg' : segments.last;
  }
}
