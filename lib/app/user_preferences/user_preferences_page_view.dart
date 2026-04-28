import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/user_preferences/notifier/user_pref_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/routing.dart';

@RoutePage(name: 'UserPreferencesPageViewRoute')
class UserPreferencesPageView extends ConsumerWidget {
  const UserPreferencesPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(preferencesTagsProvider);
    ref.watch(userPrefProvider);

    return value.when(
      loading: () => const Scaffold(body: LoadingWidget()),
      error: (e, _) => Scaffold(body: ErrorView(error: e.toString())),
      data: (tags) => _Content(tags: tags),
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content({required this.tags});
  final PreferencesTagsModel tags;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: [
        UserPreferencesLifestyleRoute(tags: tags),
        UserPreferencesHouseholdRoute(tags: tags),
        const VerificationIntroRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context, watch: true);
        final notifier = ref.read(userPrefProvider.notifier);
        final totalPages = tabsRouter.pageCount;
        final activeIndex = tabsRouter.activeIndex + 1;
        return ListenableBuilder(
          listenable: tabsRouter,
          builder: (context, child) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: SizedBox(
                  width: S.p100,
                  child: ProgressBarWidget(
                    tabsRouter: tabsRouter,
                    totalPages: totalPages,
                  ),
                ),
                actions: [Text("$activeIndex/$totalPages")],
                actionsPadding: const P(right: S.p16),
                leading: BB(onPressed: () => notifier.onPop(tabsRouter)),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const P(horizontal: S.p16, vertical: S.p20),
                  child: PrimaryButton(
                    onPressed: () => notifier.onNext(tabsRouter),
                    text: context.l10n.next,
                  ),
                ),
              ),
              body: child,
            );
          },
        );
      },
    );
  }
}
