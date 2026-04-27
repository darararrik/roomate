import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/widgets/sheets/options_picker_bottom_sheet.dart';

class RentDurationBottomSheet extends HookConsumerWidget {
  const RentDurationBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtersAsync = ref.watch(filtersProvider);

    return filtersAsync.when(
      loading: () => const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) =>
          SizedBox(height: 200, child: Center(child: Text(error.toString()))),
      data: (filters) {
        final options = filters.rentDuration;
        final selectedId = ref.watch(apartamentFilterProvider).rentDurationId;
        return OptionsPickerBottomSheet(
          title: context.l10n.rentPeriod,
          options: options,
          selectedIds: {selectedId},
          isMulti: false,
          onSelect: (ids) => ref
              .read(apartamentFilterProvider.notifier)
              .setRentDuration(ids.first),
        );
      },
    );
  }
}
