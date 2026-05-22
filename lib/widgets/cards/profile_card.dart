import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.participant,
    this.onCallPressed,
    this.onWritePressed,
  });

  final ParticipantProfileModel participant;
  final VoidCallback? onCallPressed;
  final VoidCallback? onWritePressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hasActions = onCallPressed != null || onWritePressed != null;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p12),
      ),
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NetworkAvatar(
                  imageUrl: participant.avatarUrl,
                  size: S.p64,
                  borderRadius: BorderRadius.circular(S.p12),
                  backgroundColor: context.colors.orange,
                  placeholder: const Center(
                    child: AppIcon(
                      AppIcons.defaultAvatar,
                      width: S.p64,
                      height: S.p64,
                    ),
                  ),
                ),
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
                      const SizedBox(height: S.p8),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: S.p16,
                            color: Color(0xFFFDC700),
                          ),
                          const SizedBox(width: S.p4),
                          Text(
                            participant.rating,
                            style: context.typography.bodySmall,
                          ),
                          const SizedBox(width: S.p4),
                          Expanded(
                            child: Text(
                              l10n.groupParticipantProfileReviewsCount(
                                participant.reviewsCount,
                              ),
                              style: context.typography.bodySmall.copyWith(
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
            if (hasActions) ...[
              const SizedBox(height: S.p16),
              Row(
                spacing: S.p8,
                children: [
                  Expanded(
                    child: OpacityButton(
                      icon: AppIcon(
                        AppIcons.chats,
                        color: context.colors.graysText400,
                      ),
                      onPressed: onWritePressed,
                      bgColor: context.colors.graysWhite,
                      color: context.colors.graysText400,
                      text: l10n.write,
                    ),
                  ),
                  Expanded(
                    child: OpacityButton(
                      icon: AppIcon(
                        AppIcons.phone,
                        color: context.colors.graysText400,
                      ),
                      onPressed: onCallPressed,
                      bgColor: context.colors.graysWhite,
                      color: context.colors.graysText400,
                      text: l10n.call,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
