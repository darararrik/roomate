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
    extends $NotifierProvider<Apartament, ApartamentState> {
  ApartamentProvider._({
    required ApartamentFamily super.from,
    required ApartamentModel super.argument,
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApartamentState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApartamentState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ApartamentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$apartamentHash() => r'37a18b1bd616665d8a52ca260b36a1c95abaec50';

final class ApartamentFamily extends $Family
    with
        $ClassFamilyOverride<
          Apartament,
          ApartamentState,
          ApartamentState,
          ApartamentState,
          ApartamentModel
        > {
  ApartamentFamily._()
    : super(
        retry: null,
        name: r'apartamentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ApartamentProvider call(ApartamentModel apartment) =>
      ApartamentProvider._(argument: apartment, from: this);

  @override
  String toString() => r'apartamentProvider';
}

abstract class _$Apartament extends $Notifier<ApartamentState> {
  late final _$args = ref.$arg as ApartamentModel;
  ApartamentModel get apartment => _$args;

  ApartamentState build(ApartamentModel apartment);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ApartamentState, ApartamentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ApartamentState, ApartamentState>,
              ApartamentState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
