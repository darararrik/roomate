import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class DescriptionAdStepScreen extends HookConsumerWidget {
  const DescriptionAdStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);

    final titleController = useTextEditingController(text: form.title);
    final descriptionController = useTextEditingController(
      text: form.description,
    );
    final notifier = ref.read(adFormProvider.notifier);

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
          title: context.l10n.adTitle,
          hintText: context.l10n.adTitleHint,
          controller: titleController,
          onChanged: notifier.updateTitle,
          errorText: flow.titleError,
        ),
        TextFieldWithTitle.multiline(
          title: context.l10n.adDescription,
          hintText: context.l10n.adDescriptionHint,
          controller: descriptionController,
          onChanged: notifier.updateDescription,
          errorText: flow.descriptionError,
          subtitle: context.l10n.minimumCharactersRequired,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
