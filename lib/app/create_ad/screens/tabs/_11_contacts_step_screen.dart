import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);

    final phoneController = useTextEditingController();
    useEffect(() {
      if (phoneController.text != draft.mainPhone) {
        phoneController.text = draft.mainPhone;
      }
      return null;
    }, [draft.mainPhone]);

    final additionalPhoneController = useTextEditingController(
      text: draft.additionalNumber,
    );

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            TextFieldWithTitle(
              title: context.l10n.phone,
              controller: phoneController,
              readOnly: true,
              hintText: context.l10n.phonePlaceholder,
              needSuffixIcon: false,
              errorText: flow.phoneError,
            ),
            ChipWrap(
              title: context.l10n.contactTitle,
              options: options.contactMethod,
              selectedIds: draft.contactMethodId != 0
                  ? {draft.contactMethodId}
                  : {},
              onSelectionChanged: (ids) {
                notifier.setContactMethod(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flow.contactMethodError,
            ),
            TextFieldWithTitle(
              title: context.l10n.additionalPhone,
              controller: additionalPhoneController,
              onChanged: notifier.updateAdditionalPhone,
              hintText: context.l10n.phonePlaceholder2,
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
    );
  }
}
