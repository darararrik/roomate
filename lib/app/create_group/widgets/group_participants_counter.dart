import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupParticipantsCounter extends StatelessWidget {
  const GroupParticipantsCounter({
    super.key,
    required this.participantsCount,
    required this.onMinusPressed,
    required this.onPlusPressed,
  });

  final int participantsCount;
  final VoidCallback onMinusPressed;
  final VoidCallback onPlusPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p12),
      ),
      child: Padding(
        padding: const P(all: S.p12),
        child: Row(
          spacing: S.p12,
          children: [
            GestureDetector(onTap: () {}, child: const Icon(Icons.remove_rounded)),
            Text('$participantsCount', style: context.typography.headline1),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.add_rounded, color: colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
