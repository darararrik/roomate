import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/dynamic_screen.dart';
import 'package:roomate/presentation/widgets/loading_state.dart';
import 'package:roomate/state/createAd/create_ad_notifier.dart';

@RoutePage()
class FeautesSecondStepScreen extends ConsumerWidget {
  const FeautesSecondStepScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final fiedls = ref.watch(
      stepFieldsProvider(SelectionStepKey.featuresSecond),
    );
    return fiedls.when(
      data: (data) => DynamicAdForm(fields: data),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const LoadingState(),
    );
  }
}
