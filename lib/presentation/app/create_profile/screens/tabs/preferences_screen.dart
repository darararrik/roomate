import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/domain/models/tags_group_model.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/chips/selectable_tag_group.dart';

@RoutePage()
class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final colors = context.colors;
    final typography = context.typography;
    return ListView(
      padding: const P(horizontal: S.p16, bottom: S.p60),
      children: [
        Padding(
          padding: const P(vertical: S.p28),
          child: Column(
            spacing: S.p8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                locale.tellUsAboutYourselfTitle,
                style: typography.headline1,
              ),
              Text(
                locale.tellUsAboutYourselfSubtitle,
                textAlign: .center,
                style: typography.headline2.copyWith(
                  color: colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        SelectableTagGroup(
          tags: const TagsGroupModel(
            title: 'Общительность',
            tags: ["Да", "Нет"],
            isRadio: false,
          ),
          selectedTags: const [],
          onTagSelected: (tag, isSelected) {},
        ),
        SelectableTagGroup(
          tags: const TagsGroupModel(
            title: 'Общительность',
            tags: ["Да", "Нет"],
            isRadio: false,
          ),
          selectedTags: const [],
          onTagSelected: (tag, isSelected) {},
        ),
        SelectableTagGroup(
          tags: const TagsGroupModel(
            title: 'Общительность',
            tags: ["Да", "Нет"],
            isRadio: false,
          ),
          selectedTags: const [],
          onTagSelected: (tag, isSelected) {},
        ),
        SelectableTagGroup(
          tags: const TagsGroupModel(
            title: 'Общительность',
            tags: ["Да", "Нет"],
            isRadio: false,
          ),
          selectedTags: const [],
          onTagSelected: (tag, isSelected) {},
        ),
      ],
    );
  }
}
