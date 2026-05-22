import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class MyAdsTabs extends StatelessWidget {
  const MyAdsTabs({super.key, required this.controller, required this.counts});

  final TabController controller;
  final TabCounts counts;

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
            MyAdsTab(
              title: context.l10n.myAdsActive,
              count: counts.active,
              isSelected: controller.index == 0,
            ),
            MyAdsTab(
              title: context.l10n.myAdsModeration,
              count: counts.moderation,
              isSelected: controller.index == 1,
            ),
            MyAdsTab(
              title: context.l10n.myAdsArchive,
              count: counts.archive,
              isSelected: controller.index == 2,
            ),
          ],
        );
      },
    );
  }
}

class MyAdsTab extends StatelessWidget {
  const MyAdsTab({
    super.key,
    required this.title,
    required this.count,
    required this.isSelected,
  });

  final String title;
  final int count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final selectedColor = context.colors.orange;
    final normalColor = context.colors.graysText400;
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: S.p12,
        children: [
          Flexible(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: context.typography.activesLabel.copyWith(
                color: isSelected ? selectedColor : normalColor,
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: isSelected
                  ? context.colors.opacityOrange20
                  : context.colors.graysLight50,
              borderRadius: .circular(100),
            ),
            child: Padding(
              padding: const P(horizontal: S.p8, vertical: S.p4),
              child: Text(
                '$count',
                style: context.typography.bodySmall.copyWith(
                  color: isSelected ? selectedColor : normalColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabCounts {
  const TabCounts({
    required this.active,
    required this.moderation,
    required this.archive,
  });

  factory TabCounts.fromItems(List<MyAdModel> items) {
    return TabCounts(
      active: items.where((item) => item.status == MyAdStatus.active).length,
      moderation: items
          .where((item) => item.status == MyAdStatus.onModeration)
          .length,
      archive: items.where((item) => item.status == MyAdStatus.archived).length,
    );
  }

  final int active;
  final int moderation;
  final int archive;
}

class PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  const PinnedHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant PinnedHeaderDelegate oldDelegate) {
    return oldDelegate.height != height || oldDelegate.child != child;
  }
}
