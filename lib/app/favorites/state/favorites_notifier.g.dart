// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteApartmentIdsNotifier)
final favoriteApartmentIdsProvider = FavoriteApartmentIdsNotifierProvider._();

final class FavoriteApartmentIdsNotifierProvider
    extends $NotifierProvider<FavoriteApartmentIdsNotifier, Set<String>> {
  FavoriteApartmentIdsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteApartmentIdsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteApartmentIdsNotifierHash();

  @$internal
  @override
  FavoriteApartmentIdsNotifier create() => FavoriteApartmentIdsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }
}

String _$favoriteApartmentIdsNotifierHash() =>
    r'ba33a4970d955f60abde77916d551e0eea643678';

abstract class _$FavoriteApartmentIdsNotifier extends $Notifier<Set<String>> {
  Set<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<String>, Set<String>>,
              Set<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FavoritesScreenNotifier)
final favoritesScreenProvider = FavoritesScreenNotifierProvider._();

final class FavoritesScreenNotifierProvider
    extends
        $NotifierProvider<
          FavoritesScreenNotifier,
          List<ApartamentPreviewModel>
        > {
  FavoritesScreenNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesScreenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesScreenNotifierHash();

  @$internal
  @override
  FavoritesScreenNotifier create() => FavoritesScreenNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ApartamentPreviewModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ApartamentPreviewModel>>(value),
    );
  }
}

String _$favoritesScreenNotifierHash() =>
    r'882abf058fd6fdf43ff87d73839374980bc26659';

abstract class _$FavoritesScreenNotifier
    extends $Notifier<List<ApartamentPreviewModel>> {
  List<ApartamentPreviewModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<List<ApartamentPreviewModel>, List<ApartamentPreviewModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                List<ApartamentPreviewModel>,
                List<ApartamentPreviewModel>
              >,
              List<ApartamentPreviewModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
