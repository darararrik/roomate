import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_tag_type_ids.dart';
import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(createAdProvider);
    final taxonomy = ref.watch(createAdTaxonomyProvider);
    final notifier = ref.read(createAdProvider.notifier);

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final contactTags = taxonomy.contactInfoGroup;
    final selectedContactIds =
        (draft.selectedTagIdsByType[CreateAdTagTypeIds.contactMethod] ?? const <int>[])
            .toSet();
    final firstContactTagId = contactTags.tags.firstOrNull?.id;
    final showAdditionNumber = firstContactTagId != null &&
        selectedContactIds.contains(firstContactTagId);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: context.l10n.phone,
          hintText: context.l10n.phonePlaceholder,
          controller: titleController,
        ),
        Visibility(
          visible: showAdditionNumber,
          child: TextFieldWithTitle(
            title: context.l10n.additionalPhone,
            controller: descriptionController,
            hintText: context.l10n.phonePlaceholder2,
            onChanged: notifier.updateAdditionalNumber,
          ),
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
