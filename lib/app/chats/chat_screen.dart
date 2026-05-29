import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key, this.apartment = const ApartamentModel()});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final state = ref.watch(chatProvider(apartment));
    final notifier = ref.read(chatProvider(apartment).notifier);
    final chatApartment = state.apartment;
    final title = chatApartment.title.trim().isNotEmpty
        ? chatApartment.title
        : 'Аренда комнаты';

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
            apartment: chatApartment,
            isApplying: state.isApplying,
            applicationStatus: state.applicationStatus,
            onApartmentPressed: notifier.onApartmentPressed,
            onApplyPressed: notifier.onApplyPressed,
          ),
          Expanded(
            child: chat_ui.Chat(
              backgroundColor: colors.graysLight50,
              builders: Builders(
                textMessageBuilder: buildCustomTextMessage,
                chatAnimatedListBuilder: (context, itemBuilder) {
                  return chat_ui.ChatAnimatedList(
                    itemBuilder: itemBuilder,
                    topPadding: S.p16,
                    handleSafeArea: false,
                  );
                },
                composerBuilder: (context) {
                  return Align(
                    alignment: .bottomCenter,
                    child: Container(
                      padding: const P(
                        horizontal: S.p16,
                        bottom: S.p32,
                        top: S.p12,
                      ),
                      decoration: BoxDecoration(
                        color: colors.graysWhite,
                        boxShadow: [colors.shadow],
                      ),
                      child: Row(
                        children: [
                          const AppIcon(
                            AppIcons.addAction,
                            width: S.p32,
                            height: S.p32,
                          ),
                          const SizedBox(width: S.p12),
                          Expanded(
                            child: TextField(
                              controller: notifier.textController,
                              minLines: 1,
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: context.l10n.messageHint,
                                hintStyle: context.typography.bodyDescription
                                    .copyWith(color: colors.graysText400),
                                filled: true,
                                fillColor: colors.graysLight100,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(S.p24),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: colors.orange,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(S.p24),
                                ),
                                contentPadding: const P(
                                  horizontal: S.p16,
                                  vertical: S.p12,
                                ),
                              ),
                              style: context.typography.bodySmall.copyWith(
                                color: colors.graysBlack,
                              ),
                            ),
                          ),
                          const SizedBox(width: S.p12),
                          GestureDetector(
                            onTap: () => notifier.onMessageSend(
                              notifier.textController.text,
                            ),
                            child: const AppIcon(
                              AppIcons.pushAction,
                              width: S.p32,
                              height: S.p32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  // return chat_ui.Composer(
                  //   textEditingController: notifier.textController,
                  //   attachmentIcon: const AppIcon(AppIcons.addAction, width: S.p32, height: S.p32),
                  //   sendIcon: const AppIcon(AppIcons.pushAction, width: S.p32, height: S.p32),
                  //   backgroundColor: colors.graysWhite,
                  //   inputFillColor: colors.graysLight100,
                  //   hintText: context.l10n.messageHint,
                  //   hintColor: colors.graysText400,
                  //   textColor: colors.graysBlack,
                  //   sendIconColor: colors.lightOrange100,
                  //   emptyFieldSendIconColor: colors.graysIcon500,
                  //   inputBorder: OutlineInputBorder(
                  //     borderSide: BorderSide.none,
                  //     borderRadius: BorderRadius.circular(S.p24),
                  //   ),
                  //   padding: const P(horizontal: S.p16, vertical: S.p12),

                  //   minLines: 1,
                  //   maxLines: 4,
                  //   handleSafeArea: true,
                  // );
                },
              ),
              chatController: notifier.chatController,
              currentUserId: Chat.currentUserId,
              resolveUser: notifier.resolveUser,
            ),
          ),
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
    final imageUrl = apartment.imageUrls.first;
    final priceText = apartment.price;
    final roomsText = apartment.roomsCount;
    final areaText = apartment.area;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.graysWhite,
        boxShadow: [colors.shadow],
      ),
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
                    NetworkAvatar(
                      imageUrl: imageUrl,
                      size: S.p64,
                      borderRadius: BorderRadius.circular(S.p12),
                      backgroundColor: colors.graysLight100,
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
                            style: context.typography.bodySmall.copyWith(
                              color: colors.graysText400,
                            ),
                          ),
                          const SizedBox(height: S.p4),
                          Text(
                            apartment.address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.typography.bodySmall.copyWith(
                              color: colors.graysText400,
                            ),
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
                  onPressed: isApplying || applicationStatus == 'pending'
                      ? null
                      : onApplyPressed,
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
