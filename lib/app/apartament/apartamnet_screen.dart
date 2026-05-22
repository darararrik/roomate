import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/apartament/state/apartament_notifier.dart';
import 'package:roomate/app/apartament/widgets/buttons.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ApartamnetScreen extends ConsumerWidget {
  const ApartamnetScreen({super.key, required this.apartmentId});

  final String apartmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final locale = context.l10n;
    final state = ref.watch(apartamentProvider(apartmentId));
    final notifier = ref.read(apartamentProvider(apartmentId).notifier);

    return state.when(
      data: (apartament) {
        final apartment = apartament.apartment;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          bottomNavigationBar: Buttons(onCallPressed: notifier.onCallPressed, onWritePressed: notifier.onWritePressed),
          body: CustomScrollView(
            slivers: [
              DetailAppBarAndPhoto(
                pageController: notifier.pageController,
                imageUrls: apartment.imageUrls,
                page: apartament.page,
                onPageChanged: notifier.onPageChanged,
                onPreviousImagePressed: notifier.onPreviousImagePressed,
                onNextImagePressed: notifier.onNextImagePressed,
                centerAction: Icon(Icons.play_arrow_rounded, color: colors.graysWhite, size: S.p28),
                actions: [
                  IconButtonWidget(
                    icon: AppIcons.more,
                    radius: S.p32,
                    size: S.p32,
                    iconSize: S.p32,
                    onPressed: () => notifier.onMorePressed(context),
                  ),
                ],
              ),
              SliverPadding(
                padding: const P(all: S.p16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: .start,
                      spacing: S.p12,
                      children: [
                        Wrap(
                          spacing: S.p12,
                          runSpacing: S.p8,
                          children: [
                            LabelChip(
                              title: apartament.verifiedTitle,
                              backgroundColor: context.colors.lightGreen100,
                              color: context.colors.labelGreen,
                              iconPath: AppIcons.verified,
                            ),
                            LabelChip(
                              title: apartament.companyTitle,
                              backgroundColor: context.colors.lightBlue100,
                              color: context.colors.labelBlue,
                              iconPath: AppIcons.company,
                            ),
                          ],
                        ),
                        DetailPriceAndFavoriteIcon(
                          title: "${apartment.price} ${context.l10n.currencyPerMonth}",
                          onFavoritePressed: notifier.onFavoritePressed,
                          isFavorite: apartament.isFavorite,
                        ),
                        Text(apartment.title, style: context.typography.headline1, softWrap: true),
                        DetailMetricsRow(
                          items: [
                            DetailMetricItemData(
                              value: "${apartment.roomsCount}-${locale.apartmentRoomsShort}",
                              label: locale.apartment,
                            ),
                            DetailMetricItemData(
                              value: "${apartment.area} ${locale.squareMeters}",
                              label: locale.apartmentArea,
                            ),
                            DetailMetricItemData(
                              value: "${apartment.floor}/${apartment.totalFloor}",
                              label: locale.floor,
                            ),
                          ],
                        ),
                        const Divider(),
                      ],
                    ),
                    DetailSection(
                      title: locale.location,
                      child: Text(
                        apartment.address,
                        style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                      ),
                    ),
                    DetailSection(
                      title: context.l10n.contactTitle,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OwnerCard(apartment: apartment),
                          const SizedBox(height: S.p24),
                          Text(
                            'Размещено: ${apartament.publishedAt}',
                            style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                          ),
                          const SizedBox(height: S.p8),
                          Text(
                            apartament.viewsText,
                            style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                          ),
                        ],
                      ),
                    ),
                    DetailSection(
                      title: locale.aboutHouse,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: S.p12,
                          children: [
                            DetailInfoRow(title: locale.layout, value: apartment.layout?.title ?? locale.notSpecified),
                            DetailInfoRow(
                              title: locale.renovationLabel,
                              value: apartment.renovation?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.elevator,
                              value: apartment.elevatorType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.balconies,
                              value: apartment.balconyType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.furniture,
                              value: apartment.furnitureType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.stove,
                              value: apartment.stoveType?.title ?? locale.notSpecified,
                            ),
                          ],
                        ),
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final itemWidth = (constraints.maxWidth - S.p12) / 2;
                        return DetailSection(
                          title: locale.amenities,
                          child: Padding(
                            padding: const P(vertical: S.p8),
                            child: Wrap(
                              spacing: S.p12,
                              runSpacing: S.p12,
                              children: apartment.amenities.map((item) {
                                return SizedBox(
                                  width: itemWidth,
                                  child: DetailFeatureChip(title: item.title, iconPath: item.iconPath),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                    DetailSection(
                      title: locale.rentalConditionsTitle,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            DetailInfoRow(
                              title: locale.prepayment,
                              value: apartment.prepaymentType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(title: locale.deposit, value: apartment.deposit),
                            DetailInfoRow(
                              title: locale.rentalPeriod,
                              value: apartment.rentalPeriod?.title ?? locale.notSpecified,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.l10n.adDescription, style: context.typography.headline1),
                        const SizedBox(height: S.p12),
                        Padding(
                          padding: const P(vertical: S.p8),
                          child: Text(apartment.description, style: context.typography.bodyDescription),
                        ),
                        const SizedBox(height: S.p32),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) => const ErrorView(),
      loading: () => const LoadingWidget(),
    );
  }
}
