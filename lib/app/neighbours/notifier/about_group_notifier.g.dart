// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_group_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AboutGroup)
final aboutGroupProvider = AboutGroupFamily._();

final class AboutGroupProvider
    extends $AsyncNotifierProvider<AboutGroup, AboutGroupState> {
  AboutGroupProvider._({
    required AboutGroupFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'aboutGroupProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$aboutGroupHash();

  @override
  String toString() {
    return r'aboutGroupProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AboutGroup create() => AboutGroup();

  @override
  bool operator ==(Object other) {
    return other is AboutGroupProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$aboutGroupHash() => r'a6efee7b76e8bd6e67f1286b7f736fb9ec07f955';

final class AboutGroupFamily extends $Family
    with
        $ClassFamilyOverride<
          AboutGroup,
          AsyncValue<AboutGroupState>,
          AboutGroupState,
          FutureOr<AboutGroupState>,
          String
        > {
  AboutGroupFamily._()
    : super(
        retry: null,
        name: r'aboutGroupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AboutGroupProvider call(String groupId) =>
      AboutGroupProvider._(argument: groupId, from: this);

  @override
  String toString() => r'aboutGroupProvider';
}

abstract class _$AboutGroup extends $AsyncNotifier<AboutGroupState> {
  late final _$args = ref.$arg as String;
  String get groupId => _$args;

  FutureOr<AboutGroupState> build(String groupId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AboutGroupState>, AboutGroupState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AboutGroupState>, AboutGroupState>,
              AsyncValue<AboutGroupState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
