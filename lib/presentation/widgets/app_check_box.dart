import 'package:flutter/material.dart';

import 'package:roomate/presentation/presentation.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({super.key, required this.selected});
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: selected,
      replacement: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(S.p4),
          //TODO:Цвет бордера
          border: Border.all(color: context.colors.stroke300),
        ),
        child: const SizedBox(width: S.p20, height: S.p20),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.orange100,
          borderRadius: BorderRadius.circular(S.p4),
          border: Border.all(color: context.colors.orange100),
        ),
        child: Center(
          child: Icon(Icons.check_rounded, color: context.colors.white, size: S.p20),
        ),
      ),
    );
  }
}
