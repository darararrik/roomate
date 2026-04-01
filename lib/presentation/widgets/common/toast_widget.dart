import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(S.p12),
        color: context.colors.opacityBlack60,
      ),
      child: Padding(
        padding: const P(horizontal: S.p16, vertical: S.p12),
        child: Row(
          mainAxisSize: .min,
          children: [
            const Text('\u2764', style: TextStyle(fontSize: S.p20)),
            const SizedBox(width: S.p8),
            Text(
              context.l10n.inFavorites,
              style: context.typography.headline2.copyWith(color: context.colors.graysWhite),
            ),
          ],
        ),
      ),
    );
  }
}
