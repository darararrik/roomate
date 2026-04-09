import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/filter/notifier/apartament_filter_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage(name: 'FiltersRoute')
class FiltersScreen extends HookConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(apartamentFilterProvider);
    final filterNotifier = ref.read(apartamentFilterProvider.notifier);
    final filtersAsync = ref.watch(filtersProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(context.l10n.filters),
            centerTitle: false,
            onBackButtonPressed: () => context.router.pop(),
            actions: [
              TextButton(
                onPressed: filterNotifier.reset,
                child: Text(
                  context.l10n.reset,
                  style: context.typography.activesButton.copyWith(
                    color: context.colors.lightOrange100,
                  ),
                ),
              ),
            ],
          ),
          filtersAsync.when(
            data: (filters) {
              return SliverPadding(
                padding: const P(horizontal: S.p16, vertical: S.p12),
                sliver: SliverList.list(
                  children: [
                    _FilterSection(
                      title: context.l10n.yourGoal,
                      options: filters.categories,
                      selectedIds: {if (filter.categoryId != null) filter.categoryId!},
                      isRadio: true,
                      onSelectionChanged: (ids) =>
                          filterNotifier.setCategory(ids.isNotEmpty ? ids.first : null),
                    ),
                    const SizedBox(height: S.p24),
                    _FilterSection(
                      title: context.l10n.typeOfProperty,
                      options: filters.propertyTypes,
                      selectedIds: filter.propertyTypeIds.toSet(),
                      isRadio: false,
                      onSelectionChanged: (ids) {
                        for (var id in ids) {
                          if (!filter.propertyTypeIds.contains(id)) {
                            filterNotifier.togglePropertyType(id);
                          }
                        }
                        for (var id in filter.propertyTypeIds) {
                          if (!ids.contains(id)) {
                            filterNotifier.togglePropertyType(id);
                          }
                        }
                      },
                    ),
                    const SizedBox(height: S.p24),
                    _FilterSection(
                      title: context.l10n.numberOfRooms,
                      options: filters.roomsCounts,
                      selectedIds: filter.roomsCountIds.toSet(),
                      isRadio: false,
                      onSelectionChanged: (ids) {
                        for (var id in ids) {
                          if (!filter.roomsCountIds.contains(id)) {
                            filterNotifier.toggleRoomsCount(id);
                          }
                        }
                        for (var id in filter.roomsCountIds) {
                          if (!ids.contains(id)) {
                            filterNotifier.toggleRoomsCount(id);
                          }
                        }
                      },
                    ),
                    const SizedBox(height: S.p24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(context.l10n.price, style: context.typography.headline2),
                        Text(
                          '${(filter.minPrice ?? 0).round()} - ${(filter.maxPrice ?? 200000).round()} ${context.l10n.currencySymbol}',
                          style: context.typography.bodyDescription,
                        ),
                      ],
                    ),
                    RangeSlider(
                      values: RangeValues(filter.minPrice ?? 0, filter.maxPrice ?? 200000),
                      min: 0,
                      max: 200000,
                      divisions: 20,
                      activeColor: context.colors.orange,
                      inactiveColor: context.colors.graysLight100,
                      onChanged: (values) => filterNotifier.setPriceRange(values.start, values.end),
                    ),
                    const SizedBox(height: S.p24),
                    Text(context.l10n.location, style: context.typography.headline2),
                    const SizedBox(height: S.p12),
                    RegionListItem(
                      iconPath: AppIcons.city,
                      onTap: () => context.pushRoute(
                        //TODO: вынести в нотифаер
                        LocationRoute(onSelected: (street) {}),
                      ),
                      title: context.l10n.filtersCityMoscowTitle,
                      subTitle: context.l10n.filtersLocationSearchHint,
                    ),
                    const SizedBox(height: S.p100),
                  ],
                ),
              );
            },
            loading: () =>
                const SliverFillRemaining(child: Center(child: CircularProgressIndicator())),
            error: (e, s) => SliverFillRemaining(child: Center(child: Text(e.toString()))),
          ),
        ],
      ),
      bottomNavigationBar: filtersAsync.maybeWhen(
        data: (_) => SafeArea(
          child: Padding(
            padding: const P(horizontal: S.p16, vertical: S.p12),
            child: PrimaryButton(
              onPressed: () {
                filterNotifier.apply();
                context.router.pop();
              },
              text: context.l10n.apply,
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _FilterSection<T extends ChipModel> extends StatelessWidget {
  const _FilterSection({
    this.title,
    required this.options,
    required this.selectedIds,
    required this.isRadio,
    required this.onSelectionChanged,
  });
  final String? title;
  final List<T> options;
  final Set<int> selectedIds;
  final bool isRadio;
  final ValueChanged<Set<int>> onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipWrap<T>(
          title: title!,
          options: options,
          selectedIds: selectedIds,
          singleSelection: isRadio,
          onSelectionChanged: onSelectionChanged,
        ),
      ],
    );
  }
}
