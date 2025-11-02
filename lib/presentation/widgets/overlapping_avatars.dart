import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/constants.dart';

class OverlappingAvatars extends StatelessWidget {
  const OverlappingAvatars({super.key, required this.avatarSize, this.overlap = 10});

  final double avatarSize;
  final double overlap; // насколько они перекрываются

  @override
  Widget build(BuildContext context) {
    // TODO: Вынести в мок
    final avatars = [
      'https://i.pravatar.cc/150?img=1',
      'https://i.pravatar.cc/150?img=2',
      'https://i.pravatar.cc/150?img=3',
      'https://i.pravatar.cc/150?img=4',
    ];

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
