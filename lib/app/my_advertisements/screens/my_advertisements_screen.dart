import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create/create_screen_notifier.dart';
import 'package:roomate/app/my_advertisements/widgets/my_ads_tabs.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/routing.dart';

@RoutePage()
class MyAdvertisementsScreen extends ConsumerWidget {
  const MyAdvertisementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOwner = ref.watch(globalProfileProvider.select((state) => state.value?.isOwner ?? false));
    if (!isOwner) {
      return Scaffold(
        //TODO: Реализовать после MVP
        body: Center(
          child: Text(
            "MVP+ - только для владельцев объявлений",
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
      );
    }

    final asyncState = ref.watch(myAdsProvider);
    final counts = TabCounts.fromItems(asyncState.asData?.value ?? const []);
    return AutoTabsRouter.tabBar(
      routes: const [ActiveMyAdvertisementsRoute(), ModerationMyAdvertisementsRoute(), ArchivedMyAdvertisementsRoute()],
      builder: (context, child, tabController) {
        return Scaffold(
          backgroundColor: context.colors.graysWhite,
          body: SafeArea(
            bottom: false,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: SliverAppBar(
                      title: Text(context.l10n.myAdvertisements),
                      centerTitle: false,
                      snap: true,
                      floating: true,
                      backgroundColor: context.colors.graysWhite,
                      surfaceTintColor: Colors.transparent,
                      actions: [
                        TextButton(
                          onPressed: ref.read(createScreenProvider.notifier).startNewCreation,
                          child: Text(
                            context.l10n.createShort,
                            style: context.typography.activesButton.copyWith(color: context.colors.lightOrange100),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PinnedHeaderDelegate(
                      height: S.p52,
                      child: ColoredBox(
                        color: context.colors.graysWhite,
                        child: MyAdsTabs(controller: tabController, counts: counts),
                      ),
                    ),
                  ),
                ];
              },
              body: child,
            ),
          ),
        );
      },
    );
  }
}
