import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class LocationStepScreen extends HookWidget {
  const LocationStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return ListView(
      children: [
        Text(context.l10n.location, style: context.typography.headline1),
        const SizedBox(height: S.p8),
        Text(
          context.l10n.whatIsYourAddress,
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.text400,
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: RegionListItem(
            iconPath: AppIcons.city,
            onTap: () => context.pushRoute(const LocationRoute()),
            title: context.l10n.moscowCity,
            subTitle: context.l10n.locationDetailsHint,
          ),
        ),
        TextFieldWithTitle.number(
          title: context.l10n.apartmentNumber,
          hintText: context.l10n.enterApartmentNumber,
          controller: controller,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            context.l10n.notVisibleInAd,
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.text400,
            ),
          ),
        ),
      ],
    );
  }
}
