import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.titleText, this.onPressed, this.style});

  factory PrimaryButton.withOpacity({
    required Text titleText,
    required VoidCallback onPressed,
    required Color backgroundColor,
  }) {
    return PrimaryButton(
      titleText: titleText,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
    );
  }
  static Padding botPadding({required Text titleText, required VoidCallback onPressed}) {
    return Padding(
      padding: const P(bottom: S.p20),
      child: PrimaryButton(titleText: titleText, onPressed: onPressed),
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
