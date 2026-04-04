import 'package:flutter/material.dart';

import 'package:roomate/utils/extensions.dart';

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
      padding: const EdgeInsets.only(top: 6, left: 4),
      child: Text(
        text,
        style: context.typography.inputTextRegular.copyWith(
          color: context.colors.red,
          fontSize: 12,
        ),
      ),
    );
  }
}
