import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class PButton extends StatelessWidget {
  const PButton({super.key, required this.titleText, this.onPressed, this.style});

  factory PButton.withOpacity({
    required Text titleText,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return PButton(
      titleText: titleText,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
    );
  }
  static Padding botPadding({required Text titleText, required VoidCallback onPressed}) {
    return Padding(
      padding: const P(bottom: S.p40),
      child: PButton(titleText: titleText, onPressed: onPressed),
    );
  }

  final Text titleText;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, style: style, child: titleText);
  }
}
