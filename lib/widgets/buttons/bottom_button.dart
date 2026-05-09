import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class BottomNextButton extends StatelessWidget {
  const BottomNextButton({super.key, this.onPressed, this.text});

  final VoidCallback? onPressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysWhite,
        boxShadow: [context.colors.bottomNavBarShadow],
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p20),
        child: PrimaryButton(
          text: text ?? context.l10n.next,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
