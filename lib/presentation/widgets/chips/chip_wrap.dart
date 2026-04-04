import 'package:flutter/material.dart';
import 'package:roomate/domain/models/chip_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/chips/tiny_selectable_chip.dart';

class ChipWrap<T extends ChipModel> extends StatelessWidget {
  const ChipWrap({
    super.key,
    this.title,
    required this.options,
    required this.selectedIds,
    required this.onSelectionChanged,
    this.singleSelection = false,
    this.spacing = S.p8,
    this.runSpacing = S.p8,
  });

  final String? title;
  final List<T> options;
  final Set<int> selectedIds;
  final ValueChanged<Set<int>> onSelectionChanged;
  final bool singleSelection;
  final double spacing;
  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Padding(
            padding: const P(vertical: S.p4),
            child: Text(title!, style: context.typography.headline1),
          ),
          const SizedBox(height: S.p8),
        ],
        Wrap(
          spacing: spacing,
          runSpacing: runSpacing,
          children: List.generate(
            options.length,
            (index) {
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
            },
          ),
        ),
      ],
    );
  }
}
