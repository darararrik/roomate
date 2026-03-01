import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    super.key,
    required this.tabsRouter,
    required this.totalPages,
  });

  final TabsRouter tabsRouter;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final progress = (tabsRouter.activeIndex + 1) / totalPages;
        return Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.fillsSecondary,
                borderRadius: BorderRadius.circular(S.p4),
              ),
              child: const SizedBox(height: S.p4, width: double.infinity),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: S.p4,
              width: constraints.maxWidth * progress,
              decoration: BoxDecoration(
                color: context.colors.orange,
                borderRadius: BorderRadius.circular(S.p4),
              ),
            ),
          ],
        );
      },
    );
  }
}
