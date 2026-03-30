import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/domain/enums/enums.dart';
import 'package:roomate/domain/models/apartaments/apartament_model.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/l10n/app_localizations.dart';
import 'package:roomate/presentation/theme/theme_x/app_palette.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ApartamnetScreen extends HookWidget {
  const ApartamnetScreen({super.key, required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final locale = context.l10n;
    final page = useState(0);
    final imageUrls = apartment.imageUrls;
    final String isVerifiedText = apartment.isVerification
        ? context.l10n.apartmentVerified
        : context.l10n.apartmentNotVerified;
    final String withCompanyText = apartment.withCompany
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
                  child: const Padding(
                    padding: P(all: S.p8),
                    child: AppIcon(AppIcons.favourite, width: S.p24, height: S.p24),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    itemCount: imageUrls.length,
                    onPageChanged: (index) => page.value = index,
                    itemBuilder: (context, index) => Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => ColoredBox(color: colors.graysLight100),
                    ),
                  ),
                  DecoratedBox(
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
                  Positioned(
                    right: S.p16,
                    bottom: S.p20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colors.opacityBlack60,
                        borderRadius: const BorderRadius.all(.circular(S.p24)),
                      ),
                      child: Padding(
                        padding: const P(horizontal: S.p10, vertical: S.p6),
                        child: Text(
                          "${page.value + 1}/${imageUrls.length}",
                          style: context.typography.activesLabel.copyWith(color: colors.graysWhite),
                        ),
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
                  _Section(
                    title: "Расположение",
                    child: Text(
                      apartment.address,
                      style: context.typography.bodyDescription.copyWith(
                        color: colors.graysText400,
                      ),
                    ),
                  ),
                  _Section(
                    title: context.l10n.contactTitle,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _OwnerCard(apartment: apartment),
                        const SizedBox(height: S.p24),
                        Text(
                          "Размещено: ${apartment.publishDate}",
                          style: context.typography.bodyDescription.copyWith(
                            color: colors.graysText400,
                          ),
                        ),
                        const SizedBox(height: S.p8),
                        Text(
                          "${apartment.totalViewers} просмотров",
                          style: context.typography.bodyDescription.copyWith(
                            color: colors.graysText400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  _Section(
                    title: locale.aboutHouse,
                    child: Padding(
                      padding: const P(vertical: S.p8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: S.p12,
                        children: [
                          _InfoRow(
                            title: locale.layout,
                            value: apartment.layout?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(
                            title: locale.renovationLabel,
                            value: apartment.renovation?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(
                            title: locale.elevator,
                            value: apartment.elevatorType?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(
                            title: locale.balconies,
                            value: apartment.balconyType?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(
                            title: locale.furniture,
                            value: apartment.furnitureType?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(
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
                      return _Section(
                        title: locale.amenities,
                        child: Padding(
                          padding: const P(vertical: S.p8),
                          child: Wrap(
                            spacing: S.p12,
                            runSpacing: S.p12,
                            children: apartment.amenities.map((item) {
                              return SizedBox(
                                width: itemWidth,
                                child: _FeatureChip(title: item.title, iconPath: item.iconPath),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  _Section(
                    title: locale.rentalConditionsTitle,
                    child: Padding(
                      padding: const P(vertical: S.p8),
                      child: Column(
                        spacing: S.p12,
                        children: [
                          _InfoRow(
                            title: locale.prepayment,
                            value: apartment.prepaymentType?.title ?? locale.notSpecified,
                          ),
                          _InfoRow(title: locale.deposit, value: apartment.deposit),
                          _InfoRow(
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
                  "квартира",
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
                  "площадь",
                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              spacing: S.p4,
              children: [
                Text("${apartment.floor} из ${apartment.totalFloor}"),
                Text(
                  "этаж",
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

  Row _tags(BuildContext context, String isVerifiedText, String withCompanyText) {
    return Row(
      spacing: S.p12,
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

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.typography.headline1),
        const SizedBox(height: S.p12),
        child,
        const SizedBox(height: S.p12),
        const Divider(),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        const SizedBox(width: S.p12),
        Text(value, style: context.typography.bodyDescription),
      ],
    );
  }
}

class _FeatureChip extends StatelessWidget {
  const _FeatureChip({required this.title, required this.iconPath});

  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIcon(iconPath, width: S.p20, height: S.p20, color: context.colors.graysIcon500),
        const SizedBox(width: S.p8),
        Text(title, style: context.typography.bodyDescription),
      ],
    );
  }
}

class _OwnerCard extends StatelessWidget {
  const _OwnerCard({required this.apartment});

  final ApartamentModel apartment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: const BorderRadius.all(.circular(S.p12)),
      ),
      child: Padding(
        padding: const P(vertical: S.p20, horizontal: S.p12),
        child: Row(
          children: [
            //TODO: потом реализовать аватрку у пользователя
            const AppIcon(AppIcons.defaultAvatar, width: S.p52, height: S.p52),
            const SizedBox(width: S.p12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(apartment.name, style: context.typography.headline2),
                  const SizedBox(height: S.p12),
                  Text(
                    apartment.role,
                    style: context.typography.bodyDescription.copyWith(
                      color: context.colors.graysText700,
                    ),
                  ),
                ],
              ),
            ),
            IconButtonWidget(
              icon: AppIcons.chats,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
            ),
            const SizedBox(width: S.p12),
            IconButtonWidget(
              icon: AppIcons.phone,
              onPressed: () {},
              iconColor: context.colors.lightOrange100,
              backgroundColor: context.colors.graysWhite,
            ),
          ],
        ),
      ),
    );
  }
}
