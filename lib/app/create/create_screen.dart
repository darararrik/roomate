import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/create_screen_notifier.dart';
import 'package:roomate/app/create/widgets/create_action_card.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateScreen extends ConsumerWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(globalProfileProvider);
    ref.watch(createScreenProvider);
    final notifier = ref.read(createScreenProvider.notifier);

    return profileState.when(
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator.adaptive())),
      error: (_, _) => const Scaffold(body: ErrorView()),
      data: (profile) {
        final draftState = profile.isOwner ? ref.watch(createAdDraftProvider) : ref.watch(createGroupDraftProvider);

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: BB(onPressed: () => AutoTabsRouter.of(context).setActiveIndex(0)),
            title: Text(context.l10n.createAdvertisementTitle),
          ),
          body: draftState.when(
            loading: () => const Center(child: CircularProgressIndicator.adaptive()),
            error: (_, _) => const ErrorView(),
            data: (draft) {
              return Padding(
                padding: const P(horizontal: S.p16, top: S.p24),
                child: Column(
                  spacing: S.p12,
                  children: [
                    if (draft != null)
                      CreateActionCard(
                        title: context.l10n.continueDraft,
                        subtitle: notifier.draftPrimaryText(draft),
                        caption: notifier.draftSecondaryText(draft),
                        onTap: () => notifier.continueDraft(draft),
                      ),
                    CreateActionCard(title: context.l10n.createNewAdvertisement, onTap: notifier.startNewCreation),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
