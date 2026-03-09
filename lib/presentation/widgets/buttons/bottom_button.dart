import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.onPressed});

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p16),
      child: PrimaryButton(text: context.l10n.next, onPressed: onPressed),
    );
  }
}
