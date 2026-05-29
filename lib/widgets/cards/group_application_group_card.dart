import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class GroupApplicationGroupCard extends StatelessWidget {
  const GroupApplicationGroupCard({
    super.key,
    required this.group,
    required this.onTap,
  });

  final GroupListItemModel group;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = group.apartament.imageUrls.isNotEmpty
        ? group.apartament.imageUrls.first
        : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Хочет присоединиться', style: context.typography.headline1),
        const SizedBox(height: S.p12),
        Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(S.p12),
            onTap: onTap,
            child: Padding(
              padding: const P(vertical: S.p12),
              child: Row(
                spacing: S.p12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(S.p12),
                    child: SizedBox(
                      width: S.p72,
                      height: S.p72,
                      child: imageUrl.isNotEmpty
                          ? Image.network(
                              imageUrl,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) => ColoredBox(
                                color: context.colors.opacityOrange20,
                              ),
                            )
                          : ColoredBox(color: context.colors.opacityOrange20),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: S.p4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          group.title,
                          style: context.typography.bodyDescription,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${group.price} ${context.l10n.currencyPerMonth}',
                          style: context.typography.bodyDescription,
                        ),
                        Text(
                          '${group.participantsCount}/${group.maxParticipantsCount} ${context.l10n.participants}',
                          style: context.typography.bodySmall.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                        Text(
                          group.apartament.address,
                          style: context.typography.bodySmall.copyWith(
                            color: context.colors.graysText400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const AppIcon(
                    AppIcons.arrowRight,
                    width: S.p32,
                    height: S.p32,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: S.p12),
        const Divider(),
      ],
    );
  }
}
