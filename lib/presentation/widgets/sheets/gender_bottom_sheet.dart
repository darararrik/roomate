import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:roomate/domain/enums/gender_enum.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/common/selection_widget.dart';

class GenderBottomSheet extends StatelessWidget {
  const GenderBottomSheet({
    super.key,
    required this.onSelected,
    this.selectedGender,
  });
  final void Function(GenderEnum gender, int index, bool isSelected) onSelected;
  final GenderEnum? selectedGender;
  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    final isRadio = true;
    return BaseBottomSheet(
      title: locale.yourGender,
      child: Column(
        spacing: S.p12,
        children: [
          GroupButton<GenderEnum>(
            controller: GroupButtonController(
              selectedIndex: selectedGender?.index,
            ),
            buttons: GenderEnum.values,
            isRadio: isRadio,
            onSelected: onSelected,
            buttonBuilder: (selected, gender, context) {
              return Padding(
                padding: const P(bottom: S.p12, horizontal: S.p16),
                child: SelectionWidget(
                  isRadio: isRadio,
                  isSelected: selected,
                  value: gender.localizedName(locale),
                ),
              );
            },
            options: const GroupButtonOptions(
              crossGroupAlignment: CrossGroupAlignment.start,
              groupingType: GroupingType.column,
            ),
          ),
          Padding(
            padding: const P(horizontal: S.p16, bottom: S.p20),
            child: PrimaryButton(
              text: context.l10n.apply,
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
    );
  }
}
