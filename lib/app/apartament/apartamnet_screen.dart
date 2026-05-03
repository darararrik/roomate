import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/apartament/widgets/app_bar_and_photo.dart';
import 'package:roomate/app/apartament/widgets/price_and_favorite_icon.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ApartamnetScreen extends HookConsumerWidget {
  const ApartamnetScreen({super.key, required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    final locale = context.l10n;
    final page = useState(0);
    final pageController = usePageController();
    final imageUrls = apartment.imageUrls;
    final hasImages = imageUrls.isNotEmpty;
    final imagesCount = hasImages ? imageUrls.length : 1;
    final String isVerifiedText = apartment.isVerification
        ? context.l10n.apartmentVerified
        : context.l10n.apartmentNotVerified;
    final String withCompanyText = apartment.whoToRent.contains(WhoToRent.company)
        ? context.l10n.apartmentCompanyAllowed
        : context.l10n.apartmentCompanyNotAllowed;
    final isFavorite = ref.watch(
      favoriteApartmentIdsProvider.select((ids) => ids.contains(apartment.id)),
    );
    final favoriteNotifier = ref.read(favoriteApartmentIdsProvider.notifier);
    return Scaffold(
      backgroundColor: colors.graysWhite,
      bottomNavigationBar: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const P(vertical: S.p20, horizontal: S.p16),
            child: Row(
              spacing: S.p12,
              children: [
                Expanded(
                  child: PrimaryButton(text: locale.call, onPressed: () {}),
                ),
                Expanded(
                  child: OpacityButton(
                    onPressed: () {},
                    bgColor: context.colors.opacityOrange20,
                    color: context.colors.orange,
                    child: Text(locale.write),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          AppBarAndPhoto(
            hasImages: hasImages,
            pageController: pageController,
            imageUrls: imageUrls,
            page: page,
            colors: colors,
            imagesCount: imagesCount,
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
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: context.colors.lightGreen100,
                              borderRadius: .circular(S.p8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(S.p8),
                              child: Row(
                                mainAxisSize: .min,
                                spacing: S.p8,
                                children: [
                                  AppIcon(
                                    AppIcons.verified,
                                    color: context.colors.labelGreen,
                                    width: S.p16,
                                    height: S.p16,
                                  ),
                                  Text(
                                    isVerifiedText,
                                    style: context.typography.bodySmall.copyWith(
                                      color: context.colors.labelGreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: context.colors.lightBlue100,
                              borderRadius: .circular(S.p8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(S.p8),
                              child: Row(
                                mainAxisSize: .min,
                                spacing: S.p8,
                                children: [
                                  AppIcon(
                                    AppIcons.company,
                                    color: context.colors.labelBlue,
                                    width: S.p16,
                                    height: S.p16,
                                  ),
                                  Text(
                                    withCompanyText,
                                    style: context.typography.bodySmall.copyWith(
                                      color: context.colors.labelBlue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      PriceAndFavoriteIcon(
                        apartment: apartment,
                        favoriteNotifier: favoriteNotifier,
                        isFavorite: isFavorite,
                        colors: colors,
                      ),
                      Text(apartment.title, style: context.typography.headline1),
                      Row(
                        spacing: S.p32,
                        children: [
                          Column(
                            crossAxisAlignment: .start,
                            spacing: S.p4,
                            children: [
                              Text("${apartment.roomsCount}-${locale.apartmentRoomsShort}"),
                              Text(
                                locale.apartment,
                                style: context.typography.bodyDescription.copyWith(
                                  color: colors.graysText400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            spacing: S.p4,
                            children: [
                              Text("${apartment.area} ${locale.squareMeters}"),
                              Text(
                                locale.apartmentArea,
                                style: context.typography.bodyDescription.copyWith(
                                  color: colors.graysText400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: .start,
                            spacing: S.p4,
                            children: [
                              Text("${apartment.floor}/${apartment.totalFloor}"),
                              Text(
                                locale.floor,
                                style: context.typography.bodyDescription.copyWith(
                                  color: colors.graysText400,
                                ),
                              ),
                            ],
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
                        if (apartment.publishDate.isNotEmpty)
                          Text(
                            apartment.publishDate,
                            style: context.typography.bodyDescription.copyWith(
                              color: colors.graysText400,
                            ),
                          ),
                        if (apartment.publishDate.isNotEmpty && apartment.totalViewers.isNotEmpty)
                          const SizedBox(height: S.p8),
                        if (apartment.totalViewers.isNotEmpty)
                          Text(
                            locale.viewsCount(apartment.totalViewers),
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
                            value: apartment.layout?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.renovationLabel,
                            value: apartment.renovation?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.elevator,
                            value: apartment.elevatorType?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.balconies,
                            value: apartment.balconyType?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
                            title: locale.furniture,
                            value: apartment.furnitureType?.title ?? locale.notSpecified,
                          ),
                          InfoRow(
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
                                child: FeatureChip(title: item.title, iconPath: item.iconPath),
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
                            value: apartment.prepaymentType?.title ?? locale.notSpecified,
                          ),
                          InfoRow(title: locale.deposit, value: apartment.deposit),
                          InfoRow(
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
