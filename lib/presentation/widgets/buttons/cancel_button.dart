import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertWidget(
            title: title,
            content: content,
            onConfirm: () => context.pop(),
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
