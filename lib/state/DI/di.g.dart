// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(adRepository)
final adRepositoryProvider = AdRepositoryProvider._();

final class AdRepositoryProvider
    extends $FunctionalProvider<AdRepository, AdRepository, AdRepository>
    with $Provider<AdRepository> {
  AdRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adRepositoryHash();

  @$internal
  @override
  $ProviderElement<AdRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AdRepository create(Ref ref) {
    return adRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdRepository>(value),
    );
  }
}

String _$adRepositoryHash() => r'28f575ce0ee58f105e0d1aca3819f0780e07f283';

@ProviderFor(stepFields)
final stepFieldsProvider = StepFieldsFamily._();

final class StepFieldsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AdFieldConfig>>,
          List<AdFieldConfig>,
          FutureOr<List<AdFieldConfig>>
        >
    with
        $FutureModifier<List<AdFieldConfig>>,
        $FutureProvider<List<AdFieldConfig>> {
  StepFieldsProvider._({
    required StepFieldsFamily super.from,
    required SelectionStepKey super.argument,
  }) : super(
         retry: null,
         name: r'stepFieldsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$stepFieldsHash();

  @override
  String toString() {
    return r'stepFieldsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<AdFieldConfig>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AdFieldConfig>> create(Ref ref) {
    final argument = this.argument as SelectionStepKey;
    return stepFields(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StepFieldsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stepFieldsHash() => r'8eb1ffa45cb2a5b63b1f97b15fa5412ec34a5a91';

final class StepFieldsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<AdFieldConfig>>,
          SelectionStepKey
        > {
  StepFieldsFamily._()
    : super(
        retry: null,
        name: r'stepFieldsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StepFieldsProvider call(SelectionStepKey key) =>
      StepFieldsProvider._(argument: key, from: this);

  @override
  String toString() => r'stepFieldsProvider';
}
