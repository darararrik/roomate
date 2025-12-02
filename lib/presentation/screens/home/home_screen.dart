import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:group_button/group_button.dart';

import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/routing/app_routing.gr.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/drag_handle.dart';
import 'package:roomate/presentation/widgets/input_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [ApartamentsTab(), NeighboursTab(), CoworkingTab()],
      builder: (context, child, tabController) {
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              centerTitle: true,
              title: TextButton(
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const RegionBottomSheet(),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(context.l10n.searchRegion, style: context.textStyle.headline2),
                    const SizedBox(height: S.p4),
                    Text('Омская область', style: context.textStyle.headline1),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(S.p70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: S.p16, vertical: S.p12),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(S.p32),
                      color: context.colors.white,
                      border: Border.all(color: context.colors.input200, width: S.p2),
                    ),
                    child: TabBar(
                      controller: tabController,
                      tabs: [
                        Tab(text: context.l10n.apartments),
                        Tab(text: context.l10n.neighbours),
                        Tab(text: context.l10n.coworking),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          body: child,
        );
      },
    );
  }
}

class RegionBottomSheet extends StatefulWidget {
  const RegionBottomSheet({super.key});

  @override
  State<RegionBottomSheet> createState() => _RegionBottomSheetState();
}

class _RegionBottomSheetState extends State<RegionBottomSheet> {
  late final TextEditingController _searchController;
  late final GroupButtonController _controller;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _controller = GroupButtonController(selectedIndexes: [], disabledIndexes: []);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _controller.dispose();
    super.dispose();
  }

  final Set<String> cities = {
    "Омск",
    "Тюмень",
    "Новосибирск",
    "Новосибирск2",
    "Новосибирск1",
    "Новосибирск3",
    "Новосибирск4",
    "Новосибирск5",
    "Новосибирск6",
  };
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.5,
      maxChildSize: 0.7,
      minChildSize: 0.4,
      builder: (context, controller) => SizedBox(
        child: Column(
          children: [
            const SizedBox(height: S.p8),
            const DragHandle(),
            Padding(
              padding: const P(all: S.p24),
              child: Text("Регион поиска", style: context.textStyle.headline1),
            ),
            const Divider(),
            Padding(
              padding: const P(horizontal: S.p24),
              child: InputWidget(
                controller: _searchController,
                prefixIcon: AppIcon(AppIcons.search, color: context.colors.icon500),
                hintText: context.l10n.search,
              ),
            ),
            Expanded(
              child: ListView(
                controller: controller,
                padding: const P(horizontal: S.p24, bottom: S.p24),
                children: [
                  GroupButton<String>(
                    controller: _controller,
                    onSelected: (city, index, isSelected) {},
                    buttons: List.from(cities),
                    buttonBuilder: (bool isSelected, String city, BuildContext context) {
                      return GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(padding: const .all(S.p12), child: Text(city)),
                            Radio(value: isSelected),
                          ],
                        ),
                      );
                    },
                    options: const GroupButtonOptions(runSpacing: S.p12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
