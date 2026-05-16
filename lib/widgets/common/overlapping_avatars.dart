import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';

class OverlappingAvatars extends StatelessWidget {
  const OverlappingAvatars({super.key, required this.avatarSize, this.overlap = 10, this.avatarUrls = const []});

  final double avatarSize;
  final double overlap; // насколько они перекрываются
  final List<String> avatarUrls;

  @override
  Widget build(BuildContext context) {
    final avatars = avatarUrls;

    final totalWidth = avatarSize + (avatars.length - 1) * (avatarSize - overlap);
    return SizedBox(
      width: totalWidth,
      height: avatarSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (int i = 0; i < avatars.length; i++)
            Positioned(
              left: i * (avatarSize - overlap),
              child: SizedBox(
                width: avatarSize,
                height: avatarSize,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: S.p1_3),
                    image: DecorationImage(image: NetworkImage(avatars[i]), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
