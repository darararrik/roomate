import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class ApartmentCard extends HookWidget {
  const ApartmentCard({super.key, required this.apartment, this.onTap});

  final ApartamentModel apartment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final imageUrls = apartment.imageUrls;
    final currentPage = useState(0);
    final visibleDotsCount = imageUrls.length > 5 ? 5 : imageUrls.length;
    final startIndex = imageUrls.length <= 5
        ? 0
        : (currentPage.value - 2).clamp(0, imageUrls.length - visibleDotsCount);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const P(horizontal: S.p16),
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
                            children: List.generate(visibleDotsCount, (index) {
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
                        const AppIcon(
                          AppIcons.favourite,
                          width: S.p24,
                          height: S.p24,
                        ),
                      ],
                    ),
                    Text(
                      "${apartment.roomsCount} комн., ${apartment.area}м², этаж ${apartment.floor}/${apartment.totalFloor}",
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
    );
  }
}
