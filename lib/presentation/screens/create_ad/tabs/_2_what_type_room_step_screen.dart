import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/data/datasources/remote/mock.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/presentation/screens/create_ad/widgets/selection_step_content.dart';

@RoutePage()
class WhatTypeRoomStepScreen extends StatelessWidget {
  const WhatTypeRoomStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectionStepContent(stepKey: SelectionStepKey.roomType);
  }
}
