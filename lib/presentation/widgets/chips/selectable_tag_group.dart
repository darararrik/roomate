import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';

import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/presentation/presentation.dart';

class SelectableTagGroup extends HookWidget {
  const SelectableTagGroup({
    super.key,
    required this.tagsGroup,
    this.description,
    this.isRadio = false,
    this.onTagSelected,
  });

  final TagGroupModel tagsGroup;
  final String? description;
  final bool isRadio;
  final void Function(TagModel tag, bool selected)? onTagSelected;

  @override
  Widget build(BuildContext context) {
    final initialIndexes = tagsGroup.tags
        .asMap()
        .entries
        .where((entry) => entry.value.isSelected)
        .map((entry) => entry.key)
        .toList();

    final controller = useGroupButtonController(initialIndexes: initialIndexes);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tagsGroup.groupTitle, style: context.typography.headline1),
              if (description != null) ...[
                const SizedBox(height: S.p12),
                Text(
                  description!,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ],
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: GroupButton<TagModel>(
            controller: controller,
            isRadio: isRadio,
            buttons: tagsGroup.tags,
            onSelected: (tag, index, isSelected) => onTagSelected?.call(tag, isSelected),
            buttonBuilder: (selected, TagModel tag, context) {
              return Card(
                margin: EdgeInsets.zero,
                elevation: S.p0,
                color: selected ? context.colors.opacityOrange20 : context.colors.graysLight100,
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(S.p12),
                ),
                child: Padding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  child: Text(
                    tag.title,
                    style: context.typography.activesLabel.copyWith(
                      color: selected ? context.colors.orange : context.colors.graysText400,
                    ),
                  ),
                ),
              );
            },
            options: const GroupButtonOptions(
              groupingType: GroupingType.wrap,
              runSpacing: S.p12,
              mainGroupAlignment: MainGroupAlignment.start,
              spacing: S.p12,
              direction: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
