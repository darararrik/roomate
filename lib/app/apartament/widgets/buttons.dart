import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.onCallPressed,
    required this.onWritePressed,
  });

  final VoidCallback onCallPressed;
  final VoidCallback onWritePressed;

  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    return SafeArea(
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const P(vertical: S.p20, horizontal: S.p16),
          child: Row(
            spacing: S.p12,
            children: [
              Expanded(
                child: PrimaryButton(
                  text: locale.call,
                  onPressed: onCallPressed,
                ),
              ),
              Expanded(
                child: OpacityButton(
                  onPressed: onWritePressed,
                  bgColor: context.colors.opacityOrange20,
                  color: context.colors.orange,
                  text: locale.write,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
