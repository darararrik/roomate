import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class OverlappingAvatars extends StatelessWidget {
  const OverlappingAvatars({
    super.key,
    required this.avatarSize,
    this.overlap = 10,
    this.avatarUrls = const [],
  });

  final double avatarSize;
  final double overlap; // насколько они перекрываются
  final List<String> avatarUrls;

  @override
  Widget build(BuildContext context) {
    final avatars = avatarUrls;
    //TODO: если нету аваторок сделай AppIcons.defaultAvatar
    final totalWidth =
        avatarSize + (avatars.length - 1) * (avatarSize - overlap);
    if (avatars.isEmpty) {
      return DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: S.p1_3),
          color: context.colors.graysLight100,
        ),
        child: SizedBox.square(
          dimension: avatarSize,
          child: Center(
            child: AppIcon(
              AppIcons.defaultAvatar,
              width: avatarSize,
              height: avatarSize,
            ),
          ),
        ),
      );
    }
    return SizedBox(
      width: totalWidth,
      height: avatarSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (int i = 0; i < avatars.length; i++)
            Positioned(
              left: i * (avatarSize - overlap),
              child: NetworkAvatar(
                imageUrl: avatars[i],
                size: avatarSize,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: S.p1_3),
                backgroundColor: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
