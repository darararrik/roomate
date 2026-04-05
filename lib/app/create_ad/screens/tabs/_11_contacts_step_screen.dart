import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch заставляет виджет перерисовываться при изменении draft
    final draft = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final options = ref.watch(getAdFormOptionsProvider).requireValue;

    final phoneController = useTextEditingController(text: draft.mainPhone);
    final additionalPhoneController = useTextEditingController();
    final firstOptionId = options.contactMethod.isNotEmpty ? options.contactMethod.first.id : null;
    final isFirstSelected = firstOptionId != null && draft.contactMethodId == firstOptionId;
    useEffect(() {
      if (phoneController.text != draft.mainPhone) {
        phoneController.text = draft.mainPhone;
      }
      return null;
    }, [draft.mainPhone, draft.additionalNumber]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: context.l10n.phone,
          controller: phoneController,
          readOnly: true,
          hintText: context.l10n.phonePlaceholder,
          needSuffixIcon: false,
        ),
        if (isFirstSelected)
          TextFieldWithTitle.number(
            title: context.l10n.additionalPhone,
            controller: additionalPhoneController,
            onChanged: notifier.updateAdditionalPhone,
            hintText: context.l10n.phonePlaceholder2,
            errorText: flow.additionalPhoneError,
          ),
        ChipWrap(
          title: context.l10n.contactTitle,
          options: options.contactMethod,
          selectedIds: draft.contactMethodId != 0 ? {draft.contactMethodId} : {},
          onSelectionChanged: (ids) {
            notifier.setContactMethod(ids.isNotEmpty ? ids.first : 0);
          },
          singleSelection: true,
          errorText: flow.contactMethodError,
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
