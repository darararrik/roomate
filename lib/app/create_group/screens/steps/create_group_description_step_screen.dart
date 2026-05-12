import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupDescriptionStepScreen extends HookConsumerWidget {
  const CreateGroupDescriptionStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final notifier = ref.read(groupFormProvider.notifier);
    final l10n = context.l10n;
    final titleController = useTextEditingController(text: form.title);
    final descriptionController = useTextEditingController(
      text: form.description,
    );

    useEffect(() {
      if (titleController.text != form.title) {
        titleController.text = form.title;
      }
      return null;
    }, [form.title]);

    useEffect(() {
      if (descriptionController.text != form.description) {
        descriptionController.text = form.description;
      }
      return null;
    }, [form.description]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: l10n.adTitle,
          hintText: l10n.createGroupAdTitleHint,
          controller: titleController,
          onChanged: notifier.updateTitle,
          errorText: flow.titleError,
        ),
        TextFieldWithTitle.multiline(
          title: l10n.adDescription,
          hintText: l10n.adDescriptionHint,
          controller: descriptionController,
          onChanged: notifier.updateDescription,
          errorText: flow.descriptionError,
        ),
        Text(
          l10n.minimumCharactersRequired,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
