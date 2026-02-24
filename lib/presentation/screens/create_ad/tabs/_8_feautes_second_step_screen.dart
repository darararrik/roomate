import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';

@RoutePage()
class FeautesSecondStepScreen extends StatelessWidget {
  const FeautesSecondStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": "Мебель",
        "tags": ["Есть", "Нет", "Частично"],
      },
      {
        "title": "Удобства",
        "tags": ["Интернет"],
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
