// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_upload_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MediaUpload)
final mediaUploadProvider = MediaUploadFamily._();

final class MediaUploadProvider
    extends $NotifierProvider<MediaUpload, List<MediaUploadItem>> {
  MediaUploadProvider._({
    required MediaUploadFamily super.from,
    required MediaUploadScope super.argument,
  }) : super(
         retry: null,
         name: r'mediaUploadProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mediaUploadHash();

  @override
  String toString() {
    return r'mediaUploadProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MediaUpload create() => MediaUpload();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MediaUploadItem> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MediaUploadItem>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MediaUploadProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mediaUploadHash() => r'35e8442371a08fff9b950d328ad4a3fffb081d06';

final class MediaUploadFamily extends $Family
    with
        $ClassFamilyOverride<
          MediaUpload,
          List<MediaUploadItem>,
          List<MediaUploadItem>,
          List<MediaUploadItem>,
          MediaUploadScope
        > {
  MediaUploadFamily._()
    : super(
        retry: null,
        name: r'mediaUploadProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MediaUploadProvider call(MediaUploadScope scope) =>
      MediaUploadProvider._(argument: scope, from: this);

  @override
  String toString() => r'mediaUploadProvider';
}

abstract class _$MediaUpload extends $Notifier<List<MediaUploadItem>> {
  late final _$args = ref.$arg as MediaUploadScope;
  MediaUploadScope get scope => _$args;

  List<MediaUploadItem> build(MediaUploadScope scope);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<MediaUploadItem>, List<MediaUploadItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<MediaUploadItem>, List<MediaUploadItem>>,
              List<MediaUploadItem>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
