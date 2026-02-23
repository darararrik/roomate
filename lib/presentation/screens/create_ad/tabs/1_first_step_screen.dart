import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';

@RoutePage()
class FirstStepScreen extends StatelessWidget {
  const FirstStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": context.l10n.rent,
        "tags": [context.l10n.longTerm, context.l10n.daily, context.l10n.trade],
      },
      {
        "title": context.l10n.whoReadyToRentTo,
        "tags": [
          context.l10n.toOnePerson,
          context.l10n.toGroup,
          context.l10n.toFamily,
          context.l10n.toStudents,
        ],
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
