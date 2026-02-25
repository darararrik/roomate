import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/selection_step_content.dart';

@RoutePage()
class FeautesSecondStepScreen extends StatelessWidget {
  const FeautesSecondStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionStepContent(stepKey: SelectionStepKey.featuresSecond);
  }
}
