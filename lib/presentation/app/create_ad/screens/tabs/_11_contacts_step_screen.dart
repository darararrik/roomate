import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_taxonomy_notifier.dart';
import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(createAdProvider);
    final notifier = ref.read(createAdProvider.notifier);

    final phoneController = useTextEditingController();
    useEffect(() {
      if (phoneController.text != draft.mainPhone) {
        phoneController.text = draft.mainPhone;
      }
      return null;
    }, [draft.mainPhone]);

    // Для доп. номера берем значение из нашего стейта (draft)
    final additionalPhoneController = useTextEditingController(text: draft.additionalNumber);

    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final contactTags = taxonomy.contactInfoGroup;
    final selectedContactIds =
        (draft.selectedTagIdsByType[CreateAdTagTypeIds.contactMethod] ?? const <int>[]).toSet();

    final isFirstTagSelected =
        contactTags.tags.firstOrNull?.id != null &&
        selectedContactIds.contains(contactTags.tags.first.id);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        TextFieldWithTitle(
          title: context.l10n.phone,
          controller: phoneController,
          readOnly: true,
          hintText: context.l10n.phonePlaceholder,
          needSuffixIcon: false,
        ),
        if (isFirstTagSelected)
          TextFieldWithTitle(
            title: context.l10n.additionalPhone,
            controller: additionalPhoneController,
            onChanged: notifier.updateAdditionalNumber,
            hintText: context.l10n.phonePlaceholder2,
          ),
        SelectableTagGroup(
          tagsGroup: contactTags,
          selectedIds: selectedContactIds,
          onTagSelected: (tag, isSelected) {
            notifier.updateTag(CreateAdTagTypeIds.contactMethod, tag.id);
          },
        ),
      ],
    );
  }
}
