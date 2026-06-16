import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

class RecentAdvertisementsSection extends ConsumerWidget {
  const RecentAdvertisementsSection({super.key, required this.onSeeAll});

  final VoidCallback onSeeAll;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);
    final favorites =
        ref.watch(favoritesProvider).asData?.value ??
        const <ApartamentPreviewModel>[];
    final favoritesNotifier = ref.read(favoritesProvider.notifier);

    return SliverMainAxisGroup(
      slivers: [
        SectionHeader(
          title: context.l10n.recentAdvertisements,
          actionTitle: context.l10n.seeAll,
          onActionTap: onSeeAll,
        ),
        asyncState.when(
          data: (state) {
            final apartaments = state.recentApartments;
            if (apartaments.isEmpty) {
              return SliverPadding(
                padding: const P(horizontal: S.p16, bottom: S.p24),
                sliver: SliverToBoxAdapter(
                  child: _RecentEmptyState(
                    title: context.l10n.myAdsNoItems,
                    subtitle: 'В выбранном городе пока нет объявлений',
                  ),
                ),
              );
            }

            return SliverPadding(
              padding: const P(horizontal: S.p16, bottom: S.p24),
              sliver: SliverList.separated(
                itemCount: apartaments.length,
                itemBuilder: (context, index) {
                  final apartment = apartaments[index];
                  return ApartmentCard(
                    apartment: apartment,
                    isFavorite: favorites.any(
                      (item) => item.id == apartment.id,
                    ),
                    onFavoriteTap: () {
                      favoritesNotifier.toggle(
                        apartment.id,
                        apartment: apartment,
                      );
                    },
                    onTap: () => notifier.openApartment(apartment),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: S.p12);
                },
              ),
            );
          },
          loading: () => const SliverToBoxAdapter(child: LoadingWidget()),
          error: (error, stack) =>
              SliverToBoxAdapter(child: ErrorView(error: error)),
        ),
      ],
    );
  }
}

class _RecentEmptyState extends StatelessWidget {
  const _RecentEmptyState({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight50,
        borderRadius: BorderRadius.circular(S.p16),
      ),
      child: Padding(
        padding: const P(horizontal: S.p20, vertical: S.p24),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: context.typography.headline1,
            ),
            const SizedBox(height: S.p8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: context.typography.bodyDescription.copyWith(
                color: context.colors.graysText400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
