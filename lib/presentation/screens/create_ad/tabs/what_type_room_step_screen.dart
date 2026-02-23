import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';

@RoutePage()
class WhatTypeRoomStepScreen extends StatelessWidget {
  const WhatTypeRoomStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": context.l10n.longTermRent,
        "description": context.l10n.whatTypeOfRoom,
        "tags": [context.l10n.residential, context.l10n.commercial],
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
              description: category["description"] as String,
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
