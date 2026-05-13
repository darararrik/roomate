import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/notifier/about_group_notifier.dart';
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
        final group = state.group;
        final apartament = group.apartament;
        final colors = context.colors;
        final locale = context.l10n;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          bottomNavigationBar: SafeArea(
            top: false,
            child: Padding(
              padding: const P(horizontal: S.p16, vertical: S.p12),
              child: PrimaryButton(text: 'Подать заявку', onPressed: notifier.onApplyPressed),
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
                        ChipMatch(matchPercent: group.matchPercent),
                        Text(group.title, style: context.typography.headline2, softWrap: true),
                        DetailPriceAndFavoriteIcon(
                          title: '${apartament.price} ${context.l10n.currencyPerMonth}',
                          onFavoritePressed: notifier.onFavoritePressed,
                          isFavorite: state.isFavorite,
                        ),
                        DetailMetricsRow(
                          items: [
                            DetailMetricItemData(
                              value: '${apartament.roomsCount}-${locale.apartmentRoomsShort}',
                              label: locale.apartment,
                            ),
                            DetailMetricItemData(
                              value: '${apartament.area} ${locale.squareMeters}',
                              label: locale.apartmentArea,
                            ),
                            DetailMetricItemData(
                              value: '${apartament.floor} из ${apartament.totalFloor}',
                              label: locale.floor,
                            ),
                          ],
                        ),
                        const Divider(),
                      ],
                    ),
                    const SizedBox(height: S.p12),
                    DetailSection(
                      title: locale.adDescription,
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Text(
                          group.description,
                          style: context.typography.bodyDescription,
                          softWrap: true,
                        ),
                      ),
                    ),
                    DetailSection(
                      title: 'Участники и условия',
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
                                          const OverlappingAvatars(
                                            avatarSize: S.p36,
                                            overlap: S.p10,
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
                                  'Размещено: ${apartament.publishDate.toRuLongPublishedDate()}',
                                  style: context.typography.bodyDescription.copyWith(
                                    color: colors.graysText400,
                                  ),
                                ),
                                const SizedBox(height: S.p8),
                                Text(
                                  context.l10n.viewsCount(apartament.totalViewers),
                                  style: context.typography.bodyDescription.copyWith(
                                    color: colors.graysText400,
                                  ),
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
                        apartament.address,
                        style: context.typography.bodyDescription.copyWith(
                          color: colors.graysText400,
                        ),
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
                            DetailInfoRow(
                              title: locale.layout,
                              value: apartament.layout?.title ?? locale.notSpecified,
                            ),
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
                              title: locale.stove,
                              value: apartament.stoveType?.title ?? locale.notSpecified,
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
                              children: apartament.amenities.map((item) {
                                return SizedBox(
                                  width: itemWidth,
                                  child: DetailFeatureChip(
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
                    DetailSection(
                      title: 'Условия сделки',
                      child: Padding(
                        padding: const P(vertical: S.p8),
                        child: Column(
                          spacing: S.p12,
                          children: [
                            DetailInfoRow(
                              title: 'Срок аренды',
                              value: apartament.rentalPeriod?.title ?? locale.notSpecified,
                            ),
                            const DetailInfoRow(
                              title: 'Коммунальные услуги',
                              value: 'Включены в стоимость',
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
