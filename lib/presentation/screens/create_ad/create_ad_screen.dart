import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        FirstCreateAdStepRoute(),
        SecondCreateAdStepRoute(),
        ThirdStepRoute(),
        FourthStepRoute(),
        FifthStepRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        final totalPages = tabsRouter.pageCount;
        final activeIndex = tabsRouter.activeIndex;
        final String title = switch (activeIndex) {
          0 || 1 => "Новое объявление",
          2 || 3 || 4 || 5 => "Аренда квартиры",
          _ => "Объявление",
        };

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(title),
            leading: BB(
              onPressed: () {
                final prevIndex = tabsRouter.activeIndex - 1;
                if (prevIndex >= 0) {
                  tabsRouter.setActiveIndex(prevIndex);
                } else {
                  //TODO: Протестировать потом
                  // context.navigateTo(const QuizRoute());
                }
              },
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(S.p16),
              child: Padding(
                padding: const P(horizontal: S.p32),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final progress = (tabsRouter.activeIndex + 1) / totalPages;
                    return Stack(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.colors.fillsSecondary,
                            borderRadius: BorderRadius.circular(S.p4),
                          ),
                          child: const SizedBox(
                            height: S.p4,
                            width: double.infinity,
                          ),
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
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const P(horizontal: S.p16),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const P(top: S.p20),
                      child: child,
                    ),
                  ),
                  PrimaryButton(
                    titleText: Text(context.l10n.next),
                    onPressed: () {
                      final nextIndex = tabsRouter.activeIndex + 1;
                      if (nextIndex < tabsRouter.pageCount) {
                        tabsRouter.setActiveIndex(nextIndex);
                      } else {
                        // или переход куда нужно
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
