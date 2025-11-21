import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/app_dropdown_styles.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';

class CountryCodeDropdown extends StatelessWidget {
  const CountryCodeDropdown({
    super.key,
    required this.countryCodes,
    required this.selectedCode,
    required this.onChanged,
    this.width = 77, // Фиксированная ширина
  });
  final List<String> countryCodes;
  final String? selectedCode;
  final ValueSetter<String?> onChanged;

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: S.p58,
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(S.p16), color: context.colors.input200),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            customButton: Padding(
              padding: const P(horizontal: S.p16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(AppIcons.arrowDown, color: context.colors.icon500, width: S.p24),
                  const SizedBox(width: S.p4),
                  Text(
                    selectedCode ?? countryCodes[0],
                    style: context.textStyle.inputTextRegular.copyWith(color: context.colors.text400),
                  ),
                ],
              ),
            ),
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(S.p16)),
            ),

            items: countryCodes
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Center(
                      child: Text(
                        item,
                        style: context.textStyle.inputTextRegular.copyWith(color: context.colors.text400),
                      ),
                    ),
                  ),
                )
                .toList(),

            value: selectedCode,
            onChanged: onChanged,
            dropdownStyleData: AppDropdownStyles.countryCodeDropdownStyle(context),
            menuItemStyleData: AppDropdownStyles.defaultMenuItemStyle,
          ),
        ),
      ),
    );
  }
}
