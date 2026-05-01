import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class OverviewScreen extends ConsumerWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);
    final favorites = ref.watch(favoriteApartmentIdsProvider);
    final favoritesNotifier = ref.read(favoriteApartmentIdsProvider.notifier);
    return CustomScrollView(
      slivers: [
        const MainAppBar(),
        SliverPadding(
          padding: const P(horizontal: S.p16, top: S.p16, bottom: S.p24),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: S.p12,
            mainAxisSpacing: S.p12,
            childAspectRatio: 1.12,
            children: [
              _HomeActionCard(
                title: context.l10n.rentApartment,
                imagePath: AppIcons.rent,
                onTap: notifier.openApartments,
              ),
              _HomeActionCard(
                title: context.l10n.myAdvertisements,
                imagePath: AppIcons.myRents,
                onTap: notifier.openMyAdvertisements,
              ),
              _HomeActionCard(
                title: context.l10n.findNeighbour,
                imagePath: AppIcons.neighbors,
                onTap: notifier.openNeighbours,
              ),
              _HomeActionCard(
                title: context.l10n.coworking,
                imagePath: AppIcons.coworking,
                onTap: notifier.openCoworking,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const P(horizontal: S.p16, bottom: S.p12),
          sliver: SliverToBoxAdapter(
            child: Padding(
              padding: const P(vertical: S.p12, horizontal: S.p8),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(context.l10n.recentAdvertisements, style: context.typography.headline1),
                  GestureDetector(
                    onTap: notifier.openApartments,
                    child: Text(
                      context.l10n.seeAll,
                      style: context.typography.activesLabel.copyWith(
                        color: context.colors.orangeSecond,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        asyncState.when(
          data: (state) {
            final apartaments = state.recentApartments;
            return SliverPadding(
              padding: const P(horizontal: S.p16, bottom: S.p24),
              sliver: SliverList.separated(
                itemCount: apartaments.length,
                itemBuilder: (context, index) {
                  final apartment = apartaments[index];
                  return ApartmentCard(
                    apartment: apartment,
                    isFavorite: favorites.contains(apartment.id),
                    onFavoriteTap: () => favoritesNotifier.toggle(apartment.id),
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
          error: (error, stack) => SliverToBoxAdapter(child: ErrorView(error: stack)),
        ),
      ],
    );
  }
}

class _HomeActionCard extends StatelessWidget {
  const _HomeActionCard({required this.title, required this.imagePath, required this.onTap});

  final String title;
  final String imagePath;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.graysLight50,
          borderRadius: BorderRadius.circular(S.p32),
        ),
        child: Padding(
          padding: const P(horizontal: S.p16, top: S.p24, bottom: S.p8),
          child: Column(
            spacing: S.p12,
            crossAxisAlignment: .start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.typography.bodyDescription,
              ),
              Align(alignment: .bottomRight, child: Image.asset(imagePath, width: 98, height: 98)),
            ],
          ),
        ),
      ),
    );
  }
}
