import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class ApartamentsScreen extends ConsumerWidget {
  const ApartamentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);
    final favorites =
        ref.watch(favoritesProvider).asData?.value ??
        const <ApartamentPreviewModel>[];
    final favoritesNotifier = ref.read(favoritesProvider.notifier);
    final filter = ref.watch(apartamentFilterProvider);
    final currentCity = ref.watch(currentMainCityProvider);
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
              if (apartaments.isEmpty) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: _EmptyFeedState(
                    title: context.l10n.myAdsNoItems,
                    subtitle: 'Попробуйте изменить город или фильтры',
                  ),
                );
              }

              return SliverPadding(
                padding: const P(horizontal: S.p16, bottom: S.p24, top: S.p12),
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
                SliverToBoxAdapter(child: ErrorView(error: error)),
          ),
        ],
      ),
    );
  }
}

class _EmptyFeedState extends StatelessWidget {
  const _EmptyFeedState({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.p24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
