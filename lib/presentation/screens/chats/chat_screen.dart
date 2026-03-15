import 'dart:math';

import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:provider/provider.dart';

import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final ChatController _chatController;
  late final TextEditingController _textController;

  final GlobalKey _composerKey = GlobalKey();

  List<Message> get _messages => List.generate(
    10,
    (int index) => TextMessage(
      id: index.toString(),
      createdAt: DateTime.now().subtract(Duration(days: index)),
      text: 'Looks great! How does it work? (Author = $index)',
      authorId: index.isEven ? 'user1' : '1',
    ),
  );

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _chatController = InMemoryChatController(messages: _messages);
  }

  @override
  void dispose() {
    _textController.dispose();
    _chatController.dispose();
    super.dispose();
  }

  void _measureComposerHeight(BuildContext context) {
    if (!mounted) return;

    final renderBox =
        _composerKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final height = renderBox.size.height;
      final bottomSafeArea = MediaQuery.of(context).padding.bottom;

      try {
        context.read<ComposerHeightNotifier>().setHeight(
          height - bottomSafeArea,
        );
      } catch (e) {
        debugPrint('Ошибка при доступе к ComposerHeightNotifier: $e');
      }
    }
  }

  void _handleSend() {
    final text = _textController.text.trim();
    if (text.isNotEmpty) {
      _chatController.insertMessage(
        TextMessage(
          id: '${Random().nextInt(1000) + 1}',
          authorId: 'user1',
          createdAt: DateTime.now().toUtc(),
          text: text,
        ),
      );
      _textController.clear();
    }
  }

  Widget _buildCustomComposer(BuildContext context) {
    final double bottomSafeArea = MediaQuery.of(context).padding.bottom;
    const EdgeInsets defaultPadding = EdgeInsets.all(S.p8);

    final EdgeInsets finalPadding = defaultPadding.copyWith(
      bottom: defaultPadding.bottom + bottomSafeArea,
    );

    final composerContent = Builder(
      builder: (innerContext) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _measureComposerHeight(innerContext);
        });

        return ColoredBox(
          key: _composerKey,
          color: context.colors.graysWhite,
          child: Padding(
            padding: finalPadding,
            child: Row(
              children: [
                IconButton(
                  icon: const AppIcon(AppIcons.addAction),
                  onPressed: () {
                    //TODO: Реализация прикрепления фото
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const P(left: S.p4),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: context.colors.graysLight100,
                        borderRadius: BorderRadius.circular(S.p24),
                      ),
                      child: TextFormField(
                        controller: _textController,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 3,
                        onChanged: (_) {
                          _measureComposerHeight(innerContext);
                        },
                        decoration: InputDecoration(
                          hintText: context.l10n.messageHint,
                          contentPadding: const P(
                            horizontal: S.p16,
                            vertical: S.p10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const P(left: S.p4),
                  child: IconButton(
                    icon: const AppIcon(AppIcons.pushAction),
                    onPressed: _handleSend,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    return Positioned(
      left: S.p0,
      right: S.p0,
      bottom: S.p0,
      child: composerContent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.graysLight100,
      appBar: AppBar(
        title: const Text("dasads"),
        leading: const BB(),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Chat(
        builders: Builders(
          textMessageBuilder: buildCustomTextMessage,
          composerBuilder: _buildCustomComposer,
        ),
        currentUserId: 'user1',
        resolveUser: (UserID id) async {
          return User(id: id, name: 'John Doe $id');
        },
        chatController: _chatController,
      ),
    );
  }
}
