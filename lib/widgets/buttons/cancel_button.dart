import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.title,
    required this.content,
    this.onConfirm,
  });
  final String title;
  final String content;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    final parentContext = context;
    return TextButton(
      onPressed: () => showDialog(
        context: parentContext,
        builder: (BuildContext context) {
          return AlertWidget(
            title: title,
            content: content,
            onConfirm: () {
              context.pop();
              onConfirm?.call();
            },
            onCancel: () => context.pop(),
          );
        },
      ),
      child: Text(
        context.l10n.cancel,
        style: context.typography.activesButton.copyWith(
          color: context.colors.lightOrange100,
        ),
      ),
    );
  }
}
