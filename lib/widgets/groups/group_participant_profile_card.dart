import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupParticipantProfileCard extends StatelessWidget {
  const GroupParticipantProfileCard({super.key, required this.participant});

  final ParticipantProfileModel participant;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p12),
      ),
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _ParticipantProfileAvatar(avatarUrl: participant.avatarUrl),
            const SizedBox(width: S.p12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        participant.fullName,
                        style: context.typography.headline2,
                        softWrap: true,
                      ),
                      if (participant.isVerified) ...[
                        const SizedBox(width: S.p4),
                        const AppIcon(
                          AppIcons.verify,
                          width: S.p16,
                          height: S.p16,
                          color: Color(0xFF2979FF),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: S.p8),
                  Text(
                    '${participant.age} лет, ${participant.gender}',
                    style: context.typography.bodySmall.copyWith(
                      color: context.colors.graysText400,
                    ),
                    softWrap: true,
                  ),
                  if (participant.rating.trim().isNotEmpty || participant.reviewsCount > 0) ...[
                    const SizedBox(height: S.p8),
                    Row(
                      children: [
                        const Icon(Icons.star_rounded, size: S.p16, color: Color(0xFFFDC700)),
                        const SizedBox(width: S.p4),
                        Text(participant.rating, style: context.typography.bodySmall),
                        const SizedBox(width: S.p4),
                        Expanded(
                          child: Text(
                            l10n.groupParticipantProfileReviewsCount(participant.reviewsCount),
                            style: context.typography.bodySmall.copyWith(
                              color: context.colors.graysText400,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ParticipantProfileAvatar extends StatelessWidget {
  const _ParticipantProfileAvatar({required this.avatarUrl});

  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    final hasAvatar = avatarUrl.trim().isNotEmpty;

    return Container(
      width: S.p64,
      height: S.p64,
      decoration: BoxDecoration(
        color: context.colors.graysLight100,
        borderRadius: BorderRadius.circular(S.p12),
        image: hasAvatar
            ? DecorationImage(image: NetworkImage(avatarUrl), fit: BoxFit.cover)
            : null,
      ),
      child: hasAvatar
          ? null
          : Center(
              child: AppIcon(
                AppIcons.defaultAvatar,
                width: S.p64,
                height: S.p64,
                color: context.colors.graysText400,
              ),
            ),
    );
  }
}
