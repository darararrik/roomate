import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        const SizedBox(width: S.p12),
        Text(value, style: context.typography.bodyDescription),
      ],
    );
  }
}
