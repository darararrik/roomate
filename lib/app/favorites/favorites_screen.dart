import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteApartments = ref.watch(favoritesScreenProvider);
    final favoriteNotifier = ref.read(favoriteApartmentIdsProvider.notifier);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.favorites), canPop: false),
          if (favoriteApartments.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Text(
                  "Нет сохранённых объявлений",
                  style: context.typography.bodyDescription.copyWith(
                    color: context.colors.graysText400,
                  ),
                ),
              ),
            )
          else
            SliverPadding(
              padding: const P(vertical: S.p12),
              sliver: SliverList.separated(
                itemCount: favoriteApartments.length,
                itemBuilder: (context, index) {
                  final apartment = favoriteApartments[index];

                  return ApartmentCard(
                    apartment: apartment,
                    isFavorite: true,
                    onFavoriteTap: () => favoriteNotifier.toggle(apartment.id),
                    //TODO: вынести в нотифаер
                    // onTap: () => context.pushRoute(ApartamnetRoute(apartment: apartment)),
                  );
                },
                separatorBuilder: (_, _) => const SizedBox(height: S.p12),
              ),
            ),
        ],
      ),
    );
  }
}
