import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

class MultiSelectChipGroup<T extends ChipModel> extends StatelessWidget {
  const MultiSelectChipGroup({
    super.key,
    required this.options,
    required this.selectedIds,
    required this.onSelectionChanged,
    this.singleSelection = false,
    this.chipHeight = S.p32,
    this.controller,
    this.listPadding = EdgeInsets.zero,
    this.labelBuilder,
  });

  final List<T> options;
  final Set<int> selectedIds;
  final ValueChanged<Set<int>> onSelectionChanged;
  final bool singleSelection;
  final double chipHeight;
  final ScrollController? controller;
  final EdgeInsetsGeometry listPadding;

  final String Function(BuildContext context, T opt)? labelBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: chipHeight,
      child: ListView.separated(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        padding: listPadding,
        itemCount: options.length,
        separatorBuilder: (_, _) => const SizedBox(width: S.p8),
        itemBuilder: (context, index) {
          final opt = options[index];
          final isSel = selectedIds.contains(opt.id);

          final label = labelBuilder != null
              ? labelBuilder!(context, opt)
              : opt.label;

          return TinySelectableChip(
            label: label,
            selected: isSel,
            disabled: opt.isDisabled,
            height: chipHeight,
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
    );
  }
}
