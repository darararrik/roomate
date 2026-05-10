import 'package:domain/models/neighbours_model/neighbours_model.dart';
import 'package:flutter/material.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/utils/utils.dart';
import 'package:roomate/widgets/widgets.dart';

class NeighbourCard extends StatelessWidget {
  const NeighbourCard({super.key, required this.onTap, required this.neighboursModel});
  final VoidCallback onTap;
  final NeighboursModel neighboursModel;
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
          padding: const P(vertical: S.p20, horizontal: S.p12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const P(horizontal: S.p4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ChipMatch(),
                    const SizedBox(height: S.p12),
                    Text(neighboursModel.title, style: context.typography.headline1),
                    const SizedBox(height: S.p8),
                    Text(
                      neighboursModel.description,
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
                      const OverlappingAvatars(avatarSize: S.p36),
                      const SizedBox(height: S.p8),
                      //TODO: l10n cделать склонение участников
                      Text(
                        "${neighboursModel.participantsCount}/${neighboursModel.maxParticipantsCount} ${context.l10n.participants}",
                        style: context.typography.bodySmall.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: P(right: S.p8),
                    child: Text(
                      "${neighboursModel.price} Руб/месяц",
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
