// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Favorites)
final favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends $AsyncNotifierProvider<Favorites, List<ApartamentPreviewModel>> {
  FavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  Favorites create() => Favorites();
}

String _$favoritesHash() => r'bd1a694885b159c11c86733a149ae05e1cfc0ca5';

abstract class _$Favorites
    extends $AsyncNotifier<List<ApartamentPreviewModel>> {
  FutureOr<List<ApartamentPreviewModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ApartamentPreviewModel>>,
              List<ApartamentPreviewModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ApartamentPreviewModel>>,
                List<ApartamentPreviewModel>
              >,
              AsyncValue<List<ApartamentPreviewModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
