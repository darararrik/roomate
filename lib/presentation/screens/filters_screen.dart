import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["Снять", "Купить"];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: Text(context.l10n.filters),
            centerTitle: false,
            onBackButtonPressed: () {
              context.navigateTo(const NavBarRoute());
            },
          ),
          SliverList.list(
            children: [
              GroupButton<String>(
                isRadio: true,
                buttons: List.from(categories),
                buttonBuilder: (selected, String tag, context) {
                  return Card(
                    elevation: S.p0,
                    color: selected ? context.colors.orange60 : context.colors.light100,
                    shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(S.p12)),
                    child: Padding(
                      padding: const P(horizontal: S.p16, vertical: S.p12),
                      child: Text(
                        tag,
                        style: context.textStyle.activesLabel.copyWith(
                          color: selected ? context.colors.white : context.colors.text400,
                        ),
                      ),
                    ),
                  );
                },
                options: const GroupButtonOptions(
                  groupingType: GroupingType.wrap,
                  runSpacing: S.p4,
                  mainGroupAlignment: MainGroupAlignment.start,
                  spacing: S.p12,
                  direction: Axis.horizontal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
