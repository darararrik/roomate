// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SmsNotifier)
final smsProvider = SmsNotifierProvider._();

final class SmsNotifierProvider extends $NotifierProvider<SmsNotifier, int> {
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
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$smsNotifierHash() => r'938f59e9d70ffd01006f234daeb0fcfb419fd218';

abstract class _$SmsNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
