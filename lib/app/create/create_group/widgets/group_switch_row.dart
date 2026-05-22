import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupSwitchRow extends StatelessWidget {
  const GroupSwitchRow({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const P(vertical: S.p4),
            child: Text(title, style: context.typography.headline2),
          ),
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Switch.adaptive(
            value: value,
            activeTrackColor: context.colors.lightOrange100,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
