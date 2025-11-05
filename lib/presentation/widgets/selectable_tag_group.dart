import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';

class SelectableTagGroup extends StatelessWidget {
  const SelectableTagGroup({
    super.key,
    required this.title,
    required this.tags,
    this.isRadio = false,
    this.onTagSelected,
  });
  final String title;
  final List<String> tags;
  final bool isRadio;
  final void Function(String tag, bool selected)? onTagSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p12),
          child: Text(title, style: context.textStyle.headline2),
        ),
        GroupButton<String>(
          isRadio: isRadio,
          buttons: tags,
          onSelected: (tag, index, isSelected) => onTagSelected?.call(tag, isSelected),
          buttonBuilder: (selected, String tag, context) {
            return Card(
              elevation: S.p0,
              color: selected ? context.colors.orange60 : context.colors.light100,
              shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(S.p13)),
              child: Padding(
                padding: const P(horizontal: S.p16, vertical: S.p12),
                child: Text(
                  tag,
                  style: context.textStyle.activesLabel.copyWith(
                    color: selected ? context.colors.white : context.colors.text400,
                  ),
                ),
              ),
            );
          },
          options: const GroupButtonOptions(
            groupingType: GroupingType.wrap,
            runSpacing: S.p4,
            mainGroupAlignment: MainGroupAlignment.start,
            spacing: S.p12,
            direction: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
