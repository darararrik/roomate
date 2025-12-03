import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/app_radio_button.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

//TODO: Сделать sortTerms Разными
class SortBottomSheet extends StatelessWidget {
  SortBottomSheet({super.key});

  final List<String> sortTerms = [
    "По популярности",
    "По цене (сначала дешевле)",
    "По цене (сначала дороже)",
    "По дате добавления (сначала новые)",
    "По дате добавления (сначала старые)",
  ];
  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: context.l10n.toSort,
      child: Padding(
        padding: const P(horizontal: S.p24, top: S.p12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GroupButton(
              buttons: sortTerms,
              buttonBuilder: (selected, value, context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(S.p12),
                        child: Text(value, style: context.textStyle.bodyDescription),
                      ),
                    ),
                    AppRadioButton(selected: selected),
                  ],
                );
              },
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
