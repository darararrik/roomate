import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupParticipantTile extends StatelessWidget {
  const GroupParticipantTile({super.key, required this.participant, required this.onTap});

  final ParticipantModel participant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GroupParticipantAvatar(avatarUrl: participant.avatarUrl, size: S.p32),
          const SizedBox(width: S.p12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          participant.fullName,
                          style: context.typography.headline2.copyWith(
                            color: context.colors.graysText700,
                          ),
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

                    if (participant.role.trim().isNotEmpty) ...[
                      Padding(
                        padding: const P(right: S.p12, left: S.p4),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: context.colors.lightOrange100),
                            borderRadius: .circular(S.p12),
                          ),
                          child: Padding(
                            padding: const P(vertical: S.p8, horizontal: S.p12),
                            child: Text(
                              participant.role,
                              style: context.typography.bodySmall.copyWith(
                                color: context.colors.orangeSecond,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          AppIcon(
            AppIcons.arrowRight,
            width: S.p24,
            height: S.p24,
            color: context.colors.graysIcon500,
          ),
        ],
      ),
    );
  }
}
