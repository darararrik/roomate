import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

class DistrictBottomSheet extends HookConsumerWidget {
  const DistrictBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final query = useListenable(searchController).text.trim().toLowerCase();
    final filtersAsync = ref.watch(filtersProvider);
    final currentDistrictIds = ref.watch(apartamentFilterProvider).districtIds;
    final selectedDistrictIds = useState<Set<int>>(currentDistrictIds.toSet());

    return filtersAsync.when(
      loading: () => const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) =>
          SizedBox(height: 200, child: Center(child: Text(error.toString()))),
      data: (filters) {
        final districts = query.isEmpty
            ? filters.districts
            : filters.districts
                  .where(
                    (district) => district.title.toLowerCase().contains(query),
                  )
                  .toList(growable: false);

        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.7,
          maxChildSize: 0.9,
          minChildSize: 0.4,
          builder: (context, controller) {
            return BaseBottomSheet(
              title: context.l10n.selectDistrict,
              child: Expanded(
                child: Padding(
                  padding: const P(horizontal: S.p24),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const P(bottom: S.p12),
                        child: InputWidget(
                          controller: searchController,
                          prefixIcon: AppIcon(
                            AppIcons.search,
                            color: context.colors.graysIcon500,
                          ),
                          hintText: context.l10n.search,
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          controller: controller,
                          itemCount: districts.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: S.p4),
                          itemBuilder: (context, index) {
                            final district = districts[index];
                            final isSelected = selectedDistrictIds.value
                                .contains(district.id);

                            return InkWell(
                              onTap: () {
                                final ids = Set<int>.from(
                                  selectedDistrictIds.value,
                                );
                                isSelected
                                    ? ids.remove(district.id)
                                    : ids.add(district.id);
                                selectedDistrictIds.value = ids;
                              },
                              child: Padding(
                                padding: const P(all: S.p12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        district.title,
                                        style: context
                                            .typography
                                            .bodyDescription
                                            .copyWith(height: 17 / 14),
                                      ),
                                    ),
                                    SelectionButton(isSelected: isSelected),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const P(top: S.p16),
                        child: PrimaryButton(
                          text: context.l10n.apply,
                          onPressed: () {
                            final notifier = ref.read(
                              apartamentFilterProvider.notifier,
                            );
                            notifier.setDistrictIds(selectedDistrictIds.value);
                            notifier.apply();
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
