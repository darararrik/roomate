import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/groups/notifier/groups_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class NeighboursScreen extends ConsumerWidget {
  const NeighboursScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(groupsProvider);
    final notifier = ref.read(groupsProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(context.l10n.findNeighbour),
              centerTitle: false,
              snap: true,
              floating: true,
              backgroundColor: context.colors.graysWhite,
              surfaceTintColor: Colors.transparent,
            ),
            SliverToBoxAdapter(
              child: ColoredBox(color: context.colors.graysWhite, child: const WhoSearchCard()),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _NeighboursControlsHeaderDelegate(
                height: NeighboursFiltersRow.preferredHeight(),
                child: ColoredBox(
                  color: context.colors.graysWhite,
                  child: NeighboursFiltersRow(
                    optionsCount: asyncState.value?.length ?? 0,
                    onFiltersTap: () => context.router.push(const NeighboursFiltersRoute()),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const P(horizontal: S.p16),
              sliver: asyncState.when(
                data: (groups) {
                  return SliverList.separated(
                    itemCount: groups.length,
                    itemBuilder: (context, index) {
                      final group = groups[index];
                      return NeighbourCard(onTap: () => notifier.openGroup(group.id), group: group);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: S.p12);
                    },
                  );
                },
                error: (error, stack) {
                  return SliverToBoxAdapter(child: ErrorView(error: error));
                },
                loading: () {
                  return const SliverToBoxAdapter(child: LoadingWidget());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NeighboursControlsHeaderDelegate extends SliverPersistentHeaderDelegate {
  _NeighboursControlsHeaderDelegate({required this.child, required this.height});

  final Widget child;
  final double height;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _NeighboursControlsHeaderDelegate oldDelegate) {
    return oldDelegate.height != height || oldDelegate.child != child;
  }
}
