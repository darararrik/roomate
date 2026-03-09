// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SmsNotifier)
final smsProvider = SmsNotifierProvider._();

final class SmsNotifierProvider
    extends $NotifierProvider<SmsNotifier, SmsState> {
  SmsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'smsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$smsNotifierHash();

  @$internal
  @override
  SmsNotifier create() => SmsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SmsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SmsState>(value),
    );
  }
}

String _$smsNotifierHash() => r'6e4d0708784fc3364e07119482284d7ddd2ea291';

abstract class _$SmsNotifier extends $Notifier<SmsState> {
  SmsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SmsState, SmsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SmsState, SmsState>,
              SmsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
