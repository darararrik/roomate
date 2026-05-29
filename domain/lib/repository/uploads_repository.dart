import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import '../models/uploads/uploads.dart';

abstract interface class IUploadsRepository {
  Future<Either<RemoteException, List<UploadedImageModel>>> uploadImages(
    List<UploadFileModel> files,
  );
}
