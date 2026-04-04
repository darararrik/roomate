import 'package:flutter/material.dart';

import 'package:roomate/constants/spacing.dart';
import 'package:roomate/utils/extensions.dart';
import 'package:roomate/utils/helpers/p.dart';
import 'package:roomate/widgets/widgets.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const P(top: S.p8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const DragHandle(),
            Padding(
              padding: const P(top: S.p24, bottom: S.p20),
              child: Text(title, style: context.typography.headline1),
            ),
            const Divider(),
            const SizedBox(height: S.p12),
            child,
          ],
        ),
      ),
    );
  }
}
