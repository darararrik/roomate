// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Chat)
final chatProvider = ChatFamily._();

final class ChatProvider extends $NotifierProvider<Chat, ChatState> {
  ChatProvider._({
    required ChatFamily super.from,
    required ApartamentModel super.argument,
  }) : super(
         retry: null,
         name: r'chatProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatHash();

  @override
  String toString() {
    return r'chatProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  Chat create() => Chat();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChatState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ChatState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChatProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatHash() => r'64295907c8f6c9e0f79b9f605cd0c007b287a231';

final class ChatFamily extends $Family
    with
        $ClassFamilyOverride<
          Chat,
          ChatState,
          ChatState,
          ChatState,
          ApartamentModel
        > {
  ChatFamily._()
    : super(
        retry: null,
        name: r'chatProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatProvider call(ApartamentModel apartment) =>
      ChatProvider._(argument: apartment, from: this);

  @override
  String toString() => r'chatProvider';
}

abstract class _$Chat extends $Notifier<ChatState> {
  late final _$args = ref.$arg as ApartamentModel;
  ApartamentModel get apartment => _$args;

  ChatState build(ApartamentModel apartment);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ChatState, ChatState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ChatState, ChatState>,
              ChatState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
