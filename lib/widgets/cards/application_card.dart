import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:roomate/lib.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({super.key, required this.item, required this.onTap});

  final AdApplicationModel item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = item.ad.imageUrls.isNotEmpty ? item.ad.imageUrls.first : '';

    return Material(
      color: context.colors.graysWhite,
      borderRadius: BorderRadius.circular(S.p28),
      child: InkWell(
        borderRadius: BorderRadius.circular(S.p28),
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(S.p28),
            border: Border.all(color: context.colors.graysStroke300),
          ),
          child: Padding(
            padding: const P(vertical: S.p24, horizontal: S.p24),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: S.p12,
                  children: [
                    _CardImage(imageUrl: imageUrl),
                    Expanded(
                      child: Column(
                        spacing: S.p4,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: S.p4,
                            children: [
                              Text(item.tenant.fullName, style: context.typography.bodyDescription),
                              Visibility(
                                visible: item.tenant.isVerified,
                                child: const AppIcon(
                                  AppIcons.verify,
                                  width: S.p16,
                                  height: S.p16,
                                  color: Color(0xFF2B7FFF),
                                ),
                              ),
                            ],
                          ),
                          //TODO: в l10n
                          Text(
                            '${item.tenant.age} лет',
                            style: context.typography.bodySmall.copyWith(color: context.colors.graysText400),
                          ),
                        ],
                      ),
                    ),
                    const AppIcon(AppIcons.arrowRight, width: S.p32, height: S.p32),
                  ],
                ),
                const SizedBox(height: S.p12),
                const Divider(),
                const SizedBox(height: S.p8),
                Text('Хочет снять', style: context.typography.bodySmall.copyWith(color: context.colors.graysText400)),
                const SizedBox(height: S.p4),
                Text(item.ad.title, style: context.typography.bodyDescription),
                const SizedBox(height: S.p4),
                //TODO: сделать с таймингом "Подана 2 часа назад" и также в l10n
                Text('Подана ${item.createdAt.toRuLongPublishedDate()}', style: context.typography.bodyDescription),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: вынести, поменять на cachedNetworkImage
class _CardImage extends StatelessWidget {
  const _CardImage({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(S.p12),
      child: SizedBox(
        width: S.p48,
        height: S.p48,
        child: imageUrl.isNotEmpty
            ? Image.network(imageUrl, fit: BoxFit.cover, errorBuilder: (_, _, _) => _placeholder(context))
            : _placeholder(context),
      ),
    );
  }

  Widget _placeholder(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.graysLight100),
      child: Center(
        child: AppIcon(AppIcons.docs, color: context.colors.lightOrange100, width: S.p24, height: S.p24),
      ),
    );
  }
}
