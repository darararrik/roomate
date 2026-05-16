import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/filters/notifier/who_search_filter_notifier.dart';
import 'package:roomate/lib.dart';

class NeighboursRentDurationBottomSheet extends HookConsumerWidget {
  const NeighboursRentDurationBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtersAsync = ref.watch(filtersNeighboursProvider);
    final currentRentDurationId = ref
        .watch(whoSearchFilterProvider)
        .rentDurationId;
    final selectedRentDurationId = useState(currentRentDurationId);

    return filtersAsync.when(
      loading: () => const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) =>
          SizedBox(height: 200, child: Center(child: Text(error.toString()))),
      data: (filters) {
        final rentDurations = filters.rentDuration;

        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.45,
          maxChildSize: 0.8,
          minChildSize: 0.3,
          builder: (context, controller) {
            return BaseBottomSheet(
              title: context.l10n.rentPeriod,
              child: Expanded(
                child: Padding(
                  padding: const P(horizontal: S.p24),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          controller: controller,
                          itemCount: rentDurations.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: S.p4),
                          itemBuilder: (context, index) {
                            final rentDuration = rentDurations[index];
                            final isSelected =
                                selectedRentDurationId.value == rentDuration.id;

                            return GestureDetector(
                              onTap: () {
                                selectedRentDurationId.value = isSelected
                                    ? 0
                                    : rentDuration.id;
                              },
                              child: Padding(
                                padding: const P(all: S.p12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        rentDuration.title,
                                        style: context
                                            .typography
                                            .bodyDescription
                                            .copyWith(height: 17 / 14),
                                      ),
                                    ),
                                    SelectionButton(
                                      isSelected: isSelected,
                                      isRadio: true,
                                    ),
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
                          onPressed: () async {
                            final notifier = ref.read(
                              whoSearchFilterProvider.notifier,
                            );
                            notifier.setRentDuration(
                              selectedRentDurationId.value,
                            );
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
              ),
            );
          },
        );
      },
    );
  }
}
