import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, this.apartment = const ApartamentModel()});

  final ApartamentModel apartment;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  late final TextEditingController _textController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _handleSend(Chat notifier) {
    final text = _textController.text.trim();
    if (text.isEmpty) {
      return;
    }

    notifier.sendMessage(text);
    _textController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) {
        return;
      }
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final state = ref.watch(chatProvider(widget.apartment));
    final notifier = ref.read(chatProvider(widget.apartment).notifier);
    final apartment = state.apartment;
    final title = apartment.title.trim().isNotEmpty ? apartment.title : 'Аренда комнаты';

    return Scaffold(
      backgroundColor: colors.graysLight50,
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        leading: const BB(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded, color: colors.graysIcon500),
          ),
        ],
      ),
      body: Column(
        children: [
          _ChatListingHeader(
            apartment: apartment,
            isApplying: state.isApplying,
            applicationStatus: state.applicationStatus,
            onApartmentPressed: notifier.onApartmentPressed,
            onApplyPressed: notifier.onApplyPressed,
          ),
          Expanded(
            child: ListView(
              controller: _scrollController,
              padding: const P(horizontal: S.p16, top: S.p16, bottom: S.p24),
              children: [
                Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: colors.graysWhite,
                      borderRadius: BorderRadius.circular(S.p24),
                      boxShadow: [colors.shadow],
                    ),
                    child: Padding(
                      padding: const P(horizontal: S.p16, vertical: S.p6),
                      child: Text(
                        'Пт, 11 Апреля',
                        style: context.typography.headline2.copyWith(color: colors.graysText400),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: S.p20),
                ...state.messages.map((message) {
                  return _ChatBubble(message: message);
                }),
              ],
            ),
          ),
          _ChatComposer(controller: _textController, onSend: () => _handleSend(notifier)),
        ],
      ),
    );
  }
}

class _ChatListingHeader extends StatelessWidget {
  const _ChatListingHeader({
    required this.apartment,
    required this.isApplying,
    required this.applicationStatus,
    required this.onApartmentPressed,
    required this.onApplyPressed,
  });

  final ApartamentModel apartment;
  final bool isApplying;
  final String applicationStatus;
  final VoidCallback onApartmentPressed;
  final VoidCallback onApplyPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final imageUrl = apartment.imageUrls.isNotEmpty ? apartment.imageUrls.first : '';
    final hasImage = imageUrl.trim().isNotEmpty;
    final priceText = apartment.price.trim().isNotEmpty ? apartment.price : '10 000';
    final roomsText = apartment.roomsCount.trim().isNotEmpty ? apartment.roomsCount : '1 комн.';
    final areaText = apartment.area.trim().isNotEmpty ? apartment.area : '30м²';

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.graysWhite, boxShadow: [colors.shadow]),
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p12),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onApartmentPressed,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(S.p12),
                      child: SizedBox(
                        width: S.p64,
                        height: S.p64,
                        child: hasImage
                            ? Image.network(
                                width: S.p64,
                                height: S.p64,
                                imageUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (_, _, _) => _placeholder(context),
                              )
                            : _placeholder(context),
                      ),
                    ),
                    const SizedBox(width: S.p12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$priceText ${context.l10n.currencyPerMonth}',
                            style: context.typography.bodyDescription,
                          ),
                          const SizedBox(height: S.p4),
                          Text(
                            '$roomsText, $areaText, ${context.l10n.floor} ${apartment.floor}/${apartment.totalFloor}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.typography.bodySmall.copyWith(color: colors.graysText400),
                          ),
                          const SizedBox(height: S.p4),
                          Text(
                            apartment.address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.typography.bodySmall.copyWith(color: colors.graysText400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: S.p12),
            Expanded(
              child: Padding(
                padding: const P(vertical: S.p8),
                child: OpacityButton(
                  onPressed: isApplying || applicationStatus == 'pending' ? null : onApplyPressed,
                  bgColor: colors.opacityOrange20,
                  color: colors.orange,
                  text: _applyButtonText(
                    locale: context.l10n,
                    isApplying: isApplying,
                    applicationStatus: applicationStatus,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _placeholder(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.graysLight100),
      child: Center(
        child: AppIcon(AppIcons.docs, color: context.colors.lightOrange100, width: S.p24, height: S.p24),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});

  final ChatMessageModel message;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final bubbleColor = message.isMine ? colors.orangeChat : colors.grayMessage;
    final textColor = message.isMine ? colors.graysWhite : colors.graysBlack;
    final timeColor = message.isMine ? colors.graysWhite : colors.graysText700;

    return Padding(
      padding: const P(bottom: S.p16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: message.isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isMine) ...[const CircleAvatar(radius: S.p24), const SizedBox(width: S.p12)],
          Flexible(
            child: DecoratedBox(
              decoration: BoxDecoration(color: bubbleColor, borderRadius: BorderRadius.circular(S.p24)),
              child: Padding(
                padding: const P(horizontal: S.p20, vertical: S.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!message.isMine && message.authorName.trim().isNotEmpty) ...[
                      Text(
                        message.authorName,
                        style: context.typography.headline2.copyWith(color: colors.graysText700),
                      ),
                      const SizedBox(height: S.p8),
                    ],
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            message.text,
                            style: context.typography.bodyDescription.copyWith(color: textColor),
                          ),
                        ),
                        const SizedBox(width: S.p12),
                        Text(
                          message.createdAt.toNormalTimeString(),
                          style: context.typography.bodySmall.copyWith(color: timeColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatComposer extends StatelessWidget {
  const _ChatComposer({required this.controller, required this.onSend});

  final TextEditingController controller;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.graysWhite, boxShadow: [context.colors.shadow]),
      child: Padding(
        padding: EdgeInsets.fromLTRB(S.p12, S.p12, S.p12, S.p12 + bottomInset),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const AppIcon(AppIcons.addAction)),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.graysLight100,
                  borderRadius: BorderRadius.circular(S.p28),
                ),
                child: TextField(
                  controller: controller,
                  minLines: 1,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: context.l10n.messageHint,
                    contentPadding: const P(horizontal: S.p20, vertical: S.p14),
                  ),
                ),
              ),
            ),
            const SizedBox(width: S.p8),
            IconButton(onPressed: onSend, icon: const AppIcon(AppIcons.pushAction)),
          ],
        ),
      ),
    );
  }
}

String _applyButtonText({
  required AppLocalizations locale,
  required bool isApplying,
  required String applicationStatus,
}) {
  if (isApplying) {
    return locale.groupApplicationSending;
  }

  if (applicationStatus == 'pending') {
    return locale.groupApplicationSent;
  }

  return locale.groupApply;
}
