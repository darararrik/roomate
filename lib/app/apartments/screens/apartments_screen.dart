import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class ApartamentsScreen extends ConsumerWidget {
  const ApartamentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);
    final favorites = ref.watch(favoriteApartmentIdsProvider);
    final favoritesNotifier = ref.read(favoriteApartmentIdsProvider.notifier);
    final filter = ref.watch(apartamentFilterProvider);
    final currentCity = ref.watch(currentProfileCityProvider);
    final effectiveCityTitle = filter.locationTitle.isNotEmpty
        ? filter.locationTitle
        : currentCity?.title ?? AppDefaultCity.title;
    final effectiveCityFiasId = filter.cityFiasId.isNotEmpty
        ? filter.cityFiasId
        : currentCity?.fiasId ?? AppDefaultCity.fiasId;
    final filterNotifier = ref.read(apartamentFilterProvider.notifier);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MainAppBar(
            cityTitle: effectiveCityTitle,
            selectedCityFiasId: effectiveCityFiasId,
            onCitySelected: (CityModel city) async {
              filterNotifier.setCity(city);
              filterNotifier.apply();
            },
            bottom: FiltersRow(
              optionsCount: asyncState.value?.apartaments.length ?? 0,
              onFiltersTap: () =>
                  ref.read(apartamentFilterProvider.notifier).openFilters(),
            ),
          ),
          asyncState.when(
            data: (state) {
              final apartaments = state.apartaments;
              return SliverPadding(
                padding: const P(horizontal: S.p16, bottom: S.p24),
                sliver: SliverList.separated(
                  itemCount: apartaments.length,
                  itemBuilder: (context, index) {
                    final apartment = apartaments[index];
                    return ApartmentCard(
                      apartment: apartment,
                      isFavorite: favorites.contains(apartment.id),
                      onFavoriteTap: () =>
                          favoritesNotifier.toggle(apartment.id),
                      onTap: () => context.pushRoute(
                        ApartamnetRoute(apartmentId: apartment.id),
                      ),
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
                SliverToBoxAdapter(child: ErrorView(error: stack)),
          ),
        ],
      ),
    );
  }
}
