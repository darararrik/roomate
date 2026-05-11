import 'package:flutter/material.dart';

import 'package:roomate/lib.dart';

class GroupParticipantAvatar extends StatelessWidget {
  const GroupParticipantAvatar({
    super.key,
    required this.avatarUrl,
    this.size = S.p56,
  });

  final String avatarUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final hasAvatar = avatarUrl.trim().isNotEmpty;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: context.colors.graysLight100,
        borderRadius: BorderRadius.circular(size / 2),
        image: hasAvatar
            ? DecorationImage(image: NetworkImage(avatarUrl), fit: BoxFit.cover)
            : null,
      ),
      child: hasAvatar
          ? null
          : Center(
              child: AppIcon(
                AppIcons.defaultAvatar,
                width: size / 2,
                height: size / 2,
                color: context.colors.graysText400,
              ),
            ),
    );
  }
}
