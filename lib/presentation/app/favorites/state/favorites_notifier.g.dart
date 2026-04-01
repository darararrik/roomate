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
    extends $NotifierProvider<FavoriteApartmentIdsNotifier, Set<int>> {
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
  Override overrideWithValue(Set<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<int>>(value),
    );
  }
}

String _$favoriteApartmentIdsNotifierHash() =>
    r'd242dc47b88aa480b568e0e1e700fbafd75617bd';

abstract class _$FavoriteApartmentIdsNotifier extends $Notifier<Set<int>> {
  Set<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Set<int>, Set<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<int>, Set<int>>,
              Set<int>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FavoritesScreenNotifier)
final favoritesScreenProvider = FavoritesScreenNotifierProvider._();

final class FavoritesScreenNotifierProvider
    extends $NotifierProvider<FavoritesScreenNotifier, List<ApartamentModel>> {
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
  Override overrideWithValue(List<ApartamentModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ApartamentModel>>(value),
    );
  }
}

String _$favoritesScreenNotifierHash() =>
    r'6e95753f0bd42351b8846bc5172342ba1b35b69f';

abstract class _$FavoritesScreenNotifier
    extends $Notifier<List<ApartamentModel>> {
  List<ApartamentModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<ApartamentModel>, List<ApartamentModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<ApartamentModel>, List<ApartamentModel>>,
              List<ApartamentModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
