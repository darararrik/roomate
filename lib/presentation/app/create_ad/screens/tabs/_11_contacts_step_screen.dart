import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/tags_group_model.dart';
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
    final stateCategories = ref.watch(
      categoriesProvider(SelectionStepKey.contactInfo),
    );
    final List<TagsGroupModel> selectedTags =
        ref
            .watch(createAdProvider)
            .selectedTags[SelectionStepKey.contactInfo] ??
        [];

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
            SelectableTagGroup(
              tags: data.first,
              selectedTags: selectedTags
                  .firstWhere(
                    (g) => g.title == data.first.title,
                    orElse: () => data.first.copyWith(tags: []),
                  )
                  .tags,
              onTagSelected: (tag, isSelected) {
                ref
                    .read(createAdProvider.notifier)
                    .updateTags(
                      stepKey: SelectionStepKey.contactInfo,
                      categoryTitle: data.first.title,
                      tag: tag,
                      isSelected: isSelected,
                      isRadio: data.first.isRadio,
                    );
              },
            ),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) =>
          Center(child: Text(error.toString())),
      loading: () => const LoadingState(),
    );
  }
}
