import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class MyAdCard extends StatelessWidget {
  const MyAdCard({super.key, required this.ad, required this.onTap});

  final MyAdModel ad;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = ad.imageUrls.isNotEmpty ? ad.imageUrls.first : '';

    return Material(
      color: context.colors.graysWhite,
      borderRadius: BorderRadius.circular(S.p24),
      child: InkWell(
        borderRadius: BorderRadius.circular(S.p24),
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(S.p24),
            border: Border.all(color: context.colors.graysStroke300),
          ),
          child: Padding(
            padding: const P(horizontal: S.p12, vertical: S.p24),
            child: Padding(
              padding: const P(horizontal: S.p12),
              child: Row(
                spacing: S.p12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NetworkAvatar(
                    imageUrl: imageUrl,
                    size: S.p64,
                    borderRadius: BorderRadius.circular(S.p12),
                    backgroundColor: context.colors.graysLight100,
                    placeholder: Center(
                      child: AppIcon(
                        AppIcons.docs,
                        color: context.colors.lightOrange100,
                        width: S.p24,
                        height: S.p24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: S.p4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ad.title,
                          style: context.typography.bodyDescription,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${ad.price} ${context.l10n.currencyPerMonth}',
                          style: context.typography.bodyDescription,
                        ),
                        Text(
                          '${ad.roomsCount}, ${ad.area}, ${context.l10n.floor} ${ad.floor}/${ad.totalFloor}',
                          style: context.typography.bodySmall.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                        Text(
                          ad.address,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.typography.bodySmall.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: S.p8),

                  //TODO: заменить иконку и виджет с макета
                  //и сдела боттом щит с Отправитт в архив и удалить
                  Icon(
                    Icons.more_vert_rounded,
                    color: context.colors.graysIcon500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
