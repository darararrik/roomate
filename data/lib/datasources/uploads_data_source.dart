import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract interface class UploadsDataSource {
  Future<Either<RemoteException, List<UploadedImageModel>>> uploadImages(
    List<UploadFileModel> files,
  );
}
