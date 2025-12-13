import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_radio_button.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class RentDurationBottomSheet extends StatefulWidget {
  const RentDurationBottomSheet({super.key});

  @override
  State<RentDurationBottomSheet> createState() => _RentDurationBottomSheetState();
}

class _RentDurationBottomSheetState extends State<RentDurationBottomSheet> {
  final Map<String, bool> terms = {"На длительный срок": true, "Посуточно": true, "На неделю": false};

  late final GroupButtonController _controller;
  @override
  void initState() {
    super.initState();
    final selectedIndexes = terms.values
        .toList()
        .asMap()
        .entries
        .where((entry) => entry.value == true)
        .map((entry) => entry.key)
        .toList();

    _controller = GroupButtonController(selectedIndexes: selectedIndexes, disabledIndexes: []);
  }

  @override
  Widget build(BuildContext context) {
    final buttonsList = terms.keys.toList();
    return BaseBottomSheet(
      title: context.l10n.rentPeriod,
      child: Padding(
        padding: const P(horizontal: S.p24, top: S.p12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GroupButton(
              controller: _controller,
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
                      color: context.colors.white,
                      border: Border.all(color: selected ? context.colors.orange100 : context.colors.stroke300),
                    ),

                    child: Padding(
                      padding: const P(vertical: S.p12, left: S.p32, right: S.p16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const P(vertical: S.p12),
                              child: Text(tag, style: context.typography.bodyDescription),
                            ),
                          ),
                          AppRadioButton(selected: selected),
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
              padding: const P(top: S.p16),
              child: PrimaryButton(titleText: Text(context.l10n.apply), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
