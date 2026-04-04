import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class DescriptionAdStepScreen extends HookConsumerWidget {
  const DescriptionAdStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(adFormProvider);

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
        ),
        const SizedBox(height: S.p12),
        TextFieldWithTitle.multiline(
          title: context.l10n.adDescription,
          hintText: context.l10n.adDescriptionHint,
          controller: descriptionController,
          onChanged: notifier.updateDescription,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            context.l10n.minimumCharactersRequired,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
      ],
    );
  }
}
