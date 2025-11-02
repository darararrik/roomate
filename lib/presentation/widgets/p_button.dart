import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class PButton extends StatelessWidget {
  const PButton({super.key, required this.title, this.onPressed, this.style});

  factory PButton.withOpacity({required String title, required VoidCallback onPressed, required BuildContext context}) {
    return PButton(
      title: title,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.appColors.white10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(S.p33)),
      ),
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
