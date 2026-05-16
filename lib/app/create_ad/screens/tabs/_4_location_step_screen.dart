import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class LocationStepScreen extends HookConsumerWidget {
  const LocationStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final flowNotifier = ref.read(createAdFlowProvider.notifier);
    final notifier = ref.read(adFormProvider.notifier);
    final profileCity = ref.watch(
      globalProfileProvider.select((value) => value.value?.city ?? ''),
    );
    final citiesState = ref.watch(citiesProvider);
    final cityTitle = citiesState.maybeWhen(
      data: (cities) {
        if (profileCity.trim().isNotEmpty) return profileCity;
        return cities.isNotEmpty ? cities.first.title : '';
      },
      orElse: () => profileCity,
    );
    final apartmentController = useTextEditingController(
      text: state.apartmentNumber == 0 ? '' : '${state.apartmentNumber}',
    );

    useEffect(() {
      final apartmentNumber = state.apartmentNumber == 0
          ? ''
          : '${state.apartmentNumber}';
      if (apartmentController.text != apartmentNumber) {
        apartmentController.text = apartmentNumber;
      }
      return null;
    }, [state.apartmentNumber]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Text(context.l10n.location, style: context.typography.headline1),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            context.l10n.whatIsYourAddress,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ),
        RegionListItem(
          iconPath: AppIcons.city,
          onTap: flowNotifier.openCityPickerScreen,
          title: cityTitle.isNotEmpty ? cityTitle : context.l10n.selectRegion,
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
          subtitle: context.l10n.notVisibleInAd,
        ),
      ],
    );
  }
}
