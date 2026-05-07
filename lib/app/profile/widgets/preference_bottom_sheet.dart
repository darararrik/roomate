import 'package:flutter/material.dart';

import 'package:domain/models/preferences_tags/selected_user_preferences_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/profile/widgets/preference_options_list.dart';
import 'package:roomate/app/profile/widgets/preference_sheet_config.dart';
import 'package:roomate/lib.dart';

class PreferenceBottomSheet extends HookConsumerWidget {
  const PreferenceBottomSheet({super.key, required this.config});

  final PreferenceSheetConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIds = useState<Set<int>>(config.selectedIds.toSet());
    final isSaving = useState(false);
    final isScrollable = config.options.length > 8;

    return BaseBottomSheet(
      title: config.title,
      child: Padding(
        padding: const P(horizontal: S.p24, bottom: S.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isScrollable)
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
                child: SingleChildScrollView(
                  child: PreferenceOptionsList(
                    options: config.options,
                    selectedIds: selectedIds.value,
                    isMulti: config.isMulti,
                    onChanged: (ids) => selectedIds.value = ids,
                  ),
                ),
              )
            else
              PreferenceOptionsList(
                options: config.options,
                selectedIds: selectedIds.value,
                isMulti: config.isMulti,
                onChanged: (ids) => selectedIds.value = ids,
              ),
            const SizedBox(height: S.p24),
            PrimaryButton(
              text: isSaving.value ? context.l10n.saving : context.l10n.save,
              onPressed: isSaving.value
                  ? null
                  : () async {
                      isSaving.value = true;
                      final currentPreferences =
                          ref.read(globalProfileProvider).value?.preferences ??
                          const SelectedUserPreferencesModel();
                      final updatedPreferences = config.updatePreferences(
                        currentPreferences,
                        selectedIds.value.toList(),
                      );
                      final isSaved = await ref
                          .read(globalProfileProvider.notifier)
                          .updatePreferences(updatedPreferences);

                      if (!context.mounted) return;

                      isSaving.value = false;
                      if (isSaved) {
                        Navigator.of(context).pop();
                      }
                    },
            ),
          ],
        ),
      ),
    );
  }
}
