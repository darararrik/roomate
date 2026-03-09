import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class BottomNextButton extends StatelessWidget {
  const BottomNextButton({super.key, this.onPressed});

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysWhite,
        boxShadow: [context.colors.bottomNavBarShadow],
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p20),
        child: PrimaryButton(text: context.l10n.next, onPressed: onPressed),
      ),
    );
  }
}
