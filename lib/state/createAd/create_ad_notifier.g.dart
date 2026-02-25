// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ad_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categories)
final categoriesProvider = CategoriesFamily._();

final class CategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SelectionCategory>>,
          List<SelectionCategory>,
          FutureOr<List<SelectionCategory>>
        >
    with
        $FutureModifier<List<SelectionCategory>>,
        $FutureProvider<List<SelectionCategory>> {
  CategoriesProvider._({
    required CategoriesFamily super.from,
    required SelectionStepKey super.argument,
  }) : super(
         retry: null,
         name: r'categoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categoriesHash();

  @override
  String toString() {
    return r'categoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<SelectionCategory>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SelectionCategory>> create(Ref ref) {
    final argument = this.argument as SelectionStepKey;
    return categories(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categoriesHash() => r'bb2940235f0eeb91a57b9a60ef97aa0c5dc6babb';

final class CategoriesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<SelectionCategory>>,
          SelectionStepKey
        > {
  CategoriesFamily._()
    : super(
        retry: null,
        name: r'categoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CategoriesProvider call(SelectionStepKey key) =>
      CategoriesProvider._(argument: key, from: this);

  @override
  String toString() => r'categoriesProvider';
}

@ProviderFor(CreateAdNotifier)
final createAdProvider = CreateAdNotifierProvider._();

final class CreateAdNotifierProvider
    extends $NotifierProvider<CreateAdNotifier, CreateAdState> {
  CreateAdNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createAdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createAdNotifierHash();

  @$internal
  @override
  CreateAdNotifier create() => CreateAdNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAdState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAdState>(value),
    );
  }
}

String _$createAdNotifierHash() => r'9988ca27acfbc086e923f00c6a38f11f485dda6a';

abstract class _$CreateAdNotifier extends $Notifier<CreateAdState> {
  CreateAdState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateAdState, CreateAdState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAdState, CreateAdState>,
              CreateAdState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
