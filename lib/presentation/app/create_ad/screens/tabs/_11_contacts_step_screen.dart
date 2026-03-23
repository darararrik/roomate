import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/presentation/app/create_ad/state/create_ad/create_ad_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final data = ref.watch(createAdProvider.select((s) => s.contactInfoTags));

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: "Телефон",
          //TODO: реализовать
          hintText: "Номер из акка!!",
          controller: titleController,
        ),
        TextFieldWithTitle(
          title: "Описание",
          controller: descriptionController,
          hintText: '+7 (___) ___-__-__',
        ),
        SelectableTagGroup(
          tagsGroup: data.first,
          onTagSelected: (tag, isSelected) {
            ref.read(createAdProvider.notifier).updateContactInfoTags(
                  categoryTitle: data.first.groupTitle,
                  tag: tag.title,
                  isSelected: isSelected,
                  isRadio: true,
                );
          },
        ),
      ],
    );
  }
}
