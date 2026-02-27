import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/text_field_with_title.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/loading_state.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';
import 'package:roomate/state/createAd/create_ad_notifier.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final stateCategories = ref.read(
      categoriesProvider(SelectionStepKey.contactInfo),
    );
    return stateCategories.when(
      data: (data) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            TextFieldWithTitle(
              title: "Телефон",
              //TODO: реализовать
              hintText: "Номер из акка!!",
              controller: titleController,
            ),
            const SizedBox(height: S.p12),
            TextFieldWithTitle(
              title: "Дополнительный номер телефона",
              controller: descriptionController,
              hintText: '+7 (___) ___-__-__',
            ),
            SelectableTagGroup(title: data.first.title, tags: data.first.tags),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) => const LoadingState(),
      loading: () => const LoadingState(),
    );
  }
}
