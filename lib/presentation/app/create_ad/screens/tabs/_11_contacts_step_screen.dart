import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createAdProvider);

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final contactTags = state.contactInfoGroup;
    final showAdditionNumber = contactTags.tags.firstOrNull?.isSelected ?? false;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: context.l10n.phone,
          //TODO: реализовать
          hintText: "Номер из акка!!",
          controller: titleController,
        ),
        Visibility(
          visible: showAdditionNumber,
          child: TextFieldWithTitle(
            title: context.l10n.additionalPhone,
            controller: descriptionController,
            hintText: context.l10n.phonePlaceholder2,
            onChanged: (value) => ref.read(createAdProvider.notifier).updateAdditionalNumber(value),
          ),
        ),
        SelectableTagGroup(
          tagsGroup: contactTags,
          onTagSelected: (tag, isSelected) {
            ref.read(createAdProvider.notifier).updateTag(contactTags.groupId, tag.title);
          },
        ),
      ],
    );
  }
}
