// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_form_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAdFormOptions)
final getAdFormOptionsProvider = GetAdFormOptionsProvider._();

final class GetAdFormOptionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AdFormOptionsModel>,
          AdFormOptionsModel,
          FutureOr<AdFormOptionsModel>
        >
    with
        $FutureModifier<AdFormOptionsModel>,
        $FutureProvider<AdFormOptionsModel> {
  GetAdFormOptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAdFormOptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAdFormOptionsHash();

  @$internal
  @override
  $FutureProviderElement<AdFormOptionsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AdFormOptionsModel> create(Ref ref) {
    return getAdFormOptions(ref);
  }
}

String _$getAdFormOptionsHash() => r'192ef6ad76a19c1d307a8e84b1213ec183c7f76b';

@ProviderFor(selectedStreetName)
final selectedStreetNameProvider = SelectedStreetNameProvider._();

final class SelectedStreetNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  SelectedStreetNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedStreetNameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedStreetNameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return selectedStreetName(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedStreetNameHash() =>
    r'64b6c895e9434aba8ce13a9513b1673a35e035ff';

@ProviderFor(AdFormNotifier)
final adFormProvider = AdFormNotifierProvider._();

final class AdFormNotifierProvider
    extends $NotifierProvider<AdFormNotifier, CreateAdFormModel> {
  AdFormNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adFormNotifierHash();

  @$internal
  @override
  AdFormNotifier create() => AdFormNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateAdFormModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateAdFormModel>(value),
    );
  }
}

String _$adFormNotifierHash() => r'd36902c8a27e4a876ac84e1c3c73eb6286e29286';

abstract class _$AdFormNotifier extends $Notifier<CreateAdFormModel> {
  CreateAdFormModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CreateAdFormModel, CreateAdFormModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateAdFormModel, CreateAdFormModel>,
              CreateAdFormModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
