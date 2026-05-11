import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import 'package:roomate/lib.dart';

class GroupParticipantTile extends StatelessWidget {
  const GroupParticipantTile({
    super.key,
    required this.participant,
    required this.onTap,
  });

  final ParticipantModel participant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(S.p12),
      child: Padding(
        padding: const P(vertical: S.p8),
        child: Row(
          children: [
            GroupParticipantAvatar(
              avatarUrl: participant.avatarUrl,
              size: S.p56,
            ),
            const SizedBox(width: S.p12),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      participant.fullName,
                      style: context.typography.headline2.copyWith(
                        color: context.colors.graysText700,
                      ),
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
            ),
            if (participant.role.trim().isNotEmpty) ...[
              const SizedBox(width: S.p12),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(S.p16),
                  border: Border.all(color: context.colors.lightOrange100),
                ),
                child: Padding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  child: Text(
                    participant.role,
                    style: context.typography.activesButton.copyWith(
                      color: context.colors.orange,
                    ),
                  ),
                ),
              ),
            ],
            const SizedBox(width: S.p12),
            AppIcon(
              AppIcons.arrowRight,
              width: S.p24,
              height: S.p24,
              color: context.colors.graysIcon500,
            ),
          ],
        ),
      ),
    );
  }
}
