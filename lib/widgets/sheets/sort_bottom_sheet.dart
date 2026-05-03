import 'package:flutter/material.dart';

import 'package:domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

class SortBottomSheet extends HookConsumerWidget {
  const SortBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSortType = ref.watch(apartamentFilterProvider).sortType;
    final selectedSortType = useState(currentSortType);
    final sortOptions = [
      _SortOption(
        title: context.l10n.sortByPopularity,
        type: ApartmentSortType.popularity,
      ),
      _SortOption(
        title: context.l10n.sortByPriceAsc,
        type: ApartmentSortType.priceAsc,
      ),
      _SortOption(
        title: context.l10n.sortByPriceDesc,
        type: ApartmentSortType.priceDesc,
      ),
      _SortOption(
        title: context.l10n.sortByDateDesc,
        type: ApartmentSortType.dateDesc,
      ),
      _SortOption(
        title: context.l10n.sortByDateAsc,
        type: ApartmentSortType.dateAsc,
      ),
    ];

    return BaseBottomSheet(
      title: context.l10n.toSort,
      child: Padding(
        padding: const P(horizontal: S.p24, top: S.p12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GroupButton<_SortOption>(
              isRadio: true,
              buttons: sortOptions,
              onSelected: (option, index, isSelected) {
                selectedSortType.value = option.type;
              },
              buttonBuilder: (selected, value, context) {
                final isSelected = value.type == selectedSortType.value;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(S.p12),
                        child: Text(
                          value.title,
                          style: context.typography.bodyDescription.copyWith(
                            height: 17 / 14,
                          ),
                        ),
                      ),
                    ),
                    SelectionButton(isSelected: isSelected, isRadio: true),
                  ],
                );
              },
            ),
            Padding(
              padding: const P(top: S.p16),
              child: PrimaryButton(
                text: context.l10n.apply,
                onPressed: () {
                  final notifier = ref.read(apartamentFilterProvider.notifier);
                  notifier.setSortType(selectedSortType.value);
                  notifier.apply();
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SortOption {
  const _SortOption({required this.title, required this.type});

  final String title;
  final ApartmentSortType type;
}
