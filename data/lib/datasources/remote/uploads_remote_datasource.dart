import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:http_parser/http_parser.dart';
import 'package:shared/shared.dart';

class UploadsRemoteDataSource implements UploadsDataSource {
  UploadsRemoteDataSource(this._client);

  final ApiClient _client;

  @override
  Future<Either<RemoteException, List<UploadedImageModel>>> uploadImages(
    List<UploadFileModel> files,
  ) async {
    final multipartFiles = <MultipartFile>[];

    for (final file in files) {
      multipartFiles.add(
        await MultipartFile.fromFile(
          file.path,
          filename: file.fileName ?? _fileNameFromPath(file.path),
          contentType: _mediaType(file),
        ),
      );
    }

    final result = await _client.post<UploadImagesResponseData>(
      ApiUrlConstants.uploadImages,
      needAuth: true,
      body: FormData.fromMap({'files': multipartFiles}),
      transformer: (json) =>
          UploadImagesResponseData.fromJson(json as Map<String, dynamic>),
    );

    return result.fold(
      Left.new,
      (data) => Right(data.results.map(UploadsMapper.toModel).toList()),
    );
  }

  MediaType _mediaType(UploadFileModel file) {
    final contentType =
        file.contentType ?? _contentTypeFromPath(file.path).trim();
    final parts = contentType.split('/');
    if (parts.length != 2) {
      return MediaType('image', 'jpeg');
    }

    return MediaType(parts.first, parts.last);
  }

  String _contentTypeFromPath(String path) {
    final lowercasedPath = path.toLowerCase();
    if (lowercasedPath.endsWith('.png')) {
      return 'image/png';
    }
    if (lowercasedPath.endsWith('.webp')) {
      return 'image/webp';
    }
    if (lowercasedPath.endsWith('.heic')) {
      return 'image/heic';
    }
    if (lowercasedPath.endsWith('.heif')) {
      return 'image/heif';
    }

    return 'image/jpeg';
  }

  String _fileNameFromPath(String path) {
    final segments = path.split('/');
    return segments.isEmpty ? 'image.jpg' : segments.last;
  }
}
