import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class ChipWrap<T extends ChipModel> extends StatelessWidget {
  const ChipWrap({
    super.key,
    required this.title,
    required this.options,
    required this.selectedIds,
    required this.onSelectionChanged,
    this.singleSelection = false,
    this.spacing = S.p12,
    this.runSpacing = S.p12,
    this.errorText = '',
  });

  final String title;
  final List<T> options;
  final Set<int> selectedIds;
  final ValueChanged<Set<int>> onSelectionChanged;
  final bool singleSelection;
  final double spacing;
  final double runSpacing;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(title, style: context.typography.headline1),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: List.generate(options.length, (index) {
              final opt = options[index];
              bool isSel = selectedIds.contains(opt.id);
              return TinySelectableChip(
                label: opt.label,
                selected: isSel,
                disabled: opt.isDisabled,
                onSelected: (value) {
                  final newSet = Set<int>.from(selectedIds);
                  if (singleSelection) {
                    if (value) {
                      newSet.clear();
                      newSet.add(opt.id);
                    } else {
                      newSet.clear();
                    }
                  } else {
                    value ? newSet.add(opt.id) : newSet.remove(opt.id);
                  }
                  onSelectionChanged(newSet);
                },
              );
            }),
          ),
        ),
        FieldErrorText(text: errorText),
      ],
    );
  }
}
