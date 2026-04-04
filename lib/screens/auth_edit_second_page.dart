import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class AuthEditSecondPage extends StatelessWidget {
  const AuthEditSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": "Тип личности",
        "tags": ["Интроверт", "Амбиверт", "Экстраверт"],
      },
      {
        "title": "Привычки",
        "tags": ["Курение", "Алкоголь", "Кофе", "ЗОЖ"],
      },
      {
        "title": "Домашние животные",
        "tags": ["Кошка", "Собака", "Попугай", "Без животных"],
      },
    ];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const P(vertical: S.p28),
            child: Column(
              children: [
                Text(
                  context.l10n.tellUsAboutYourselfTitle,
                  style: context.typography.headline1,
                ),
                const SizedBox(height: S.p8),
                Text(
                  context.l10n.tellUsAboutYourselfSubtitle,
                  style: context.typography.headline2.copyWith(
                    color: context.colors.graysText400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            // ignore: unused_local_variable
            final category = categories[index];
            return null;
            // return SelectableTagGroup(
            //   tags: TagsGroupModel(
            //     title: category["title"] as String,
            //     tags: List<String>.from(category["tags"] as List),
            //     isRadio: false,
            //   ),
            //   onTagSelected: (tag, selected) {
            //     debugPrint("Выбрано: $tag ($selected)");
            //   },
            // );
          }, childCount: categories.length),
        ),
      ],
    );
  }
}
