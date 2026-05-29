import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';
import 'package:roomate/widgets/cards/group_application_card.dart';

@RoutePage()
class GroupApplicationsTabViewScreen extends ConsumerWidget {
  const GroupApplicationsTabViewScreen({super.key});

  static const _newStatuses = [AdApplicationStatus.pending];
  static const _archivedStatuses = [AdApplicationStatus.accepted, AdApplicationStatus.rejected];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter.tabBar(
      routes: const [NewGroupApplicationsRoute(), ArchivedGroupApplicationsRoute()],
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
                      title: Text(context.l10n.myAdApplicationsTitle),
                      centerTitle: false,
                      snap: true,
                      floating: true,
                      backgroundColor: context.colors.graysWhite,
                      surfaceTintColor: Colors.transparent,
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _PinnedHeaderDelegate(
                      height: S.p52,
                      child: ColoredBox(
                        color: context.colors.graysWhite,
                        child: _ApplicationsTabs(
                          controller: tabController,
                          newTabTitle: context.l10n.adApplicationNewTabTitle,
                          archivedTabTitle: context.l10n.myAdsArchive,
                          newCount: _watchGroupApplicationsCount(ref, _newStatuses),
                          archivedCount: _watchGroupApplicationsCount(ref, _archivedStatuses),
                        ),
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

@RoutePage()
class NewGroupApplicationsScreen extends StatelessWidget {
  const NewGroupApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _ApplicationsTabContent<IncomingGroupApplicationModel>(
      statuses: GroupApplicationsTabViewScreen._newStatuses,
      watchItems: _watchGroupApplications,
      itemBuilder: _buildGroupApplicationItem,
      infoTitle: context.l10n.adApplicationInfoTitle,
      infoDescription: context.l10n.adApplicationInfoDescription,
      emptyText: 'Нету заявок',
    );
  }
}

@RoutePage()
class ArchivedGroupApplicationsScreen extends StatelessWidget {
  const ArchivedGroupApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ApplicationsTabContent<IncomingGroupApplicationModel>(
      statuses: GroupApplicationsTabViewScreen._archivedStatuses,
      watchItems: _watchGroupApplications,
      itemBuilder: _buildGroupApplicationItem,
      emptyText: 'Нету заявок',
    );
  }
}

int _watchGroupApplicationsCount(WidgetRef ref, List<AdApplicationStatus> statuses) {
  var count = 0;

  for (final status in statuses) {
    count += ref.watch(applicationsForGroupsByStatusProvider(status)).asData?.value.length ?? 0;
  }

  return count;
}

AsyncValue<List<IncomingGroupApplicationModel>> _watchGroupApplications(
  WidgetRef ref,
  List<AdApplicationStatus> statuses,
) {
  final states = [for (final status in statuses) ref.watch(applicationsForGroupsByStatusProvider(status))];

  return _combineApplicationsStates(states);
}

Widget _buildGroupApplicationItem(BuildContext context, IncomingGroupApplicationModel item) {
  return GroupApplicationCard(
    item: item,
    onTap: () => context.pushRoute(MyGroupApplicationDetailRoute(applicationId: item.id)),
  );
}

class _ApplicationsTabContent<T> extends ConsumerWidget {
  const _ApplicationsTabContent({
    super.key,
    required this.statuses,
    required this.watchItems,
    required this.itemBuilder,
    this.infoTitle,
    this.infoDescription,
    this.emptyText,
  });

  final List<AdApplicationStatus> statuses;
  final AsyncValue<List<T>> Function(WidgetRef ref, List<AdApplicationStatus> statuses) watchItems;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final String? infoTitle;
  final String? infoDescription;
  final String? emptyText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = watchItems(ref, statuses);

    return CustomScrollView(
      key: PageStorageKey(statuses.map((status) => status.value).join(',')),
      slivers: [
        SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
        if (infoTitle != null && infoDescription != null)
          SliverPadding(
            padding: const P(horizontal: S.p16, top: S.p12),
            sliver: SliverToBoxAdapter(
              child: _ApplicationsInfoCard(title: infoTitle!, description: infoDescription!),
            ),
          ),
        asyncState.when(
          data: (items) {
            if (items.isEmpty) {
              return SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    emptyText ?? context.l10n.adApplicationNoItems,
                    style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
                  ),
                ),
              );
            }

            return SliverPadding(
              padding: EdgeInsets.only(
                left: S.p16,
                right: S.p16,
                top: infoTitle == null ? S.p12 : S.p16,
                bottom: S.p24,
              ),
              sliver: SliverList.separated(
                itemCount: items.length,
                itemBuilder: (context, index) => itemBuilder(context, items[index]),
                separatorBuilder: (_, _) => const SizedBox(height: S.p12),
              ),
            );
          },
          loading: () => const SliverFillRemaining(hasScrollBody: false, child: Center(child: LoadingWidget())),
          error: (error, _) => SliverFillRemaining(hasScrollBody: false, child: ErrorView(error: error)),
        ),
      ],
    );
  }
}

AsyncValue<List<T>> _combineApplicationsStates<T>(List<AsyncValue<List<T>>> states) {
  for (final state in states) {
    final error = state.asError;
    if (error != null) {
      return AsyncValue.error(error.error, error.stackTrace);
    }
  }

  if (states.any((state) => state.isLoading)) {
    return const AsyncValue.loading();
  }

  return AsyncValue.data([for (final state in states) ...?state.asData?.value]);
}

class _ApplicationsTabs extends StatelessWidget {
  const _ApplicationsTabs({
    required this.controller,
    required this.newTabTitle,
    required this.archivedTabTitle,
    required this.newCount,
    required this.archivedCount,
  });

  final TabController controller;
  final String newTabTitle;
  final String archivedTabTitle;
  final int newCount;
  final int archivedCount;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return TabBar(
          controller: controller,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: context.colors.orange, width: S.p1),
          ),
          dividerColor: context.colors.graysStroke300,
          dividerHeight: S.p1,
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
          tabs: [
            _ApplicationsTab(title: newTabTitle, count: newCount, isSelected: controller.index == 0),
            _ApplicationsTab(title: archivedTabTitle, count: archivedCount, isSelected: controller.index == 1),
          ],
        );
      },
    );
  }
}

class _ApplicationsTab extends StatelessWidget {
  const _ApplicationsTab({required this.title, required this.count, required this.isSelected});

  final String title;
  final int count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final selectedColor = context.colors.orange;
    final normalColor = context.colors.graysText400;

    return Tab(
      height: S.p52,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: S.p12,
        children: [
          Text(title, style: context.typography.activesLabel.copyWith(color: isSelected ? selectedColor : normalColor)),
          DecoratedBox(
            decoration: BoxDecoration(
              color: isSelected ? context.colors.opacityOrange20 : context.colors.graysLight50,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const P(horizontal: S.p8, vertical: S.p4),
              child: Text(
                '$count',
                style: context.typography.bodySmall.copyWith(color: isSelected ? selectedColor : normalColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _PinnedHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _PinnedHeaderDelegate oldDelegate) {
    return oldDelegate.height != height || oldDelegate.child != child;
  }
}

class _ApplicationsInfoCard extends StatelessWidget {
  const _ApplicationsInfoCard({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.graysLight50, borderRadius: BorderRadius.circular(S.p24)),
      child: Padding(
        padding: const P(vertical: S.p20, horizontal: S.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: S.p8,
          children: [
            Text(title, style: context.typography.bodyDescription),
            Text(
              description,
              softWrap: true,
              style: context.typography.bodySmall.copyWith(color: context.colors.graysText400),
            ),
          ],
        ),
      ),
    );
  }
}
