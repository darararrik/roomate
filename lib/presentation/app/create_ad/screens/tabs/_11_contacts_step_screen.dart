import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class ContactsStepScreen extends HookConsumerWidget {
  const ContactsStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);

    final phoneController = useTextEditingController();
    useEffect(() {
      if (phoneController.text != draft.mainPhone) {
        phoneController.text = draft.mainPhone;
      }
      return null;
    }, [draft.mainPhone]);

    final additionalPhoneController = useTextEditingController(text: draft.additionalNumber);

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFieldWithTitle(
              title: context.l10n.phone,
              controller: phoneController,
              readOnly: true,
              hintText: context.l10n.phonePlaceholder,
              needSuffixIcon: false,
            ),
            if (options.contactMethod.isNotEmpty) ...[
              const SizedBox(height: S.p12),
              ChipWrap(
                title: context.l10n.contactTitle,
                options: options.contactMethod,
                selectedIds: draft.contactMethodId != 0 ? {draft.contactMethodId} : {},
                onSelectionChanged: (ids) {
                  notifier.setContactMethod(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
            ],
            const SizedBox(height: S.p12),
            TextFieldWithTitle(
              title: context.l10n.additionalPhone,
              controller: additionalPhoneController,
              onChanged: notifier.updateAdditionalPhone,
              hintText: context.l10n.phonePlaceholder2,
            ),
          ],
        );
      },
    );
  }
}
