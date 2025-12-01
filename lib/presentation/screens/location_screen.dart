import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/app_icons.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/region_list_item.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late final TextEditingController _searchController;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: сделать поиск закреп
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.location), centerTitle: false, pinned: true,),
          SliverFillRemaining(
            child: Column(
              children: [
                Padding(
                  padding: const P(horizontal: S.p16),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.colors.input200,
                      borderRadius: BorderRadius.circular(S.p16),
                    ),
                    child: SizedBox(
                      height: S.p54,
                      //TODO: эффект краев
                      child: Center(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: context.l10n.search,
                            prefixIcon: const AppIcon(AppIcons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: S.p12),
                Expanded(
                  child: Padding(
                    padding: const P(vertical: S.p12),
                    child: ListView.separated(
                      padding: const P(horizontal: S.p16),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return RegionListItem(
                          onTap: () {},
                          title: 'улица Ленина',
                          subTitle:
                              'КП Лесное озеро, муниципальный муниципальныймуниципальныймуниципальныймуниципальныймуниципальныймуниципальныймуниципальныймуниципальныйокруг Шаховская, Московская область',
                          isArrow: false,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: S.p20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
