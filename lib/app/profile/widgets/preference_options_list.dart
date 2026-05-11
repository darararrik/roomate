import 'package:flutter/material.dart';

import 'package:domain/models/common/option_model.dart';

import 'package:roomate/lib.dart';

class PreferenceOptionsList extends StatelessWidget {
  const PreferenceOptionsList({
    super.key,
    required this.options,
    required this.selectedIds,
    required this.isMulti,
    required this.onChanged,
  });

  final List<OptionModel> options;
  final Set<int> selectedIds;
  final bool isMulti;
  final ValueChanged<Set<int>> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final option in options)
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (option.isDisabled) return;

              final isSelected = selectedIds.contains(option.id);
              final nextIds = Set<int>.from(selectedIds);

              if (isMulti) {
                isSelected ? nextIds.remove(option.id) : nextIds.add(option.id);
              } else {
                nextIds
                  ..clear()
                  ..addAll(isSelected ? const <int>[] : [option.id]);
              }

              onChanged(nextIds);
            },
            child: Padding(
              padding: const P(bottom: S.p12),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(S.p12),
                  color: context.colors.graysWhite,
                  border: Border.all(
                    color: selectedIds.contains(option.id)
                        ? context.colors.lightOrange100
                        : context.colors.graysStroke300,
                  ),
                ),

                child: Padding(
                  padding: const P(vertical: S.p12, left: S.p32, right: S.p16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const P(vertical: S.p12),
                          child: Text(
                            option.title,
                            style: context.typography.bodyDescription,
                          ),
                        ),
                      ),
                      SelectionButton(
                        isSelected: selectedIds.contains(option.id),
                        isRadio: !isMulti,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
