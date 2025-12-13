import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';

class MessageCountBadge extends StatelessWidget {
  const MessageCountBadge({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    final bool isCircular = count < S.p10;

    return Visibility(
      visible: count > 0,
      replacement: const SizedBox(height: S.p24),
      child: Container(
        width: isCircular ? S.p20 : null,
        height: S.p24,
        padding: isCircular ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: S.p6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.colors.orange,
          shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircular ? null : BorderRadius.circular(S.p32 / 2),
        ),
        child: Text(
          count.toMessagedCount(),
          style: context.typography.bodySmall.copyWith(color: context.colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
