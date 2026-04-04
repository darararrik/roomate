import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';

class AppGroupButton<T> extends StatelessWidget {
  const AppGroupButton({
    super.key,
    required this.buttons,
    required this.onSelected,
    this.controller,
    this.isRadio = false,
    this.labelBuilder,
  });

  final List<T> buttons;
  final GroupButtonController? controller;
  final Function(T value, int index, bool isSelected) onSelected;
  final bool isRadio;
  final String Function(T)? labelBuilder;

  @override
  Widget build(BuildContext context) {
    return GroupButton<T>(
      controller: controller,
      isRadio: isRadio,
      buttons: buttons,
      onSelected: onSelected,
      buttonBuilder: (selected, T data, context) {
        final label = labelBuilder?.call(data) ?? data.toString();
        return ClipRRect(
          borderRadius: BorderRadius.circular(S.p12),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: selected ? context.colors.opacityOrange20 : context.colors.graysLight100,
              borderRadius: BorderRadius.circular(S.p12),
            ),
            child: Padding(
              padding: const P(horizontal: S.p16, vertical: S.p12),
              child: Text(
                label,
                style: context.typography.activesLabel.copyWith(
                  color: selected ? context.colors.orange : context.colors.graysText400,
                ),
              ),
            ),
          ),
        );
      },
      options: const GroupButtonOptions(
        groupingType: GroupingType.wrap,
        mainGroupAlignment: MainGroupAlignment.start,
        spacing: S.p12,
        runSpacing: S.p12,
        direction: Axis.horizontal,
      ),
    );
  }
}
