import 'package:flutter/material.dart';

import 'package:roomate/presentation/utils/extensions/extensions.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colors.graysLight100,
        foregroundColor: context.colors.graysBlack,
      ),
      child: Text(
        text,
        style: context.typography.activesButton.copyWith(
          color: context.colors.graysText400,
        ),
      ),
    );
  }
}
