import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';

class TinySelectableChip extends StatefulWidget {
  const TinySelectableChip({
    super.key,
    required this.label,
    required this.selected,
    this.disabled = false,
    required this.onSelected,
    this.height = S.p32,
    this.borderRadius = S.p12,
  });

  final String label;
  final bool selected;
  final bool disabled;
  final ValueChanged<bool> onSelected;
  final double height;
  final double borderRadius;

  @override
  State<TinySelectableChip> createState() => _TinySelectableChipState();
}

class _TinySelectableChipState extends State<TinySelectableChip> {
  bool get _disabled => widget.disabled;

  void _handleSelect() => widget.onSelected(!widget.selected);

  @override
  Widget build(BuildContext context) {
    final selected = widget.selected;

    return GestureDetector(
      onTap: _disabled ? null : _handleSelect,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: selected
                ? context.colors.opacityOrange20
                : context.colors.graysLight100,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Padding(
            padding: const P(horizontal: S.p16, vertical: S.p12),
            child: Text(
              widget.label,
              style: context.typography.activesLabel.copyWith(
                color: selected
                    ? context.colors.orange
                    : context.colors.graysText400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
