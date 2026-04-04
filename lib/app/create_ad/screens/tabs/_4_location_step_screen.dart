import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class LocationStepScreen extends HookConsumerWidget {
  const LocationStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);

    final apartmentController = useTextEditingController();
    useEffect(() {
      final t = state.apartmentNumber != 0 ? '${state.apartmentNumber}' : '';
      if (apartmentController.text != t) {
        apartmentController.text = t;
        apartmentController.selection = TextSelection.collapsed(
          offset: t.length,
        );
      }
      return null;
    }, [state.apartmentNumber]);

    final streetErr = flow.streetError;

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Text(context.l10n.location, style: context.typography.headline1),
        Text(
          context.l10n.whatIsYourAddress,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RegionListItem(
              iconPath: AppIcons.city,
              //TODO: вынести в нотифаер
              onTap: () => context.pushRoute(
                LocationRoute(onSelected: notifier.selectStreet),
              ),
              title: context.l10n.createAdCityOmsk,
              subTitle: context.l10n.createAdStreetPickerSubtitle,
            ),
            FieldErrorText(text: streetErr),
          ],
        ),
        TextFieldWithTitle.number(
          title: context.l10n.apartmentNumber,
          hintText: context.l10n.enterApartmentNumber,
          controller: apartmentController,
          onChanged: notifier.updateApartmentNumber,
        ),
        Text(
          context.l10n.notVisibleInAd,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ].separated(const SizedBox(height: S.p12)),
    );
  }
}
