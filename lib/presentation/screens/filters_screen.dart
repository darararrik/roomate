import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:roomate/presentation/constants/app_icons.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/profile_list_item.dart';
import 'package:roomate/presentation/widgets/region_list_item.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["Снять", "Обменять"];
    final types = ["Квартира", "Дом", "Комната", "Гараж", "Коммерческая"];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(context.l10n.filters),
            centerTitle: false,
            onBackButtonPressed: () {
              context.navigateTo(const NavBarRoute());
            },
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  context.l10n.reset,
                  style: context.textStyle.activesButton.copyWith(color: context.colors.orange100),
                ),
              ),
            ],
          ),
          SliverList.list(
            children: [
              Padding(
                padding: const P(vertical: S.p12, horizontal: S.p16),
                child: GroupButton<String>(
                  isRadio: false,
                  buttons: List.from(categories),
                  buttonBuilder: (selected, String tag, context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(S.p12),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: selected ? context.colors.orange20 : context.colors.light100,

                          borderRadius: BorderRadius.circular(S.p12),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p16, vertical: S.p12),
                          child: Text(
                            tag,
                            style: context.textStyle.activesLabel.copyWith(
                              color: selected ? context.colors.orange : context.colors.text400,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: const GroupButtonOptions(
                    groupingType: GroupingType.wrap,
                    mainGroupAlignment: MainGroupAlignment.start,
                    spacing: S.p12,
                    direction: Axis.horizontal,
                  ),
                ),
              ),
              const SizedBox(height: S.p12),
              Padding(
                padding: const P(vertical: S.p12, horizontal: S.p16),
                child: Text(context.l10n.typeOfProperty, style: context.textStyle.headline2),
              ),
              Padding(
                padding: const P(vertical: S.p12, horizontal: S.p16),
                child: GroupButton<String>(
                  isRadio: false,
                  buttons: List.from(types),
                  buttonBuilder: (selected, String tag, context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(S.p12),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: selected ? context.colors.orange20 : context.colors.light100,
                          borderRadius: BorderRadius.circular(S.p12),
                        ),
                        child: Padding(
                          padding: const P(horizontal: S.p16, vertical: S.p12),
                          child: Text(
                            tag,
                            style: context.textStyle.activesLabel.copyWith(
                              color: selected ? context.colors.orange : context.colors.text400,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: const GroupButtonOptions(
                    groupingType: GroupingType.wrap,
                    mainGroupAlignment: MainGroupAlignment.start,
                    spacing: S.p12,
                    runSpacing: S.p12,
                    direction: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding: const P(vertical: S.p12, horizontal: S.p16),
                child: Text(context.l10n.location, style: context.textStyle.headline2),
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
            ],
          ),
        ],
      ),
    );
  }
}
