import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/presentation.dart';

@RoutePage()
class LocationStepScreen extends HookConsumerWidget {
  const LocationStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);

    final apartmentController = useTextEditingController();
    useEffect(() {
      final t = state.apartmentNumber != 0 ? '${state.apartmentNumber}' : '';
      if (apartmentController.text != t) {
        apartmentController.text = t;
        apartmentController.selection = TextSelection.collapsed(offset: t.length);
      }
      return null;
    }, [state.apartmentNumber]);

    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        Text(context.l10n.location, style: context.typography.headline1),
        const SizedBox(height: S.p8),
        Text(
          context.l10n.whatIsYourAddress,
          style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: RegionListItem(
            iconPath: AppIcons.city,
            onTap: () => context.pushRoute(
              LocationRoute(
                onSelected: (address) => notifier.updateAddress(address),
              ),
            ),
            title: context.l10n.moscowCity,
            subTitle: context.l10n.locationDetailsHint,
          ),
        ),
        const SizedBox(height: S.p12),
        TextFieldWithTitle.number(
          title: context.l10n.apartmentNumber,
          hintText: context.l10n.enterApartmentNumber,
          controller: apartmentController,
          onChanged: notifier.updateApartmentNumber,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            context.l10n.notVisibleInAd,
            style: context.typography.bodyDescription.copyWith(color: context.colors.graysText400),
          ),
        ),
      ],
    );
  }
}
