import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';

class DetailSection extends StatelessWidget {
  const DetailSection({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.typography.headline1),
          const SizedBox(height: S.p12),
          child,
          const SizedBox(height: S.p12),
          const Divider(),
        ],
      ),
    );
  }
}
