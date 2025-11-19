import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class PButton extends StatelessWidget {
  const PButton({super.key, required this.title, this.onPressed, this.style});

  factory PButton.withOpacity({required String title, required VoidCallback onPressed, required BuildContext context}) {
    return PButton(
      title: title,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: context.colors.white10),
    );
  }
  static Padding botPadding({required String title, required VoidCallback onPressed}) {
    return Padding(
      padding: const P(bottom: S.p40),
      child: PButton(title: title, onPressed: onPressed),
    );
  }

  final String title;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, style: style, child: Text(title));
  }
}
