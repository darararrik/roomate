import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';

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
                Text(context.l10n.tellUsAboutYourself1, style: context.textStyle.headline1),
                const SizedBox(height: S.p8),
                Text(
                  context.l10n.tellUsAboutYourself2,
                  style: context.textStyle.headline2.copyWith(color: context.colors.text400),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final category = categories[index];
            return SelectableTagGroup(
              title: category["title"] as String,
              tags: List<String>.from(category["tags"] as List),
              onTagSelected: (tag, selected) {
                debugPrint("Выбрано: $tag ($selected)");
              },
            );
          }, childCount: categories.length),
        ),
      ],
    );
  }
}
