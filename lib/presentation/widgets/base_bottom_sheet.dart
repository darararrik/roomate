import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions/build_context_x.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/drag_handle.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(top: S.p8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const DragHandle(),
          Padding(
            padding: const P(all: S.p24),
            child: Text(title, style: context.textStyle.headline1),
          ),
          const Divider(),
          const SizedBox(height: S.p12),
          child,
        ],
      ),
    );
  }
}
