import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/presentation/app/create_ad/notifier/create_ad/ad_form_notifier.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/helpers/p.dart';
import 'package:roomate/presentation/widgets/chips/chip_wrap.dart';
import 'package:roomate/presentation/widgets/common/error_view.dart';
import 'package:roomate/presentation/widgets/common/loading_widget.dart';

@RoutePage()
class RoomTypeStepScreen extends ConsumerWidget {
  const RoomTypeStepScreen({super.key});

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
        if (options.premisesType.isEmpty) {
          return const SizedBox.shrink();
        }
        return SingleChildScrollView(
          padding: const P(horizontal: S.p16),
          child: ChipWrap(
            title: l10n.typeOfProperty,
            options: options.premisesType,
            selectedIds: state.premisesTypeId != 0 ? {state.premisesTypeId} : {},
            onSelectionChanged: (ids) {
              notifier.setPremisesType(ids.isNotEmpty ? ids.first : 0);
            },
            singleSelection: true,
          ),
        );
      },
    );
  }
}
