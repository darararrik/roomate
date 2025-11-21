import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class AppDropdownStyles {
  static DropdownStyleData countryCodeDropdownStyle(BuildContext context) {
    return DropdownStyleData(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(S.p16), color: context.colors.input200),
      offset: const Offset(0, 0),
      elevation: 2,
      scrollbarTheme: ScrollbarThemeData(
        radius: const Radius.circular(S.p8),
        thickness: WidgetStateProperty.all(6),
        thumbVisibility: WidgetStateProperty.all(true),
      ),
    );
  }

  // Константа для стиля отдельных пунктов меню
  static const MenuItemStyleData defaultMenuItemStyle = MenuItemStyleData(
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: S.p8),
  );
}
