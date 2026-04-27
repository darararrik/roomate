import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);
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
                title: 'Снять в аренду',
                imagePath: AppIcons.rent,
                onTap: () => context.pushRoute(const ApartamentsRoute()),
              ),
              _HomeActionCard(
                title: 'Мои объявления',
                imagePath: AppIcons.myRents,
                onTap: () {},
              ),
              _HomeActionCard(
                title: 'Найти соседа',
                imagePath: AppIcons.neighbors,
                onTap: () => context.pushRoute(const NeighboursRoute()),
              ),
              _HomeActionCard(
                title: 'Коворкинг',
                imagePath: AppIcons.coworking,
                onTap: () => context.pushRoute(const CoworkingRoute()),
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
                  Text(
                    "Недавние объявления",
                    style: context.typography.headline1,
                  ),
                  Text(
                    "Смотреть все",
                    style: context.typography.activesLabel.copyWith(
                      color: context.colors.orangeSecond,
                    ),
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
                          .showSnackBar(
                            message: "Добавлено в избранное",
                            durationInSeconds: 5,
                          );
                    }
                  },
                  onTap: () =>
                      context.pushRoute(ApartamnetRoute(apartment: apartment)),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: S.p12);
              },
            );
          },
          loading: () => const SliverToBoxAdapter(child: LoadingWidget()),
          error: (error, stack) =>
              SliverToBoxAdapter(child: ErrorView(error: stack)),
        ),
      ],
    );
  }
}

class _HomeActionCard extends StatelessWidget {
  const _HomeActionCard({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

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
              Align(
                alignment: .bottomRight,
                child: Image.asset(imagePath, width: 98, height: 98),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
