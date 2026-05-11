import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

class GroupParticipantProfileCard extends StatelessWidget {
  const GroupParticipantProfileCard({super.key, required this.participant});

  final ParticipantProfileModel participant;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p24),
      ),
      child: Padding(
        padding: const P(all: S.p24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GroupParticipantAvatar(
              avatarUrl: participant.avatarUrl,
              size: S.p96,
            ),
            const SizedBox(width: S.p16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          participant.fullName,
                          style: context.typography.headline0,
                          softWrap: true,
                        ),
                      ),
                      if (participant.isVerified) ...[
                        const SizedBox(width: S.p8),
                        const AppIcon(
                          AppIcons.verified,
                          width: S.p24,
                          height: S.p24,
                          color: Color(0xFF2979FF),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: S.p8),
                  Text(
                    '${participant.age} лет, ${participant.gender}',
                    style: context.typography.headline2.copyWith(
                      color: context.colors.graysText400,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: S.p12),
                  Row(
                    children: [
                      const Text('⭐', style: TextStyle(fontSize: 20)),
                      const SizedBox(width: S.p8),
                      Text(
                        participant.rating,
                        style: context.typography.headline1,
                      ),
                      const SizedBox(width: S.p8),
                      Expanded(
                        child: Text(
                          '(${participant.reviewsCount} оценок)',
                          style: context.typography.headline2.copyWith(
                            color: context.colors.graysText400,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
