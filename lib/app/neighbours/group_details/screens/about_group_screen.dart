import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/group_details/notifier/about_group_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class AboutGroupScreen extends ConsumerWidget {
  const AboutGroupScreen({super.key, required this.groupId});

  final String groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(aboutGroupProvider(groupId));
    final notifier = ref.read(aboutGroupProvider(groupId).notifier);

    return asyncState.when(
      data: (state) {
        //TODO: вынести в отдельные виджеты, чтобы не было такого огромного метода билда
        final group = state.group;
        final apartament = group.apartament;
        final colors = context.colors;
        final locale = context.l10n;
        final metrics = <DetailMetricItemData>[
          DetailMetricItemData(
            value: apartament.roomsCount.isNotEmpty
                ? '${apartament.roomsCount}-${locale.apartmentRoomsShort}'
                : locale.notSpecified,
            label: locale.apartment,
          ),
          DetailMetricItemData(
            value: apartament.area.isNotEmpty ? '${apartament.area} ${locale.squareMeters}' : locale.notSpecified,
            label: locale.apartmentArea,
          ),
          DetailMetricItemData(
            value: apartament.floor > 0 && apartament.totalFloor > 0
                ? '${apartament.floor}/${apartament.totalFloor}'
                : locale.notSpecified,
            label: locale.floor,
          ),
        ];
        final priceTitle = group.apartament.price.isNotEmpty
            ? group.apartament.price
            : apartament.price.isNotEmpty
            ? apartament.price
            : locale.notSpecified;
        final locationText = [
          apartament.address.trim(),
          apartament.district.trim(),
        ].where((item) => item.isNotEmpty).join('\n');
        final displayLocation = locationText.isNotEmpty ? locationText : locale.notSpecified;
        final participantAvatars = group.conditions.participants
            .map((item) => item.avatarUrl)
            .where((item) => item.trim().isNotEmpty)
            .toList();
        final publishedText = state.group.createdAt.isNotEmpty
            ? 'Размещено: ${state.group.createdAt.toRuLongPublishedDate()}'
            : 'Размещено: ${locale.notSpecified}';
        final viewsText = apartament.totalViewers.isNotEmpty
            ? context.l10n.viewsCount(apartament.totalViewers)
            : 'Просмотры: ${locale.notSpecified}';

        return Scaffold(
          backgroundColor: colors.graysWhite,
          bottomNavigationBar: SafeArea(
            top: false,
            child: Padding(
              padding: const P(horizontal: S.p16, vertical: S.p12),
              child: PrimaryButton(
                text: _applyButtonText(
                  locale: locale,
                  isApplying: state.isApplying,
                  applicationStatus: state.applicationStatus,
                ),
                onPressed: state.isApplying || state.applicationStatus == 'pending' ? null : notifier.onApplyPressed,
              ),
            ),
          ),
          body: CustomScrollView(
            slivers: [
              DetailAppBarAndPhoto(
                title: Text(locale.aboutTheGroup),
                pageController: notifier.pageController,
                imageUrls: apartament.imageUrls,
                page: state.page,
                onPageChanged: notifier.onPageChanged,
                onPreviousImagePressed: notifier.onPreviousImagePressed,
                onNextImagePressed: notifier.onNextImagePressed,
              ),
              SliverPadding(
                padding: const P(all: S.p16),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: S.p12,
                      children: [
                        if (group.matchPercent > 0) ChipMatch(matchPercent: group.matchPercent),
                        Text(
                          group.title.isNotEmpty ? group.title : locale.notSpecified,
                          style: context.typography.headline2,
                          softWrap: true,
                        ),
                        DetailPriceAndFavoriteIcon(
                          title: priceTitle,
                          onFavoritePressed: notifier.onFavoritePressed,
                          isFavorite: state.isFavorite,
                        ),
                        DetailMetricsRow(items: metrics),
                        const Divider(),
                      ],
                    ),
                    const SizedBox(height: S.p12),
                    DetailSection(
                      title: locale.adDescription,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Text(
                          group.description.isNotEmpty ? group.description : locale.notSpecified,
                          style: context.typography.bodyDescription,
                          softWrap: true,
                        ),
                      ),
                    ),
                    DetailSection(
                      title: locale.groupConditionsAndParticipantsTitle,
                      child: GestureDetector(
                        onTap: notifier.openConditionsAndParticipants,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: colors.graysLight50,
                                borderRadius: BorderRadius.circular(S.p12),
                                border: Border.all(color: colors.graysStroke300),
                              ),
                              child: Padding(
                                padding: const P(vertical: S.p20, horizontal: S.p16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          OverlappingAvatars(
                                            avatarSize: S.p36,
                                            overlap: S.p10,
                                            avatarUrls: participantAvatars,
                                          ),
                                          const SizedBox(height: S.p12),
                                          Text(
                                            '${group.participantsCount}/${group.maxParticipantsCount} ${context.l10n.participants}',
                                            style: context.typography.bodyDescription.copyWith(
                                              color: colors.graysText400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AppIcon(
                                      AppIcons.arrowRight,
                                      width: S.p32,
                                      height: S.p32,
                                      color: colors.graysIcon500,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: S.p24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  publishedText,
                                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                                ),
                                const SizedBox(height: S.p8),
                                Text(
                                  viewsText,
                                  style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: S.p12),
                    DetailSection(
                      title: locale.location,
                      child: Text(
                        displayLocation,
                        style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                        softWrap: true,
                      ),
                    ),
                    DetailSection(
                      title: locale.aboutHouse,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            DetailInfoRow(title: locale.layout, value: apartament.layout?.title ?? locale.notSpecified),
                            DetailInfoRow(
                              title: locale.renovationLabel,
                              value: apartament.renovation?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.elevator,
                              value: apartament.elevatorType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.balconies,
                              value: apartament.balconyType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.furniture,
                              value: apartament.furnitureType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.stove,
                              value: apartament.stoveType?.title ?? locale.notSpecified,
                            ),
                          ],
                        ),
                      ),
                    ),
                    DetailSection(
                      title: locale.amenities,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: apartament.amenities.isEmpty
                            ? Text(
                                locale.notSpecified,
                                style: context.typography.bodyDescription.copyWith(color: colors.graysText400),
                              )
                            : LayoutBuilder(
                                builder: (context, constraints) {
                                  final itemWidth = (constraints.maxWidth - S.p12) / 2;
                                  return Wrap(
                                    spacing: S.p12,
                                    runSpacing: S.p12,
                                    children: apartament.amenities.map((item) {
                                      return SizedBox(
                                        width: itemWidth,
                                        child: DetailFeatureChip(title: item.title, iconPath: item.iconPath),
                                      );
                                    }).toList(),
                                  );
                                },
                              ),
                      ),
                    ),
                    DetailSection(
                      title: locale.rentalConditionsTitle,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            DetailInfoRow(
                              title: locale.rentalConditionsTitle,
                              value: apartament.rentTerm?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.prepayment,
                              value: apartament.prepaymentType?.title ?? locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.deposit,
                              value: apartament.deposit.isNotEmpty ? apartament.deposit : locale.notSpecified,
                            ),
                            DetailInfoRow(
                              title: locale.rentalPeriod,
                              value: apartament.rentalPeriod?.title ?? locale.notSpecified,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, _) => Scaffold(body: ErrorView(error: error)),
      loading: () => const Scaffold(body: LoadingWidget()),
    );
  }
}

String _applyButtonText({
  required AppLocalizations locale,
  required bool isApplying,
  required String applicationStatus,
}) {
  if (isApplying) {
    return locale.groupApplicationSending;
  }

  if (applicationStatus == 'pending') {
    return locale.groupApplicationSent;
  }

  return locale.groupApply;
}
