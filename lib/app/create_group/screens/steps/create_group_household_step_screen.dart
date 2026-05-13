import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/create_group/widgets/title.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class CreateGroupHouseholdStepScreen extends HookConsumerWidget {
  const CreateGroupHouseholdStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(groupFormProvider);
    final flow = ref.watch(createGroupFlowProvider);
    final options = ref.watch(getCreateGroupFormOptionsProvider).requireValue;
    final flowNotifier = ref.read(createGroupFlowProvider.notifier);
    final notifier = ref.read(groupFormProvider.notifier);
    final l10n = context.l10n;
    final apartmentNumberController = useTextEditingController(text: form.apartmentNumber);

    useEffect(() {
      if (apartmentNumberController.text != form.apartmentNumber) {
        apartmentNumberController.text = form.apartmentNumber;
      }
      return null;
    }, [form.apartmentNumber]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        ChipWrap<OptionModel>(
          title: l10n.typeOfProperty,
          options: options.propertyType,
          selectedIds: form.propertyTypeId == 0 ? const {} : {form.propertyTypeId},
          singleSelection: true,
          errorText: flow.propertyTypeError,
          onSelectionChanged: (ids) => notifier.setPropertyType(ids.firstOrNull ?? 0),
        ),
        const SizedBox(height: S.p12),
        TitleWidget(l10n.location),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            l10n.whatIsYourAddress,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        RegionListItem(
          iconPath: AppIcons.build,
          onTap: flowNotifier.openLocationPickerScreen,
          title: form.address.trim().isEmpty ? l10n.createGroupSelectAddress : form.address,
          subTitle: form.address.trim().isEmpty ? l10n.filtersLocationSearchHint : '',
        ),
        FieldErrorText(text: flow.locationError),
        const SizedBox(height: S.p12),
        TextFieldWithTitle.number(
          title: l10n.apartmentNumber,
          hintText: l10n.enterApartmentNumber,
          controller: apartmentNumberController,
          onChanged: notifier.updateApartmentNumber,
          errorText: flow.apartmentNumberError,
          subtitle: l10n.notVisibleInAd,
        ),
      ],
    );
  }
}
