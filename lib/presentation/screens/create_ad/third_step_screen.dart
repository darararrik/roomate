import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class ThirdStepScreen extends HookWidget {
  const ThirdStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return ListView(
      children: [
        Text("Расположение", style: context.typography.headline1),
        const SizedBox(height: S.p8),
        Text(
          "Какой у вас адрес?",
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.text400,
          ),
        ),
        Padding(
          padding: const P(vertical: S.p12),
          child: RegionListItem(
            iconPath: AppIcons.city,
            onTap: () => context.pushRoute(const LocationRoute()),
            title: 'г. Москва',
            subTitle: 'Метро, район, адрес, шоссе, ЖК',
          ),
        ),
        SelectableTagGroup(
          isRadio: true,
          title: "Тип недвижимости",
          tags: const ["Квартира", "Апартаменты"],
          onTagSelected: (tag, selected) {},
        ),
        const SizedBox(height: S.p12),
        TextFieldWithTitle(
          title: 'Номер квартиры',
          hintText: 'Введите номер квартиры',
          controller: controller,
        ),
        Padding(
          padding: const P(vertical: S.p4),
          child: Text(
            "В объявлении видно не будет",
            style: context.typography.bodyDescription.copyWith(
              color: context.colors.text400,
            ),
          ),
        ),
      ],
    );
  }
}
