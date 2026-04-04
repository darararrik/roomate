import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class FeaturesSecondStepScreen extends ConsumerWidget {
  const FeaturesSecondStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);
    final l10n = context.l10n;

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            if (options.furniture.isNotEmpty)
              ChipWrap(
                title: l10n.furniture,
                options: options.furniture,
                selectedIds: state.furnitureId != 0 ? {state.furnitureId} : {},
                onSelectionChanged: (ids) {
                  notifier.setFurniture(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
            if (options.furniture.isNotEmpty && options.amenities.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.amenities.isNotEmpty)
              ChipWrap(
                title: l10n.amenities,
                options: options.amenities,
                selectedIds: state.amenitiesIds,
                onSelectionChanged: notifier.setAmenitiesIds,
                singleSelection: false,
              ),
            if (options.amenities.isNotEmpty && options.bathroom.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.bathroom.isNotEmpty)
              ChipWrap(
                title: l10n.bathroomRoom,
                options: options.bathroom,
                selectedIds: state.bathroomIds,
                onSelectionChanged: notifier.setBathroomIds,
                singleSelection: false,
              ),
            if (options.bathroom.isNotEmpty && options.appliances.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.appliances.isNotEmpty)
              ChipWrap(
                title: l10n.householdAppliances,
                options: options.appliances,
                selectedIds: state.appliancesIds,
                onSelectionChanged: notifier.setAppliancesIds,
                singleSelection: false,
              ),
            if (options.appliances.isNotEmpty && options.stove.isNotEmpty)
              const SizedBox(height: S.p12),
            if (options.stove.isNotEmpty)
              ChipWrap(
                title: l10n.stove,
                options: options.stove,
                selectedIds: state.stoveId != 0 ? {state.stoveId} : {},
                onSelectionChanged: (ids) {
                  notifier.setStove(ids.isNotEmpty ? ids.first : 0);
                },
                singleSelection: true,
              ),
          ],
        );
      },
    );
  }
}
