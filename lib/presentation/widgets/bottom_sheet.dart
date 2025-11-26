import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/buttons.dart';
import 'package:roomate/presentation/widgets/drag_handle.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  final Map<String, bool> traits = {"Алкоголь": true, "Курение": true, "Маты": true};

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

    _controller = GroupButtonController(selectedIndexes: selectedIndexes, disabledIndexes: []);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final buttonsList = traits.keys.toList();
    return SafeArea(
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.55,
        minChildSize: 0.4,
        maxChildSize: 0.7,
        builder: (BuildContext context, ScrollController scrollController) {
          return Padding(
            padding: const P(horizontal: S.p24),
            child: DecoratedBox(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  const SizedBox(height: S.p8),
                  const DragHandle(),
                  Padding(
                    padding: const P(vertical: S.p24),
                    child: Text("dadada", style: context.textStyle.headline1),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView(
                      controller: scrollController,
                      padding: const P(top: S.p24, bottom: S.p64),
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
                                  borderRadius: .circular(S.p12),
                                  color: context.colors.white,
                                  border: Border.all(
                                    color: selected ? context.colors.orange100 : context.colors.stroke300,
                                  ),
                                ),

                                child: Padding(
                                  padding: const P(vertical: S.p12, left: S.p32, right: S.p16),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const P(vertical: S.p12),
                                        child: Text(tag, style: context.textStyle.bodyDescription),
                                      ),
                                      const Spacer(),
                                      Visibility(
                                        visible: selected,
                                        replacement: DecoratedBox(
                                          decoration: BoxDecoration(
                                            borderRadius: .circular(S.p4),
                                            //TODO:Цвет бордера
                                            border: .all(color: context.colors.stroke300),
                                          ),
                                          child: const SizedBox(width: S.p20, height: S.p20),
                                        ),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: context.colors.orange100,
                                            borderRadius: .circular(S.p4),
                                            border: .all(color: context.colors.orange100),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.check_rounded, color: context.colors.white, size: S.p20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          options: const GroupButtonOptions(crossGroupAlignment: .start, groupingType: .column),
                        ),
                        Padding(
                          padding: const P(top: S.p24),
                          child: PrimaryButton(titleText: Text(context.l10n.apply), onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
