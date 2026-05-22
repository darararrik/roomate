import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p4),
      child: Text(title, style: context.typography.headline1),
    );
  }
}
