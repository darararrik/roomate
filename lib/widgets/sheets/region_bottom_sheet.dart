import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

class RegionBottomSheet extends HookConsumerWidget {
  const RegionBottomSheet({super.key, this.selectedCityFiasId, this.onCitySelected});

  final String? selectedCityFiasId;
  final Future<void> Function(CityModel city)? onCitySelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final query = useListenable(searchController).text.trim().toLowerCase();
    final citiesState = ref.watch(citiesProvider);
    final profileCity = ref.watch(currentProfileCityProvider);
    final selectedCity = useState<CityModel?>(null);

    return citiesState.when(
      loading: () => const SizedBox(height: 200, child: Center(child: CircularProgressIndicator())),
      error: (error, stack) => SizedBox(height: 200, child: ErrorView(error: error.toString())),
      data: (cities) {
        final currentCity = _resolveCurrentCity(cities, profileCity);
        final effectiveSelectedCity = selectedCity.value ?? currentCity;
        final filteredCities = _filterCities(cities, query);

        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.7,
          maxChildSize: 0.9,
          minChildSize: 0.4,
          builder: (context, controller) {
            return BaseBottomSheet(
              title: context.l10n.selectRegion,
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const P(bottom: S.p12, horizontal: S.p24),
                      child: InputWidget(
                        controller: searchController,
                        prefixIcon: AppIcon(AppIcons.search, color: context.colors.graysIcon500),
                        hintText: context.l10n.search,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        controller: controller,
                        itemCount: filteredCities.length,
                        separatorBuilder: (_, _) => const SizedBox(height: S.p4),
                        itemBuilder: (context, index) {
                          final city = filteredCities[index];
                          final isSelected = effectiveSelectedCity?.id == city.id;

                          return InkWell(
                            onTap: () => selectedCity.value = city,
                            child: Padding(
                              padding: const P(vertical: S.p12, horizontal: S.p36),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          city.title,
                                          style: context.typography.bodyDescription.copyWith(height: 17 / 14),
                                        ),
                                        if (city.region.isNotEmpty) ...[
                                          const SizedBox(height: S.p4),
                                          Text(
                                            city.region,
                                            style: context.typography.bodyDescription.copyWith(
                                              color: context.colors.graysText400,
                                              height: 17 / 14,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                  SelectionButton(isSelected: isSelected, isRadio: true),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const P(top: S.p16, horizontal: S.p16),
                      child: PrimaryButton(
                        text: context.l10n.apply,
                        onPressed: () async {
                          final city = selectedCity.value ?? currentCity;
                          if (city == null) {
                            Navigator.of(context).pop();
                            return;
                          }

                          if (onCitySelected != null) {
                            await onCitySelected!(city);

                            if (!context.mounted) return;
                            Navigator.of(context).pop();
                            return;
                          }

                          final error = await ref
                              .read(globalProfileProvider.notifier)
                              .updateProfile(city: city.title, cityFiasId: city.fiasId);

                          if (!context.mounted) return;

                          if (error == null) {
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  CityModel? _resolveCurrentCity(List<CityModel> cities, CityModel? profileCity) {
    final normalizedSelectedFiasId = (selectedCityFiasId ?? '').trim();
    if (normalizedSelectedFiasId.isNotEmpty) {
      for (final city in cities) {
        if (city.fiasId.trim() == normalizedSelectedFiasId) {
          return city;
        }
      }
    }

    return profileCity ?? cities.firstOrNull;
  }

  List<CityModel> _filterCities(List<CityModel> cities, String query) {
    if (query.isEmpty) return cities;

    return cities
        .where((city) => city.title.toLowerCase().contains(query) || city.region.toLowerCase().contains(query))
        .toList(growable: false);
  }
}
