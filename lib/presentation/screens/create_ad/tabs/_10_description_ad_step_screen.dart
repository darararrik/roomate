import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions/context_x.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class DescriptionAdStepScreen extends HookWidget {
  const DescriptionAdStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    return ListView(
      padding: const P(horizontal: S.p16),
      children: [
        TextFieldWithTitle(
          title: "Заголовок объявления",
          hintText: "Просторная квартира возле метро",
          controller: titleController,
        ),
        const SizedBox(height: S.p12),
        TextFieldWithTitle.multiline(
          title: "Описание",
          hintText:
              "Рассскажите, в каком состоянии квартира, для кого сдаёте и какие условия заселения.",
          controller: descriptionController,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            "Необходимо ввести минимум 50 символов",
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.graysText400,
            ),
          ),
        ),
      ],
    );
  }
}
