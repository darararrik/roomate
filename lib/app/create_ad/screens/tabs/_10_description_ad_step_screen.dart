import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class DescriptionAdStepScreen extends HookConsumerWidget {
  const DescriptionAdStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final notifier = ref.read(adFormProvider.notifier);

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
        ),
        Text(
          context.l10n.minimumCharactersRequired,
          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
