// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartament_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Apartament)
final apartamentProvider = ApartamentFamily._();

final class ApartamentProvider
    extends $AsyncNotifierProvider<Apartament, ApartamentState> {
  ApartamentProvider._({
    required ApartamentFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'apartamentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$apartamentHash();

  @override
  String toString() {
    return r'apartamentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Apartament create() => Apartament();

  @override
  bool operator ==(Object other) {
    return other is ApartamentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$apartamentHash() => r'5e7bdf47855d80839e6e1541633cd737d11ecbdf';

final class ApartamentFamily extends $Family
    with
        $ClassFamilyOverride<
          Apartament,
          AsyncValue<ApartamentState>,
          ApartamentState,
          FutureOr<ApartamentState>,
          String
        > {
  ApartamentFamily._()
    : super(
        retry: null,
        name: r'apartamentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApartamentProvider call(String apartmentId) =>
      ApartamentProvider._(argument: apartmentId, from: this);

  @override
  String toString() => r'apartamentProvider';
}

abstract class _$Apartament extends $AsyncNotifier<ApartamentState> {
  late final _$args = ref.$arg as String;
  String get apartmentId => _$args;

  FutureOr<ApartamentState> build(String apartmentId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ApartamentState>, ApartamentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ApartamentState>, ApartamentState>,
              AsyncValue<ApartamentState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
