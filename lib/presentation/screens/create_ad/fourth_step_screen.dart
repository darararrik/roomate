import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/extensions.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/selectable_tag_group.dart';
import 'package:roomate/presentation/widgets/text_field_with_title.dart';

@RoutePage()
class FourthStepScreen extends HookWidget {
  const FourthStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final areaController = useTextEditingController();
    final floorController = useTextEditingController();
    final totalFloorsController = useTextEditingController();
    return Padding(
      padding: const P(bottom: S.p20),
      child: ListView(
        children: [
          const SelectableTagGroup(
            isRadio: true,
            title: "Количество комнат",
            tags: [
              "Студия",
              "1",
              "2",
              "3",
              "4",
              "5",
              "6+",
              "Свободная планировка",
            ],
          ),
          TextFieldWithTitle(
            title: 'Площадь квартиры',
            hintText: 'Введите площадь квартиры',
            controller: areaController,
          ),
          const SelectableTagGroup(
            isRadio: true,
            title: "Планировка",
            tags: ["Смежная", "Изолированная", "Смежно-изолированная"],
          ),
          TextFieldWithTitle(
            title: 'Этаж',
            hintText: 'Введите этаж',
            controller: floorController,
          ),
          TextFieldWithTitle(
            title: 'Этажей в доме',
            hintText: 'Количество этажей',
            controller: totalFloorsController,
          ),
        ].separated(const SizedBox(height: S.p12)),
      ),
    );
  }
}
