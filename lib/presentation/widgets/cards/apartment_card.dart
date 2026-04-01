import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class ApartmentCard extends HookWidget {
  const ApartmentCard({
    super.key,
    required this.apartment,
    required this.isFavorite,
    this.onTap,
    this.onFavoriteTap,
  });

  final ApartamentModel apartment;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final imageUrls = apartment.imageUrls;
    final currentPage = useState(0);
    final visibleDotsCount = imageUrls.length > 5 ? 5 : imageUrls.length;
    final startIndex = imageUrls.length <= 5
        ? 0
        : (currentPage.value - 2).clamp(0, imageUrls.length - visibleDotsCount);

    return Padding(
      padding: const P(horizontal: S.p16),
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(.circular(S.p12)),
        child: InkWell(
          borderRadius: const BorderRadius.all(.circular(S.p12)),
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(.circular(S.p12)),
              color: colors.graysWhite,
              boxShadow: [colors.shadow],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(S.p12),
                  ),
                  child: SizedBox(
                    height: S.p163,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        PageView.builder(
                          itemCount: imageUrls.length,
                          onPageChanged: (index) => currentPage.value = index,
                          itemBuilder: (context, index) {
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.network(
                                  imageUrls[index],
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, _, _) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          colors.lightOrange100,
                                          colors.graysLight100,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        colors.opacityBlack60.withValues(
                                          alpha: .08,
                                        ),
                                        Colors.transparent,
                                        colors.opacityBlack60.withValues(
                                          alpha: .28,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Positioned(
                          left: S.p12,
                          right: S.p12,
                          bottom: S.p12,
                          child: IgnorePointer(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(visibleDotsCount, (
                                index,
                              ) {
                                final pageIndex = startIndex + index;
                                final isActive = pageIndex == currentPage.value;

                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 180),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: S.p4,
                                  ),
                                  width: isActive ? S.p20 : S.p6,
                                  height: S.p6,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      .circular(S.p12),
                                    ),
                                    color: isActive
                                        ? colors.graysWhite
                                        : colors.graysWhite.withValues(
                                            alpha: .45,
                                          ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const P(all: S.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: S.p8,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${apartment.price} ${context.l10n.currencyPerMonth}",
                            style: context.typography.headline1,
                          ),
                          IconButtonWidget(
                            icon: AppIcons.favourite,
                            onPressed: onFavoriteTap,
                            iconColor: isFavorite
                                ? colors.orange
                                : colors.graysIcon500,
                            size: S.p24,
                            iconSize: S.p24,
                          ),
                        ],
                      ),
                      Text(
                        "${apartment.roomsCount} ${context.l10n.apartmentRoomsShort}, ${apartment.area}${context.l10n.squareMeters}, ${context.l10n.floor} ${apartment.floor}/${apartment.totalFloor}",
                        style: context.typography.bodyDescription,
                      ),
                      Text(
                        apartment.address,
                        style: context.typography.bodySmall.copyWith(
                          color: colors.graysText400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
