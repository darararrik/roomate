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
    return NetworkAvatar(
      imageUrl: avatarUrl,
      size: size,
      shape: BoxShape.circle,
      backgroundColor: context.colors.graysLight100,
      placeholder: Center(
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
