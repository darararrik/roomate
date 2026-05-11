import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

class OptionsPickerBottomSheet extends HookConsumerWidget {
  const OptionsPickerBottomSheet({
    super.key,
    required this.title,
    required this.options,
    required this.selectedIds,
    required this.isMulti,
    required this.onSelect,
  });

  final String title;
  final List<OptionModel> options;

  /// текущие выбранные id
  final Set<int> selectedIds;

  /// radio или multi
  final bool isMulti;

  /// callback в notifier
  final void Function(Set<int> ids) onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState<Set<int>>({...selectedIds});
    final isScrollable = options.length > 4;

    final items = options.map((option) {
      final isSelected = selected.value.contains(option.id);

      return Padding(
        padding: const P(bottom: S.p12),
        child: ElevatedButton(
          onPressed: () {
            if (isMulti) {
              final newSet = {...selected.value};

              if (isSelected) {
                newSet.remove(option.id);
              } else {
                newSet.add(option.id);
              }
              selected.value = newSet;
            } else {
              selected.value = {option.id};
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected
                ? context.colors.orange
                : context.colors.graysLight100,
          ),
          child: Text(
            option.title,
            style: context.typography.activesButton.copyWith(
              color: isSelected
                  ? context.colors.graysWhite
                  : context.colors.graysText400,
            ),
          ),
        ),
      );
    }).toList();

    return BaseBottomSheet(
      title: title,
      child: Padding(
        padding: const P(horizontal: S.p24, top: S.p12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isScrollable
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: ListView(children: items),
                  )
                : Column(mainAxisSize: MainAxisSize.min, children: items),

            Padding(
              padding: const P(top: S.p16),

              child: PrimaryButton(
                text: context.l10n.apply,

                onPressed: () {
                  onSelect(selected.value);
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
