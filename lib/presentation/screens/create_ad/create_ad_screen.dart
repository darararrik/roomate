import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/alert_widget.dart';
import 'package:roomate/presentation/widgets/progress_bar_widget.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({super.key});
  //TODO в табах удалить текста тегов из l10n они с бэка должны быть
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        FirstStepRoute(),
        WhatTypeRoomStepRoute(),
        TypeOfPropertyStepRoute(),
        LocationStepRoute(),
        InputDetailsApStepRoute(),
        AddMediaStepRoute(),
        FeautesFirstStepRoute(),
        FeautesSecondStepRoute(),
        DealTermsStepRoute(),
        DescriptionAdStepRoute(),
        ContactsStepRoute(),
        FinishRoute(),
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
          7 => "Условия сделки",
          8 => "Описание объявления",
          9 => "Контакты",
          _ => "Новое объявление",
        };

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(title),
            actions: [
              TextButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertWidget(
                      title: context.l10n.exit,
                      content: context.l10n.draftWillBeSaved,
                      onConfirm: () => context.pop(),
                      onCancel: () => context.pop(),
                    );
                  },
                ),
                child: Text(
                  context.l10n.cancel,
                  style: context.typography.activesButton.copyWith(
                    color: context.colors.lightOrange100,
                  ),
                ),
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
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const P(top: S.p20),
                  child: child,
                ),
              ),
              Padding(
                padding: const P(bottom: S.p24, horizontal: S.p16),
                child: PrimaryButton(
                  text: context.l10n.next,
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
            ],
          ),
        );
      },
    );
  }
}
