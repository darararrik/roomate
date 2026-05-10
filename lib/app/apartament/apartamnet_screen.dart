import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/apartament/state/apartament_notifier.dart';
import 'package:roomate/app/apartament/widgets/app_bar_and_photo.dart';
import 'package:roomate/app/apartament/widgets/buttons.dart';
import 'package:roomate/app/apartament/widgets/price_and_favorite_icon.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ApartamnetScreen extends ConsumerWidget {
  const ApartamnetScreen({super.key, required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final locale = context.l10n;
    final state = ref.watch(apartamentProvider(apartment));
    final notifier = ref.read(apartamentProvider(apartment).notifier);
    return Scaffold(
      backgroundColor: colors.graysWhite,
      bottomNavigationBar: Buttons(
        onCallPressed: notifier.onCallPressed,
        onWritePressed: notifier.onWritePressed,
      ),
      body: CustomScrollView(
        slivers: [
          AppBarAndPhoto(
            hasImages: state.hasImages,
            pageController: notifier.pageController,
            imageUrls: state.apartment.imageUrls,
            page: state.page,
            colors: colors,
            imagesCount: state.imagesCount,
            onPageChanged: notifier.onPageChanged,
            onPreviousImagePressed: notifier.onPreviousImagePressed,
            onNextImagePressed: notifier.onNextImagePressed,
            onMorePressed: () => notifier.onMorePressed(context),
          ),
          SliverPadding(
            padding: const P(all: S.p16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    crossAxisAlignment: .start,
                    spacing: S.p12,
                    children: [
                      Wrap(
                        spacing: S.p12,
                        runSpacing: S.p8,
                        children: [
                          LabelChip(
                            title: state.verifiedTitle,
                            backgroundColor: context.colors.lightGreen100,
                            color: context.colors.labelGreen,
                            iconPath: AppIcons.verified,
                          ),
                          LabelChip(
                            title: state.companyTitle,
                            backgroundColor: context.colors.lightBlue100,
                            color: context.colors.labelBlue,
                            iconPath: AppIcons.company,
                          ),
                        ],
                      ),
                      PriceAndFavoriteIcon(
                        apartment: apartment,
                        favoriteNotifier: notifier.onFavoritePressed,
                        isFavorite: state.isFavorite,
                        colors: colors,
                      ),
                      Text(
                        apartment.title,
                        style: context.typography.headline1,
                        softWrap: true,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: S.p4,
                              children: [
                                Text(
                                  "${apartment.roomsCount}-${locale.apartmentRoomsShort}",
                                  softWrap: true,
                                ),
                                Text(
                                  locale.apartment,
                                  style: context.typography.bodyDescription
                                      .copyWith(color: colors.graysText400),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: S.p16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: S.p4,
                              children: [
                                Text(
                                  "${apartment.area} ${locale.squareMeters}",
                                  softWrap: true,
                                ),
                                Text(
                                  locale.apartmentArea,
                                  style: context.typography.bodyDescription
                                      .copyWith(color: colors.graysText400),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: S.p16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: S.p4,
                              children: [
                                Text(
                                  "${apartment.floor}/${apartment.totalFloor}",
                                  softWrap: true,
                                ),
                                Text(
                                  locale.floor,
                                  style: context.typography.bodyDescription
                                      .copyWith(color: colors.graysText400),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),

                  Section(
                    title: locale.location,
                    child: Text(
                      apartment.address,
                      style: context.typography.bodyDescription.copyWith(
                        color: colors.graysText400,
                      ),
                    ),
                  ),
                  Section(
                    title: context.l10n.contactTitle,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OwnerCard(apartment: apartment),
                        const SizedBox(height: S.p24),
                        Text(
                          'Размещено: ${state.publishedAt}',
                          style: context.typography.bodyDescription.copyWith(
                            color: colors.graysText400,
                          ),
                        ),
                        const SizedBox(height: S.p8),
                        Text(
                          state.viewsText,
                          style: context.typography.bodyDescription.copyWith(
                            color: colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Section(
                    title: locale.aboutHouse,
                    child: Padding(
                      padding: const P(vertical: S.p8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: S.p12,
                        children: [
                          InfoRow(
                            title: locale.layout,
                            value:
                                apartment.layout?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.renovationLabel,
                            value:
                                apartment.renovation?.title ??
                                locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.elevator,
                            value:
                                apartment.elevatorType?.title ??
                                locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.balconies,
                            value:
                                apartment.balconyType?.title ??
                                locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.furniture,
                            value:
                                apartment.furnitureType?.title ??
                                locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.stove,
                            value:
                                apartment.stoveType?.title ??
                                locale.notSpecified,
                          ),
                        ],
                      ),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final itemWidth = (constraints.maxWidth - S.p12) / 2;
                      return Section(
                        title: locale.amenities,
                        child: Padding(
                          padding: const P(vertical: S.p8),
                          child: Wrap(
                            spacing: S.p12,
                            runSpacing: S.p12,
                            children: apartment.amenities.map((item) {
                              return SizedBox(
                                width: itemWidth,
                                child: FeatureChip(
                                  title: item.title,
                                  iconPath: item.iconPath,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  Section(
                    title: locale.rentalConditionsTitle,
                    child: Padding(
                      padding: const P(vertical: S.p8),
                      child: Column(
                        spacing: S.p12,
                        children: [
                          InfoRow(
                            title: locale.prepayment,
                            value:
                                apartment.prepaymentType?.title ??
                                locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.deposit,
                            value: apartment.deposit,
                          ),
                          InfoRow(
                            title: locale.rentalPeriod,
                            value:
                                apartment.rentalPeriod?.title ??
                                locale.notSpecified,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.adDescription,
                        style: context.typography.headline1,
                      ),
                      const SizedBox(height: S.p12),
                      Padding(
                        padding: const P(vertical: S.p8),
                        child: Text(
                          apartment.description,
                          style: context.typography.bodyDescription,
                        ),
                      ),
                      const SizedBox(height: S.p32),
                    ],
                  ),
                ].separated(const SizedBox(height: S.p24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
