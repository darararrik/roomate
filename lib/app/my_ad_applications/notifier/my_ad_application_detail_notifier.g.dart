// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_ad_application_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyAdApplicationDetail)
final myAdApplicationDetailProvider = MyAdApplicationDetailFamily._();

final class MyAdApplicationDetailProvider
    extends
        $AsyncNotifierProvider<
          MyAdApplicationDetail,
          AdApplicationDetailModel
        > {
  MyAdApplicationDetailProvider._({
    required MyAdApplicationDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'myAdApplicationDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myAdApplicationDetailHash();

  @override
  String toString() {
    return r'myAdApplicationDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MyAdApplicationDetail create() => MyAdApplicationDetail();

  @override
  bool operator ==(Object other) {
    return other is MyAdApplicationDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myAdApplicationDetailHash() =>
    r'53e2b88bedf1d2f9fb718c5ffb9bb7267c8c2a75';

final class MyAdApplicationDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          MyAdApplicationDetail,
          AsyncValue<AdApplicationDetailModel>,
          AdApplicationDetailModel,
          FutureOr<AdApplicationDetailModel>,
          String
        > {
  MyAdApplicationDetailFamily._()
    : super(
        retry: null,
        name: r'myAdApplicationDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyAdApplicationDetailProvider call(String applicationId) =>
      MyAdApplicationDetailProvider._(argument: applicationId, from: this);

  @override
  String toString() => r'myAdApplicationDetailProvider';
}

abstract class _$MyAdApplicationDetail
    extends $AsyncNotifier<AdApplicationDetailModel> {
  late final _$args = ref.$arg as String;
  String get applicationId => _$args;

  FutureOr<AdApplicationDetailModel> build(String applicationId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<AdApplicationDetailModel>,
              AdApplicationDetailModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<AdApplicationDetailModel>,
                AdApplicationDetailModel
              >,
              AsyncValue<AdApplicationDetailModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
