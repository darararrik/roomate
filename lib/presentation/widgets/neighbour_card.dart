import 'package:flutter/material.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions/list_x.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/chip_match.dart';
import 'package:roomate/presentation/widgets/overlapping_avatars.dart';

class NeighbourCard extends StatelessWidget {
  const NeighbourCard({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysWhite,
          boxShadow: [context.colors.shadow],
          borderRadius: BorderRadius.circular(S.p12),
        ),
        child: Padding(
          padding: const P(vertical: S.p16, horizontal: S.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...[
                const ChipMatch(),
                Text(
                  "Тихий уголок в центре",
                  style: context.typography.headline1,
                ),
                Text(
                  "Ищем соседей для уютной квартиры в центре города. Главное для нас — спокойствие, уважение личного пространства и чистота. Гостей приводим редко, любим работать и отдыхать в тишине. Если тебе тоже важен комфортный и размеренный быт — добро пожаловать!",
                  style: context.typography.bodyDescription,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ].separated(const SizedBox(height: S.p8)),
              const SizedBox(height: S.p12),
              const OverlappingAvatars(avatarSize: S.p36),
              const SizedBox(height: S.p8),
              Text(
                "4/5 ${context.l10n.participants}",
                style: context.typography.bodySmall.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
