import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class TraitBottomSheet extends StatefulWidget {
  const TraitBottomSheet({super.key});

  @override
  State<TraitBottomSheet> createState() => _TraitBottomSheetState();
}

class _TraitBottomSheetState extends State<TraitBottomSheet> {
  final Map<String, bool> traits = {
    "Алкоголь": true,
    "Курение": true,
    "Маты": true,
  };

  late final GroupButtonController _controller;
  @override
  void initState() {
    super.initState();
    final selectedIndexes = traits.values
        .toList()
        .asMap()
        .entries
        .where((entry) => entry.value == true)
        .map((entry) => entry.key)
        .toList();

    _controller = GroupButtonController(
      selectedIndexes: selectedIndexes,
      disabledIndexes: [],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final buttonsList = traits.keys.toList();
    return BaseBottomSheet(
      title: context.l10n.traitAge,
      child: Padding(
        padding: const P(horizontal: S.p24),
        child: Column(
          children: [
            GroupButton(
              controller: _controller,
              isRadio: false,
              buttons: buttonsList,
              onSelected: (val, index, isSelected) {
                debugPrint('Button: $val index: $index selected: $isSelected');
              },
              buttonBuilder: (selected, tag, context) {
                return Padding(
                  padding: const P(bottom: S.p12),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(S.p12),
                      color: context.colors.graysWhite,
                      border: Border.all(
                        color: selected
                            ? context.colors.lightOrange100
                            : context.colors.graysStroke300,
                      ),
                    ),

                    child: Padding(
                      padding: const P(
                        vertical: S.p12,
                        left: S.p32,
                        right: S.p16,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const P(vertical: S.p12),
                              child: Text(
                                tag,
                                style: context.typography.bodyDescription,
                              ),
                            ),
                          ),
                          SelectionButton(isSelected: selected),
                        ],
                      ),
                    ),
                  ),
                );
              },
              options: const GroupButtonOptions(
                crossGroupAlignment: CrossGroupAlignment.start,
                groupingType: GroupingType.column,
              ),
            ),
            Padding(
              padding: const P(top: S.p24),
              child: PrimaryButton(text: context.l10n.apply, onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
