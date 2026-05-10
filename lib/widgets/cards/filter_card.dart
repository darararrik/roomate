import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.onTap,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyle = context.typography.activesLabel;
    return InkWell(
      borderRadius: BorderRadius.circular(S.p12),
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(S.p12),
          color: colors.graysLight100,
          border: Border.all(color: colors.graysInput200),
        ),
        child: Padding(
          padding: const P(horizontal: S.p12, vertical: S.p8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leading != null) ...[leading!, const SizedBox(width: S.p8)],
              Text(title, style: textStyle),
              if (trailing != null) ...[const SizedBox(width: S.p4), trailing!],
            ],
          ),
        ),
      ),
    );
  }
}
