import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/create_ad/notifier/ad_form/ad_form_notifier.dart';
import 'package:roomate/app/create_ad/notifier/create_ad_flow/create_ad_flow_notifier.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/widgets/chips/chip_wrap.dart';
import 'package:roomate/widgets/common/error_view.dart';
import 'package:roomate/widgets/common/loading_widget.dart';

@RoutePage()
class PropertyTypeStepScreen extends ConsumerWidget {
  const PropertyTypeStepScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(adFormProvider);
    final flow = ref.watch(createAdFlowProvider);
    final notifier = ref.read(adFormProvider.notifier);
    final optionsAsync = ref.watch(getAdFormOptionsProvider);

    return optionsAsync.when(
      loading: () => const LoadingWidget(),
      error: (_, _) => const ErrorView(),
      data: (options) {
        return ListView(
          padding: const P(horizontal: S.p16),
          children: [
            ChipWrap(
              title: context.l10n.createAdHousingTypeTitle,
              options: options.propertyType,
              selectedIds: state.propertyTypeId != 0
                  ? {state.propertyTypeId}
                  : {},
              onSelectionChanged: (ids) {
                notifier.setPropertyType(ids.isNotEmpty ? ids.first : 0);
              },
              singleSelection: true,
              errorText: flow.propertyError,
            ),
          ].separated(const SizedBox(height: S.p12)),
        );
      },
    );
  }
}
