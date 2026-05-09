import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage(name: 'FiltersRoute')
class FiltersScreen extends HookConsumerWidget {
  const FiltersScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(apartamentFilterProvider);
    final filterNotifier = ref.read(apartamentFilterProvider.notifier);
    final filtersState = ref.watch(filtersProvider);
    final currentProfileCity = ref.watch(currentProfileCityProvider);
    final effectiveCityTitle = filter.locationTitle.isNotEmpty
        ? filter.locationTitle
        : currentProfileCity?.title ?? '';
    final minPriceController = useTextEditingController(
      text: _formatPrice(filter.minPrice),
    );
    final maxPriceController = useTextEditingController(
      text: _formatPrice(filter.maxPrice),
    );

    useEffect(() {
      _syncControllerText(minPriceController, _formatPrice(filter.minPrice));
      _syncControllerText(maxPriceController, _formatPrice(filter.maxPrice));
      return null;
    }, [filter.minPrice, filter.maxPrice]);

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
          filtersState.when(
            data: (filters) => SliverPadding(
              padding: const P(horizontal: S.p16, vertical: S.p12),
              sliver: SliverList.list(
                children: [
                  _FilterSection(
                    title: context.l10n.yourGoal,
                    options: filters.rentGoal,
                    selectedIds: {if (filter.goalId != 0) filter.goalId},
                    isRadio: true,
                    onSelectionChanged: (ids) => filterNotifier.setCategory(
                      ids.isNotEmpty ? ids.first : 0,
                    ),
                  ),
                  const SizedBox(height: S.p12),
                  _FilterSection(
                    title: context.l10n.typeOfProperty,
                    options: filters.propertyTypes,
                    selectedIds: filter.propertyTypeIds.toSet(),
                    isRadio: false,
                    onSelectionChanged: filterNotifier.setPropertyTypeIds,
                  ),
                  const SizedBox(height: S.p12),
                  Text(
                    context.l10n.location,
                    style: context.typography.headline2,
                  ),
                  const SizedBox(height: S.p12),
                  RegionListItem(
                    iconPath: AppIcons.city,
                    onTap: () => context.pushRoute(
                      LocationRoute(
                        onSelected: (selection) {
                          filterNotifier.setLocationSelection(selection);
                          context.router.pop();
                        },
                      ),
                    ),
                    title: effectiveCityTitle.isEmpty
                        ? context.l10n.selectRegion
                        : effectiveCityTitle,
                    subTitle: effectiveCityTitle.isEmpty
                        ? context.l10n.filtersLocationSearchHint
                        : effectiveCityTitle,
                  ),
                  const SizedBox(height: S.p12),
                  _FilterSection(
                    title: context.l10n.numberOfRooms,
                    options: filters.roomsCounts,
                    selectedIds: filter.roomsCountIds.toSet(),
                    isRadio: false,
                    onSelectionChanged: filterNotifier.setRoomsCountIds,
                  ),
                  Padding(
                    padding: const P(vertical: S.p12),
                    child: Text(
                      context.l10n.price,
                      style: context.typography.headline2,
                    ),
                  ),
                  Row(
                    spacing: S.p12,
                    children: [
                      Expanded(
                        child: InputWidget(
                          controller: minPriceController,
                          hintText: context.l10n.priceFromHint,
                          needSuffixIcon: false,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) =>
                              filterNotifier.setMinPrice(_parsePrice(value)),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: S.p12),
                              child: Align(
                                widthFactor: 1,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  context.l10n.currencySymbol,
                                  style: context.typography.inputRegular
                                      .copyWith(
                                        color: context.colors.graysBlack,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InputWidget(
                          controller: maxPriceController,
                          hintText: context.l10n.priceToHint,
                          needSuffixIcon: false,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) =>
                              filterNotifier.setMaxPrice(_parsePrice(value)),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: S.p12),
                              child: Align(
                                widthFactor: 1,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  context.l10n.currencySymbol,
                                  style: context.typography.inputRegular
                                      .copyWith(
                                        color: context.colors.graysBlack,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: const P(vertical: S.p20),
                        child: Text(
                          context.l10n.childrenAllowedFilter,
                          style: context.typography.headline2,
                        ),
                      ),
                      Padding(
                        padding: const P(vertical: S.p12),
                        child: Switch.adaptive(
                          activeTrackColor: context.colors.orangeSecond,
                          value: filter.childrenAllowed,
                          onChanged: filterNotifier.setChildrenAllowed,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Padding(
                        padding: const P(vertical: S.p20),
                        child: Text(
                          context.l10n.petsAllowedFilter,
                          style: context.typography.headline2,
                        ),
                      ),
                      Padding(
                        padding: const P(vertical: S.p12),
                        child: Switch.adaptive(
                          activeTrackColor: context.colors.orangeSecond,
                          value: filter.petsAllowed,
                          onChanged: filterNotifier.setPetsAllowed,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            error: (_, _) => const SliverToBoxAdapter(child: ErrorView()),
            loading: () => const SliverFillRemaining(child: LoadingWidget()),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
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
    );
  }
}

String _formatPrice(double? value) {
  if (value == null) return '';
  if (value == value.roundToDouble()) {
    return value.toInt().toString();
  }
  return value.toString();
}

double? _parsePrice(String value) {
  final normalized = value.trim().replaceAll(' ', '');
  if (normalized.isEmpty) return null;
  return double.tryParse(normalized);
}

void _syncControllerText(TextEditingController controller, String value) {
  if (controller.text == value) return;
  controller.value = TextEditingValue(
    text: value,
    selection: TextSelection.collapsed(offset: value.length),
  );
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
