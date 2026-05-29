import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:domain/domain.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';

part 'media_upload_notifier.g.dart';

enum MediaUploadScope { ad, group }

class MediaUploadItem {
  const MediaUploadItem({
    required this.id,
    required this.remoteUrl,
    required this.localPath,
    required this.isUploading,
    required this.errorMessage,
  });

  const MediaUploadItem.remote({required this.id, required this.remoteUrl})
    : localPath = null,
      isUploading = false,
      errorMessage = '';

  final String id;
  final String? remoteUrl;
  final String? localPath;
  final bool isUploading;
  final String errorMessage;

  bool get hasError => errorMessage.trim().isNotEmpty;

  MediaUploadItem copyWith({
    String? id,
    String? remoteUrl,
    String? localPath,
    bool? isUploading,
    String? errorMessage,
    bool keepRemoteUrl = true,
    bool keepLocalPath = true,
  }) {
    return MediaUploadItem(
      id: id ?? this.id,
      remoteUrl: keepRemoteUrl ? (remoteUrl ?? this.remoteUrl) : remoteUrl,
      localPath: keepLocalPath ? (localPath ?? this.localPath) : localPath,
      isUploading: isUploading ?? this.isUploading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

@riverpod
class MediaUpload extends _$MediaUpload {
  static const _maxPhotosCount = 10;
  static const _maxUploadBytes = 10 * 1024 * 1024;
  static const _imageQuality = 82;
  static const _maxImageWidth = 1920.0;
  static const _maxImageHeight = 1920.0;
  static const _minCompressQuality = 56;
  static const _compressQualityStep = 13;
  static const _minCompressWidth = 960;
  static const _minCompressHeight = 960;
  static const _compressScaleFactor = 0.85;

  final ImagePicker _picker = ImagePicker();

  @override
  List<MediaUploadItem> build(MediaUploadScope scope) {
    switch (scope) {
      case MediaUploadScope.ad:
        ref.listen<CreateAdFormModel>(adFormProvider, (_, next) {
          _syncRemoteUrls(next.imageUrls);
        });
        return _remoteItems(ref.read(adFormProvider).imageUrls);
      case MediaUploadScope.group:
        ref.listen<CreateGroupFormModel>(groupFormProvider, (_, next) {
          _syncRemoteUrls(next.imageUrls);
        });
        return _remoteItems(ref.read(groupFormProvider).imageUrls);
    }
  }

  Future<void> pickFromGallery() async {
    if (!_canAddMorePhotos()) {
      _showMaxFilesError();
      return;
    }

    try {
      final pickedFiles = await _picker.pickMultiImage(
        imageQuality: _imageQuality,
        maxWidth: _maxImageWidth,
        maxHeight: _maxImageHeight,
      );
      if (pickedFiles.isEmpty) {
        return;
      }

      final remainingCount = _maxPhotosCount - state.length;
      final files = pickedFiles.take(max(remainingCount, 0)).toList();
      if (files.isEmpty) {
        _showMaxFilesError();
        return;
      }

      if (pickedFiles.length > files.length) {
        _showMaxFilesError();
      }

      await _uploadFiles(await _prepareFilesForUpload(files));
    } on PlatformException catch (_) {
      await _pickSingleImageFromGallery();
    } catch (_) {
      ref.nav.showSnackBar(message: ref.l10n.errorGeneric);
    }
  }

  Future<void> capturePhoto() async {
    if (!_canAddMorePhotos()) {
      _showMaxFilesError();
      return;
    }

    try {
      final file = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: _imageQuality,
        maxWidth: _maxImageWidth,
        maxHeight: _maxImageHeight,
      );
      if (file == null) {
        return;
      }

      await _uploadFiles(await _prepareFilesForUpload([file]));
    } on PlatformException catch (_) {
      ref.nav.showSnackBar(message: ref.l10n.errorGeneric);
    } catch (_) {
      ref.nav.showSnackBar(message: ref.l10n.errorGeneric);
    }
  }

  Future<void> _pickSingleImageFromGallery() async {
    final file = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: _imageQuality,
      maxWidth: _maxImageWidth,
      maxHeight: _maxImageHeight,
    );
    if (file == null) {
      return;
    }

    await _uploadFiles(await _prepareFilesForUpload([file]));
  }

  Future<void> retry(String itemId) async {
    final item = state.firstWhereOrNull((value) => value.id == itemId);
    if (item == null || item.localPath == null) {
      return;
    }

    state = [
      for (final value in state)
        if (value.id == itemId)
          value.copyWith(isUploading: true, errorMessage: '')
        else
          value,
    ];

    await _uploadPreparedFiles([
      (
        item.id,
        UploadFileModel(
          path: item.localPath!,
          fileName: _fileNameFromPath(item.localPath!),
          contentType: _contentTypeFromPath(item.localPath!),
        ),
      ),
    ]);
  }

  void remove(String itemId) {
    final item = state.firstWhereOrNull((value) => value.id == itemId);
    if (item == null) {
      return;
    }

    state = state.where((value) => value.id != itemId).toList();
    if (item.remoteUrl != null) {
      _replaceFormUrls(
        _currentFormUrls().where((value) => value != item.remoteUrl).toList(),
      );
    }
  }

  Future<void> _uploadFiles(List<XFile> files) async {
    if (files.isEmpty) {
      return;
    }

    final preparedFiles = files.map((file) {
      final itemId = _createItemId();
      return (
        itemId,
        UploadFileModel(
          path: file.path,
          fileName: file.name,
          contentType: file.mimeType ?? _contentTypeFromPath(file.path),
        ),
      );
    }).toList();

    state = [
      ...state,
      ...preparedFiles.map(
        (entry) => MediaUploadItem(
          id: entry.$1,
          localPath: entry.$2.path,
          remoteUrl: null,
          isUploading: true,
          errorMessage: '',
        ),
      ),
    ];

    await _uploadPreparedFiles(preparedFiles);
  }

  Future<void> _uploadPreparedFiles(
    List<(String, UploadFileModel)> preparedFiles,
  ) async {
    final result = await ref
        .read(uploadsRepositoryProvider)
        .uploadImages(preparedFiles.map((entry) => entry.$2).toList());

    result.fold(
      (error) {
        final message = error.httpErrorCode == 403 || error.httpErrorCode == 413
            ? ref.l10n.uploadPhotoReduceSizeError
            : (error.messages.isNotEmpty
                  ? error.messages
                  : ref.l10n.errorGeneric);
        final preparedIds = preparedFiles.map((entry) => entry.$1).toSet();
        state = [
          for (final item in state)
            if (preparedIds.contains(item.id))
              item.copyWith(isUploading: false, errorMessage: message)
            else
              item,
        ];
      },
      (uploadedItems) {
        final nextUrls = [..._currentFormUrls()];
        var nextState = [...state];

        for (var index = 0; index < preparedFiles.length; index++) {
          final prepared = preparedFiles[index];
          final itemExists = nextState.any((item) => item.id == prepared.$1);
          if (!itemExists) {
            continue;
          }

          final uploaded = index < uploadedItems.length
              ? uploadedItems[index]
              : const UploadedImageModel(success: false, error: '');

          nextState = [
            for (final item in nextState)
              if (item.id == prepared.$1)
                item.copyWith(
                  remoteUrl: uploaded.success ? uploaded.url : item.remoteUrl,
                  isUploading: false,
                  errorMessage: uploaded.success
                      ? ''
                      : (uploaded.error?.trim().isNotEmpty == true
                            ? uploaded.error!
                            : ref.l10n.errorGeneric),
                )
              else
                item,
          ];

          if (uploaded.success &&
              uploaded.url != null &&
              !nextUrls.contains(uploaded.url)) {
            nextUrls.add(uploaded.url!);
          }
        }

        state = nextState;
        _replaceFormUrls(nextUrls);
      },
    );
  }

  List<MediaUploadItem> _remoteItems(List<String> urls) {
    return urls
        .map((url) => MediaUploadItem.remote(id: 'remote-$url', remoteUrl: url))
        .toList();
  }

  void _syncRemoteUrls(List<String> urls) {
    final localOnlyItems = state
        .where((item) => item.remoteUrl == null)
        .toList();
    final remoteItems = urls.map((url) {
      return state.firstWhereOrNull((item) => item.remoteUrl == url) ??
          MediaUploadItem.remote(id: 'remote-$url', remoteUrl: url);
    }).toList();

    state = [...remoteItems, ...localOnlyItems];
  }

  List<String> _currentFormUrls() {
    return switch (scope) {
      MediaUploadScope.ad => ref.read(adFormProvider).imageUrls,
      MediaUploadScope.group => ref.read(groupFormProvider).imageUrls,
    };
  }

  void _replaceFormUrls(List<String> urls) {
    switch (scope) {
      case MediaUploadScope.ad:
        ref.read(adFormProvider.notifier).setImageUrls(urls);
      case MediaUploadScope.group:
        ref.read(groupFormProvider.notifier).setImageUrls(urls);
    }
  }

  bool _canAddMorePhotos() => state.length < _maxPhotosCount;

  Future<List<XFile>> _prepareFilesForUpload(List<XFile> files) async {
    final preparedFiles = <XFile>[];

    for (final file in files) {
      preparedFiles.add(await _compressFileIfNeeded(file));
    }

    return _filterAllowedFiles(preparedFiles);
  }

  Future<XFile> _compressFileIfNeeded(XFile file) async {
    final originalSize = await file.length();
    if (originalSize <= _maxUploadBytes) {
      return file;
    }

    var quality = _imageQuality;
    var targetWidth = _maxImageWidth.round();
    var targetHeight = _maxImageHeight.round();
    XFile? compressedFile;

    while (true) {
      compressedFile = await _compressToJpeg(
        sourcePath: file.path,
        quality: quality,
        targetWidth: targetWidth,
        targetHeight: targetHeight,
      );

      if (compressedFile == null) {
        return file;
      }

      final compressedSize = await compressedFile.length();
      if (compressedSize <= _maxUploadBytes) {
        return compressedFile;
      }

      final canReduceQuality = quality > _minCompressQuality;
      final canReduceDimensions =
          targetWidth > _minCompressWidth || targetHeight > _minCompressHeight;

      if (!canReduceQuality && !canReduceDimensions) {
        return compressedFile;
      }

      if (canReduceQuality) {
        quality = max(_minCompressQuality, quality - _compressQualityStep);
        continue;
      }

      targetWidth = max(
        _minCompressWidth,
        (targetWidth * _compressScaleFactor).round(),
      );
      targetHeight = max(
        _minCompressHeight,
        (targetHeight * _compressScaleFactor).round(),
      );
    }
  }

  Future<List<XFile>> _filterAllowedFiles(List<XFile> files) async {
    final allowedFiles = <XFile>[];

    for (final file in files) {
      final fileSize = await file.length();
      if (fileSize > _maxUploadBytes) {
        ref.nav.showSnackBar(message: ref.l10n.uploadPhotoMaxSizeError);
        continue;
      }
      allowedFiles.add(file);
    }

    return allowedFiles;
  }

  void _showMaxFilesError() {
    ref.nav.showSnackBar(message: ref.l10n.uploadPhotosMaxCountError);
  }

  String _createItemId() {
    final randomValue = Random().nextInt(1 << 32);
    return '${DateTime.now().microsecondsSinceEpoch}-$randomValue';
  }

  Future<XFile?> _compressToJpeg({
    required String sourcePath,
    required int quality,
    required int targetWidth,
    required int targetHeight,
  }) {
    final targetPath = _buildCompressedFilePath(sourcePath);

    return FlutterImageCompress.compressAndGetFile(
      sourcePath,
      targetPath,
      minWidth: targetWidth,
      minHeight: targetHeight,
      quality: quality,
      format: CompressFormat.jpeg,
      keepExif: true,
    );
  }

  String _buildCompressedFilePath(String sourcePath) {
    final fileName = _fileNameWithoutExtension(sourcePath);
    final timestamp = DateTime.now().microsecondsSinceEpoch;
    return '${Directory.systemTemp.path}/${fileName}_$timestamp.jpg';
  }

  String _fileNameWithoutExtension(String path) {
    final fileName = _fileNameFromPath(path);
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex <= 0) {
      return fileName;
    }

    return fileName.substring(0, dotIndex);
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
