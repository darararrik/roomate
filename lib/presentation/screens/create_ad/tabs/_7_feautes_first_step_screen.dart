import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';

@RoutePage()
class FeautesFirstStepScreen extends StatelessWidget {
  const FeautesFirstStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": "Ремонт",
        "tags": ["Без ремонта", "Евро", "Косметический"],
      },
      {
        "title": "Лифты",
        "tags": ["Пассажирский", "Грузовой", "Отсутствует"],
      },
      {
        "title": "Балконы",
        "tags": ["Балкон", "Нет", "Лоджия", "Балкон и лоджия", "Терраса"],
      },
    ];
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final category = categories[index];
            return SelectableTagGroup(
              isRadio: true,
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
