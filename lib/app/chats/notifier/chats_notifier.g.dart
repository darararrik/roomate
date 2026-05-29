// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatsNotifier)
final chatsProvider = ChatsNotifierProvider._();

final class ChatsNotifierProvider
    extends $AsyncNotifierProvider<ChatsNotifier, List<ChatSummaryModel>> {
  ChatsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'chatsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$chatsNotifierHash();

  @$internal
  @override
  ChatsNotifier create() => ChatsNotifier();
}

String _$chatsNotifierHash() => r'3c374c0aa01874f7727d7b02a06ff604cbb17939';

abstract class _$ChatsNotifier extends $AsyncNotifier<List<ChatSummaryModel>> {
  FutureOr<List<ChatSummaryModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ChatSummaryModel>>, List<ChatSummaryModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ChatSummaryModel>>,
                List<ChatSummaryModel>
              >,
              AsyncValue<List<ChatSummaryModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
