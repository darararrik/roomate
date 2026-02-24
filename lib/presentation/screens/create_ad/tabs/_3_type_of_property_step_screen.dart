import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class TypeOfPropertyStepScreen extends StatelessWidget {
  const TypeOfPropertyStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = [
      context.l10n.apartment,
      context.l10n.apartmentsRoom,
      context.l10n.room,
      context.l10n.bedPlace,
      context.l10n.house,
      context.l10n.cottage,
      context.l10n.townhouse,
    ];
    return ListView(
      children: [
        SelectableTagGroup(
          isRadio: true,
          title: context.l10n.typeOfProperty,
          tags: tags,
          onTagSelected: (tag, selected) {},
        ),
      ],
    );
  }
}
