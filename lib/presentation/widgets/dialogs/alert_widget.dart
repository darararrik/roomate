import 'package:flutter/cupertino.dart';

import 'package:roomate/presentation/utils/utils.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
    required this.onCancel,
  });
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          onPressed: onCancel,
          child: Text(
            context.l10n.stay,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.systemBlue,
            ),
          ),
        ),
        CupertinoDialogAction(
          onPressed: onConfirm,
          child: Text(
            context.l10n.exit,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: CupertinoColors.destructiveRed,
            ),
          ),
        ),
      ],
    );
  }
}
