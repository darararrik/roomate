import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class AdCard extends StatelessWidget {
  const AdCard({super.key, required this.ad});

  final MyAdModel ad;

  @override
  Widget build(BuildContext context) {
    final imageUrl = ad.imageUrls.isNotEmpty ? ad.imageUrls.first : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Хочет снять", style: context.typography.headline1),
        const SizedBox(height: S.p12),
        Padding(
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
                          errorBuilder: (_, _, _) => ColoredBox(color: context.colors.opacityOrange20),
                        )
                      : ColoredBox(color: context.colors.opacityOrange20),
                ),
              ),
              Expanded(
                child: Column(
                  spacing: S.p4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ad.title, style: context.typography.bodyDescription, maxLines: 1, overflow: .ellipsis),
                    Text('${ad.price} ${context.l10n.currencyPerMonth}', style: context.typography.bodyDescription),
                    Text(
                      '${ad.roomsCount}, ${ad.area}, ${context.l10n.floor} ${ad.floor}/${ad.totalFloor}',
                      style: context.typography.bodySmall.copyWith(color: context.colors.graysText400),
                    ),
                    Text(ad.address, style: context.typography.bodySmall.copyWith(color: context.colors.graysText400)),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: S.p12),
        const Divider(),
      ],
    );
  }
}
