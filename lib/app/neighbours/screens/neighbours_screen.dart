import 'package:auto_route/auto_route.dart';
import 'package:domain/models/models.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/routing/app_routing.gr.dart';

import '../../../lib.dart';

@RoutePage()
class NeighboursScreen extends ConsumerWidget {
  const NeighboursScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);

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
              child: ColoredBox(
                color: context.colors.graysWhite,
                child: const NeighboursSearchCard(),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _NeighboursControlsHeaderDelegate(
                height: FiltersRow.preferredHeight(),
                child: ColoredBox(
                  color: context.colors.graysWhite,
                  child: FiltersRow(
                    optionsCount: asyncState.value?.apartaments.length ?? 0,
                    onFiltersTap: () => ref.read(apartamentFilterProvider.notifier).openFilters(),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const P(horizontal: S.p16),
              sliver: SliverList.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return NeighbourCard(
                    onTap: () => context.router.push(const AboutGroupRoute()),
                    neighboursModel: NeighboursModel(
                      title: "Тихий уголок в центре",
                      description:
                          "Ищем соседей для уютной квартиры в центре города. Главное для нас — спокойствие, уважение личного пространства и чистота. Гостей приводим редко, любим работать и отдыхать в тишине. Если тебе тоже важен комфортный и размеренный быт — добро пожаловать!",
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: S.p12);
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
