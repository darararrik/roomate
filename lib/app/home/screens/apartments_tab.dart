import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/home/notifier/apartament_filter_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage(name: 'ApartamentsTabRoute')
class ApartamentsTab extends ConsumerWidget {
  const ApartamentsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);
    final favorites = ref.watch(favoriteApartmentIdsProvider);
    final favoritesNotifier = ref.read(favoriteApartmentIdsProvider.notifier);

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const P(top: S.p4, horizontal: S.p16),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: S.p48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const P(vertical: S.p4, horizontal: S.p8),
                children: [
                  FilterCard(
                    leading: const AppIcon(AppIcons.filter2, width: S.p24, height: S.p24),
                    title: context.l10n.filters,
                    onTap: () => ref.read(apartamentFilterProvider.notifier).openFilters(),
                  ),
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, width: S.p24, height: S.p24),
                    title: context.l10n.term,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const RentDurationBottomSheet(),
                    ),
                  ),
                  FilterCard(
                    trailing: const AppIcon(AppIcons.arrowDown, width: S.p24, height: S.p24),
                    title: context.l10n.district,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const DistrictBottomSheet(),
                    ),
                  ),
                ].separated(const SizedBox(width: S.p12)),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16, vertical: S.p12),
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const P(horizontal: S.p8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${context.l10n.optionsFound} ${asyncState.value?.apartaments.length}",
                    style: context.typography.bodyTitle,
                  ),
                  GestureDetector(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SortBottomSheet(),
                    ),

                    //TODO: сменить виджет
                    child: const AppIcon(AppIcons.sort, width: S.p32, height: S.p32),
                  ),
                ],
              ),
            ),
          ),
        ),
        asyncState.when(
          data: (state) {
            final apartaments = state.apartaments;
            return SliverList.separated(
              itemCount: apartaments.length,
              itemBuilder: (context, index) {
                final apartment = apartaments[index];
                return ApartmentCard(
                  apartment: apartment,
                  isFavorite: favorites.contains(apartment.id),
                  onFavoriteTap: () {
                    final isAdded = favoritesNotifier.toggle(apartment.id);
                    if (isAdded) {
                      ref
                          .read(navigationServiceProvider)
                          .showSnackBar(message: "Добавлено в избранное", durationInSeconds: 5);
                    }
                  },
                  onTap: () => context.pushRoute(ApartamnetRoute(apartment: apartment)),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: S.p12);
              },
            );
          },
          loading: () => const SliverToBoxAdapter(child: LoadingWidget()),
          error: (error, stack) => SliverToBoxAdapter(child: ErrorView(error: stack)),
        ),
      ],
    );
  }
}
