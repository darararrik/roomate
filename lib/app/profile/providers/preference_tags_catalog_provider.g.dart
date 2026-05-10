// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_tags_catalog_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(preferenceTagsCatalog)
final preferenceTagsCatalogProvider = PreferenceTagsCatalogProvider._();

final class PreferenceTagsCatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<PreferenceTagsCatalogModel>,
          PreferenceTagsCatalogModel,
          FutureOr<PreferenceTagsCatalogModel>
        >
    with
        $FutureModifier<PreferenceTagsCatalogModel>,
        $FutureProvider<PreferenceTagsCatalogModel> {
  PreferenceTagsCatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'preferenceTagsCatalogProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$preferenceTagsCatalogHash();

  @$internal
  @override
  $FutureProviderElement<PreferenceTagsCatalogModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PreferenceTagsCatalogModel> create(Ref ref) {
    return preferenceTagsCatalog(ref);
  }
}

String _$preferenceTagsCatalogHash() =>
    r'084a68e187c3d013082dcd60bf326986bed0efee';
