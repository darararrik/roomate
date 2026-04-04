import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class LocationStepScreen extends HookConsumerWidget {
  const LocationStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flow = ref.watch(createAdFlowProvider);
    final flowNotifier = ref.read(createAdFlowProvider.notifier);
    final notifier = ref.read(adFormProvider.notifier);
    final apartmentController = useTextEditingController();
    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Padding(
          padding: const P(vertical: S.p4),
          child: Column(
            crossAxisAlignment: .start,
            spacing: S.p12,
            children: [
              Text(context.l10n.location, style: context.typography.headline1),
              Text(
                context.l10n.whatIsYourAddress,
                style: context.typography.bodyDescription.copyWith(
                  color: context.colors.graysText400,
                ),
              ),
            ],
          ),
        ),
        RegionListItem(
          iconPath: AppIcons.city,
          onTap: () => flowNotifier.openStreetPickerScreen(),
          title: context.l10n.createAdCityOmsk,
          subTitle: ref.watch(selectedStreetNameProvider),
        ),
        FieldErrorText(text: flow.streetError),
        const SizedBox(height: S.p12),

        TextFieldWithTitle.number(
          title: context.l10n.apartmentNumber,
          hintText: context.l10n.enterApartmentNumber,
          controller: apartmentController,
          onChanged: notifier.updateApartmentNumber,
          errorText: flow.apartmentNumberError,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            context.l10n.notVisibleInAd,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
        FieldErrorText(text: flow.apartmentNumberError),
      ],
    );
  }
}
