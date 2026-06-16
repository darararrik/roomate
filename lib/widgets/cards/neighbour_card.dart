import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class NeighbourCard extends StatelessWidget {
  const NeighbourCard({
    super.key,
    required this.onTap,
    required this.group,
    this.showMatchPercent = true,
  });

  final VoidCallback onTap;
  final GroupListItemModel group;
  final bool showMatchPercent;

  @override
  Widget build(BuildContext context) {
    final hasMatchPercent = showMatchPercent && group.matchPercent > 0;
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysWhite,
          boxShadow: [context.colors.shadow],
          borderRadius: BorderRadius.circular(S.p12),
        ),
        child: Padding(
          padding: const P(vertical: S.p20, horizontal: S.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const P(horizontal: S.p4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (hasMatchPercent)
                      ChipMatch(matchPercent: group.matchPercent),
                    if (hasMatchPercent) const SizedBox(height: S.p12),
                    Text(group.title, style: context.typography.headline1),
                    const SizedBox(height: S.p8),
                    Text(
                      group.description,
                      style: context.typography.bodySmall.copyWith(
                        color: context.colors.graysText400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: S.p12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      OverlappingAvatars(
                        avatarSize: S.p36,
                        avatarUrls: group.participantAvatars,
                      ),
                      const SizedBox(height: S.p8),
                      //TODO: l10n cделать склонение участников
                      Text(
                        "${group.participantsCount}/${group.maxParticipantsCount} ${context.l10n.participants}",
                        style: context.typography.bodySmall.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const P(right: S.p8),
                    child: Text(
                      group.price,
                      style: context.typography.headline2.copyWith(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
