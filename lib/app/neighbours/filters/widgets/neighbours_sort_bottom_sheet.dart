import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/filters/notifier/who_search_filter_notifier.dart';
import 'package:roomate/lib.dart';

class NeighboursSortBottomSheet extends HookConsumerWidget {
  const NeighboursSortBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSortType = ref.watch(whoSearchFilterProvider).sortType;
    final selectedSortType = useState(currentSortType);
    final sortOptions = [
      _SortOption(
        title: whoSearchSortTypeTitle(
          context,
          WhoSearchSortType.matchPercentDesc,
        ),
        type: WhoSearchSortType.matchPercentDesc,
      ),
      _SortOption(
        title: context.l10n.sortByPriceAsc,
        type: WhoSearchSortType.priceAsc,
      ),
      _SortOption(
        title: context.l10n.sortByPriceDesc,
        type: WhoSearchSortType.priceDesc,
      ),
      _SortOption(
        title: context.l10n.sortByDateDesc,
        type: WhoSearchSortType.publishDateDesc,
      ),
      _SortOption(
        title: context.l10n.sortByDateAsc,
        type: WhoSearchSortType.publishDateAsc,
      ),
      _SortOption(
        title: context.l10n.sortByGroupSizeDesc,
        type: WhoSearchSortType.groupSizeDesc,
      ),
      _SortOption(
        title: context.l10n.sortByGroupSizeAsc,
        type: WhoSearchSortType.groupSizeAsc,
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
                onPressed: () async {
                  final notifier = ref.read(whoSearchFilterProvider.notifier);
                  notifier.setSortType(selectedSortType.value);
                  await notifier.apply();
                  if (context.mounted) {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String whoSearchSortTypeTitle(
  BuildContext context,
  WhoSearchSortType sortType,
) {
  return switch (sortType) {
    WhoSearchSortType.matchPercentDesc => context.l10n.sortByMatchPercentDesc,
    WhoSearchSortType.priceAsc => context.l10n.sortByPriceAsc,
    WhoSearchSortType.priceDesc => context.l10n.sortByPriceDesc,
    WhoSearchSortType.publishDateDesc => context.l10n.sortByDateDesc,
    WhoSearchSortType.publishDateAsc => context.l10n.sortByDateAsc,
    WhoSearchSortType.groupSizeDesc => context.l10n.sortByGroupSizeDesc,
    WhoSearchSortType.groupSizeAsc => context.l10n.sortByGroupSizeAsc,
  };
}

class _SortOption {
  const _SortOption({required this.title, required this.type});

  final String title;
  final WhoSearchSortType type;
}
