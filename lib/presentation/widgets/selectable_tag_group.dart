import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/utils/hooks/group_controller_hook.dart';

class SelectableTagGroup extends HookWidget {
  const SelectableTagGroup({
    super.key,
    required this.title,
    required this.tags,
    this.isRadio = false,
    this.onTagSelected,
    this.description,
  });

  final String title;
  final String? description;
  final List<String> tags;
  final bool isRadio;
  final void Function(String tag, bool selected)? onTagSelected;

  @override
  Widget build(BuildContext context) {
    final controller = useGroupButtonController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: context.typography.headline1),
              if (description != null) ...[
                const SizedBox(height: S.p12),
                Text(
                  description!,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.text400,
                  ),
                ),
              ],
            ],
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: GroupButton<String>(
            controller: controller,
            isRadio: isRadio,
            buttons: tags,
            onSelected: (tag, index, isSelected) =>
                onTagSelected?.call(tag, isSelected),
            buttonBuilder: (selected, String tag, context) {
              return Card(
                margin: EdgeInsets.zero,
                elevation: S.p0,
                color: selected
                    ? context.colors.orange20
                    : context.colors.light100,
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(S.p12),
                ),
                child: Padding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  child: Text(
                    tag,
                    style: context.typography.activesLabel.copyWith(
                      color: selected
                          ? context.colors.orange
                          : context.colors.text400,
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
