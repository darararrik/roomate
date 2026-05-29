import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteApartmentsState = ref.watch(favoritesProvider);
    final favoriteNotifier = ref.read(favoritesProvider.notifier);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.favorites), canPop: false),
          favoriteApartmentsState.when(
            data: (favoriteApartments) {
              if (favoriteApartments.isEmpty) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Text(
                      "Нет сохранённых объявлений",
                      style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
                    ),
                  ),
                );
              }

              return SliverPadding(
                padding: const P(vertical: S.p12, horizontal: S.p16),
                sliver: SliverList.separated(
                  itemCount: favoriteApartments.length,
                  itemBuilder: (context, index) {
                    final apartment = favoriteApartments[index];

                    return ApartmentCard(
                      apartment: apartment,
                      isFavorite: true,
                      onFavoriteTap: () {
                        favoriteNotifier.toggle(apartment.id, apartment: apartment);
                      },
                      //TODO: вынести в нотифаер
                      // onTap: () => context.pushRoute(ApartamnetRoute(apartment: apartment)),
                    );
                  },
                  separatorBuilder: (_, _) => const SizedBox(height: S.p12),
                ),
              );
            },
            loading: () => const SliverFillRemaining(hasScrollBody: false, child: LoadingWidget()),
            error: (error, stackTrace) => SliverFillRemaining(hasScrollBody: false, child: ErrorView(error: error)),
          ),
        ],
      ),
    );
  }
}
