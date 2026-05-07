import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class PlaceholderBottomSheet extends StatelessWidget {
  const PlaceholderBottomSheet({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      title: title,
      child: Padding(
        padding: const P(horizontal: S.p24, bottom: S.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Редактирование этого пункта будет добавлено позже',
              textAlign: TextAlign.center,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
            const SizedBox(height: S.p24),
            PrimaryButton(text: context.l10n.apply, onPressed: () => Navigator.of(context).pop()),
          ],
        ),
      ),
    );
  }
}
