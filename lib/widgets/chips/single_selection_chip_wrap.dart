import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

//TODO: убрать
class SingleSelectionChipWrap<T extends ChipModel> extends StatelessWidget {
  const SingleSelectionChipWrap({
    super.key,
    required this.options,
    required this.selectedId,
    required this.onSelectionChanged,
    this.isBlured = false,
    this.message,
    this.spacing = S.p8,
    this.runSpacing = S.p8,
  });

  final List<T> options;
  final int? selectedId;
  final ValueChanged<int?> onSelectionChanged;
  final bool isBlured;
  final String? message;
  final double spacing;
  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: ImageFiltered(
            enabled: isBlured,
            imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6, tileMode: TileMode.decal),
            child: Wrap(
              spacing: spacing,
              runSpacing: runSpacing,
              children: List.generate(options.length, (index) {
                final opt = options[index];
                bool isSel = opt.id == selectedId;
                return TinySelectableChip(
                  label: opt.title,
                  selected: isSel,
                  disabled: opt.isDisabled,
                  onSelected: (value) {
                    onSelectionChanged(value ? opt.id : null);
                  },
                );
              }),
            ),
          ),
        ),
        if (isBlured && message != null)
          Text(
            message!,
            textAlign: TextAlign.center,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText700),
          ),
      ],
    );
  }
}
