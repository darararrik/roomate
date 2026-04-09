import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    final isFavorite = ref.watch(
      favoriteApartmentIdsProvider.select((ids) => ids.contains(apartment.id)),
    );
    final favoriteNotifier = ref.read(favoriteApartmentIdsProvider.notifier);
    final String isVerifiedText = apartment.isVerification
        ? context.l10n.apartmentVerified
        : context.l10n.apartmentNotVerified;
    final String withCompanyText = apartment.whoToRent.contains(WhoToRent.company)
        ? context.l10n.apartmentCompanyAllowed
        : context.l10n.apartmentCompanyNotAllowed;

    return Scaffold(
      backgroundColor: colors.graysWhite,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 280,
            leading: IconButton(
              onPressed: () => context.maybePop(),
              icon: DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.graysWhite.withValues(alpha: .92),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: P(all: S.p8),
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: S.p24),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const P(right: S.p16),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.graysWhite.withValues(alpha: .92),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const P(all: S.p4),
                    child: IconButtonWidget(
                      icon: AppIcons.favourite,
                      onPressed: () => favoriteNotifier.toggle(apartment.id),
                      iconColor: isFavorite ? colors.orange : colors.graysBlack,
                      size: S.p36,
                      iconSize: S.p24,
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  if (hasImages)
                    PageView.builder(
                      controller: pageController,
                      physics: const PageScrollPhysics(),
                      itemCount: imageUrls.length,
                      onPageChanged: (index) => page.value = index,
                      itemBuilder: (context, index) => Image.network(
                        imageUrls[index],
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => ColoredBox(color: colors.graysLight100),
                      ),
                    )
                  else
                    ColoredBox(color: colors.graysLight100),
                  IgnorePointer(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            colors.opacityBlack60.withValues(alpha: .12),
                            Colors.transparent,
                            colors.opacityBlack60.withValues(alpha: .35),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: S.p16,
                    bottom: S.p20,
                    child: IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors.opacityBlack60,
                          borderRadius: const BorderRadius.all(.circular(S.p24)),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p10, vertical: S.p6),
                          child: Text(
                            "${page.value + 1}/$imagesCount",
                            style: context.typography.activesLabel.copyWith(
                              color: colors.graysWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (hasImages && imageUrls.length > 1)
                    Positioned(
                      left: S.p16,
                      right: S.p16,
                      bottom: S.p20,
                      child: IgnorePointer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(imageUrls.length, (index) {
                            final isActive = index == page.value;
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 180),
                              margin: const EdgeInsets.symmetric(horizontal: S.p4),
                              width: isActive ? S.p16 : S.p6,
                              height: S.p6,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(.circular(S.p12)),
                                color: isActive
                                    ? colors.graysWhite
                                    : colors.graysWhite.withValues(alpha: .5),
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
          SliverPadding(
            padding: const P(all: S.p16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  _header(context, isVerifiedText, withCompanyText, locale, colors),
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

  Column _header(
    BuildContext context,
    String isVerifiedText,
    String withCompanyText,
    AppLocalizations locale,
    AppPalette colors,
  ) {
    return Column(
      crossAxisAlignment: .start,
      spacing: S.p12,
      children: [
        _tags(context, isVerifiedText, withCompanyText),
        Text(
          "${apartment.price} ${context.l10n.currencyPerMonth}",
          style: context.typography.headline0,
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
                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
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
                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
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
                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }

  Wrap _tags(BuildContext context, String isVerifiedText, String withCompanyText) {
    return Wrap(
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
                  style: context.typography.bodySmall.copyWith(color: context.colors.labelGreen),
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
                  style: context.typography.bodySmall.copyWith(color: context.colors.labelBlue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
