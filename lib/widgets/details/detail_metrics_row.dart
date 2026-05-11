import 'package:flutter/material.dart';

import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';

class DetailMetricItemData {
  const DetailMetricItemData({required this.value, required this.label});

  final String value;
  final String label;
}

class DetailMetricsRow extends StatelessWidget {
  const DetailMetricsRow({super.key, required this.items});

  final List<DetailMetricItemData> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < items.length; i++) ...[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: S.p4,
              children: [
                Text(items[i].value, softWrap: true),
                Text(
                  items[i].label,
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
          if (i != items.length - 1) const SizedBox(width: S.p16),
        ],
      ],
    );
  }
}
