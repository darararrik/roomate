// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_group_application_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyGroupApplicationDetail)
final myGroupApplicationDetailProvider = MyGroupApplicationDetailFamily._();

final class MyGroupApplicationDetailProvider
    extends
        $AsyncNotifierProvider<
          MyGroupApplicationDetail,
          IncomingGroupApplicationDetailModel
        > {
  MyGroupApplicationDetailProvider._({
    required MyGroupApplicationDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'myGroupApplicationDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myGroupApplicationDetailHash();

  @override
  String toString() {
    return r'myGroupApplicationDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MyGroupApplicationDetail create() => MyGroupApplicationDetail();

  @override
  bool operator ==(Object other) {
    return other is MyGroupApplicationDetailProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myGroupApplicationDetailHash() =>
    r'39197b3435516986be2d40369758282ebad86c65';

final class MyGroupApplicationDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          MyGroupApplicationDetail,
          AsyncValue<IncomingGroupApplicationDetailModel>,
          IncomingGroupApplicationDetailModel,
          FutureOr<IncomingGroupApplicationDetailModel>,
          String
        > {
  MyGroupApplicationDetailFamily._()
    : super(
        retry: null,
        name: r'myGroupApplicationDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyGroupApplicationDetailProvider call(String applicationId) =>
      MyGroupApplicationDetailProvider._(argument: applicationId, from: this);

  @override
  String toString() => r'myGroupApplicationDetailProvider';
}

abstract class _$MyGroupApplicationDetail
    extends $AsyncNotifier<IncomingGroupApplicationDetailModel> {
  late final _$args = ref.$arg as String;
  String get applicationId => _$args;

  FutureOr<IncomingGroupApplicationDetailModel> build(String applicationId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<IncomingGroupApplicationDetailModel>,
              IncomingGroupApplicationDetailModel
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<IncomingGroupApplicationDetailModel>,
                IncomingGroupApplicationDetailModel
              >,
              AsyncValue<IncomingGroupApplicationDetailModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
