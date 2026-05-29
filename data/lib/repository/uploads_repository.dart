import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class UploadsRepositoryImpl implements IUploadsRepository {
  UploadsRepositoryImpl(this._dataSource);

  final UploadsDataSource _dataSource;

  @override
  Future<Either<RemoteException, List<UploadedImageModel>>> uploadImages(
    List<UploadFileModel> files,
  ) {
    return _dataSource.uploadImages(files);
  }
}
