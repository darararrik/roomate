// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Chat)
final chatProvider = ChatFamily._();

final class ChatProvider extends $AsyncNotifierProvider<Chat, ChatState> {
  ChatProvider._({
    required ChatFamily super.from,
    required ChatSummaryModel super.argument,
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

  @override
  bool operator ==(Object other) {
    return other is ChatProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatHash() => r'c56a7aa843e7a06c619971224ef80a7cef7e1d9a';

final class ChatFamily extends $Family
    with
        $ClassFamilyOverride<
          Chat,
          AsyncValue<ChatState>,
          ChatState,
          FutureOr<ChatState>,
          ChatSummaryModel
        > {
  ChatFamily._()
    : super(
        retry: null,
        name: r'chatProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatProvider call(ChatSummaryModel chat) =>
      ChatProvider._(argument: chat, from: this);

  @override
  String toString() => r'chatProvider';
}

abstract class _$Chat extends $AsyncNotifier<ChatState> {
  late final _$args = ref.$arg as ChatSummaryModel;
  ChatSummaryModel get chat => _$args;

  FutureOr<ChatState> build(ChatSummaryModel chat);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ChatState>, ChatState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChatState>, ChatState>,
              AsyncValue<ChatState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
