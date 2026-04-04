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

String _$getAdFormOptionsHash() => r'd2a1c6aa8e46d1ccb25efd474b4c13e49e5b46be';

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

String _$adFormNotifierHash() => r'60ea5be27d35111ca7a1a5c59a952178eb0a9d40';

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
