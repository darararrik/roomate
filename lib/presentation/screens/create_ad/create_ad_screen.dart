import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/buttons/cancel_button.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        TagRoute(stepKey: SelectionStepKey.rentType),
        TagRoute(stepKey: SelectionStepKey.roomType),
        TagRoute(stepKey: SelectionStepKey.propertyType),
        const LocationStepRoute(),
        const InputDetailsApStepRoute(),
        const AddMediaStepRoute(),
        TagRoute(stepKey: SelectionStepKey.featuresFirst),
        TagRoute(stepKey: SelectionStepKey.featuresSecond),
        TagRoute(stepKey: SelectionStepKey.dealTerms),
        const DescriptionAdStepRoute(),
        const ContactsStepRoute(),
        const ResultAdRoute(),
        const FinishRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        final totalPages = tabsRouter.pageCount;
        final activeIndex = tabsRouter.activeIndex;
        final String title = switch (activeIndex) {
          0 || 1 || 2 => context.l10n.newAdvertisement,
          3 || 4 => context.l10n.apartmentRent,
          5 => "Фото и видео квартиры",
          6 => "Особенности квартиры",
          7 => "Вещи в квартире",
          8 => "Условия сделки",
          9 => "Описание объявления",
          10 => "Контакты",
          11 => "Проверьте объявление",
          _ => "Новое объявление",
        };

        return Scaffold(
          bottomNavigationBar: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.graysWhite,
              boxShadow: [context.colors.bottomNavBarShadow],
            ),
            child: BottomButton(
              onPressed: () {
                final nextIndex = tabsRouter.activeIndex + 1;
                if (nextIndex < tabsRouter.pageCount) {
                  tabsRouter.setActiveIndex(nextIndex);
                } else {
                  // или переход куда нужно
                }
              },
            ),
          ),
          appBar: AppBar(
            centerTitle: false,
            title: Text(title),
            actions: [
              CancelButton(
                title: context.l10n.exit,
                content: context.l10n.draftWillBeSaved,
              ),
            ],
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
                child: ProgressBarWidget(
                  tabsRouter: tabsRouter,
                  totalPages: totalPages,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const P(top: S.p20),
            child: child,
          ),
        );
      },
    );
  }
}
