import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
            softWrap: true,
          ),
        ),
        const SizedBox(width: S.p12),
        Flexible(
          fit: FlexFit.tight,
          child: Text(
            value,
            style: context.typography.bodyDescription,
            textAlign: TextAlign.right,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
