import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/domain/models/tag_model.dart';
import 'package:roomate/presentation/presentation.dart';

class SelectableTagGroup extends HookWidget {
  const SelectableTagGroup({
    super.key,
    required this.tagsGroup,
    this.description,
    this.onTagSelected,
  });

  final TagGroupModel tagsGroup;
  final String? description;
  final void Function(TagModel tag, bool isSelected)? onTagSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p4),
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
          child: Wrap(
            spacing: S.p12,
            runSpacing: S.p12,
            children: tagsGroup.tags.map((tag) {
              final isSelected = tag.isSelected;

              return InkWell(
                onTap: () {
                  onTagSelected?.call(tag, !isSelected);
                },
                borderRadius: BorderRadius.circular(S.p12),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: isSelected
                        ? context.colors.opacityOrange20
                        : context.colors.graysLight100,
                    borderRadius: BorderRadius.circular(S.p12),
                  ),
                  child: Padding(
                    padding: const P(horizontal: S.p16, vertical: S.p12),
                    child: Text(
                      tag.title,
                      style: context.typography.activesLabel.copyWith(
                        color: isSelected ? context.colors.orange : context.colors.graysText400,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
