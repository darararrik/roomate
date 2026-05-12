// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartaments_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApartamentsNotifier)
final apartamentsProvider = ApartamentsNotifierProvider._();

final class ApartamentsNotifierProvider
    extends $AsyncNotifierProvider<ApartamentsNotifier, ApartamentsState> {
  ApartamentsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apartamentsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apartamentsNotifierHash();

  @$internal
  @override
  ApartamentsNotifier create() => ApartamentsNotifier();
}

String _$apartamentsNotifierHash() =>
    r'a1633c1021f5a531b19f03bd220a0068c2772bb0';

abstract class _$ApartamentsNotifier extends $AsyncNotifier<ApartamentsState> {
  FutureOr<ApartamentsState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ApartamentsState>, ApartamentsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ApartamentsState>, ApartamentsState>,
              AsyncValue<ApartamentsState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
