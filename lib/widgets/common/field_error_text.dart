import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

/// Текст ошибки в стиле [InputWidget] (под полем).
class FieldErrorText extends StatelessWidget {
  const FieldErrorText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const P(vertical: S.p4),
      child: Text(
        text,
        style: context.typography.bodyDescription.copyWith(color: context.colors.red),
      ),
    );
  }
}
