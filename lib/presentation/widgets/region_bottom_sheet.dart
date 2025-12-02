import 'package:flutter/material.dart';
import 'package:roomate/presentation/constants/app_icons.dart';
import 'package:roomate/presentation/constants/spacing.dart';
import 'package:roomate/presentation/utils/extensions/build_context_x.dart';
import 'package:roomate/presentation/utils/p.dart';
import 'package:roomate/presentation/widgets/app_icon.dart';
import 'package:roomate/presentation/widgets/drag_handle.dart';
import 'package:roomate/presentation/widgets/input_widget.dart';

class RegionBottomSheet extends StatefulWidget {
  const RegionBottomSheet({super.key});

  @override
  State<RegionBottomSheet> createState() => _RegionBottomSheetState();
}

class _RegionBottomSheetState extends State<RegionBottomSheet> {
  late final TextEditingController _searchController;
  late final ValueNotifier<String?> _selectedCityNotifier;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _selectedCityNotifier = ValueNotifier<String?>('Омская область');
  }

  @override
  void dispose() {
    _searchController.dispose();
    _selectedCityNotifier.dispose();
    super.dispose();
  }

  final List<String> cities = [
    "Омская область",
    "Тюмень",
    "Новосибирск",
    "Новосибирск2",
    "Новосибирск1",
    "Новосибирск3",
    "Новосибирск4",
    "Новосибирск5",
    "Новосибирск6",
  ];

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.5,
      maxChildSize: 0.7,
      minChildSize: 0.4,
      builder: (context, controller) {
        return Column(
          children: [
            const SizedBox(height: S.p8),
            const DragHandle(),
            Padding(
              padding: const P(all: S.p24),
              child: Text("Регион поиска", style: context.textStyle.headline1),
            ),
            const Divider(),
            Padding(
              padding: const P(horizontal: S.p24, vertical: S.p12),
              child: InputWidget(
                controller: _searchController,
                prefixIcon: AppIcon(AppIcons.search, color: context.colors.icon500),
                hintText: context.l10n.search,
              ),
            ),
            Expanded(
              child: ValueListenableBuilder<String?>(
                valueListenable: _selectedCityNotifier,
                builder: (context, selectedCity, _) {
                  return ListView.separated(
                    controller: controller,
                    itemCount: cities.length,
                    padding: const P(bottom: S.p24),
                    itemBuilder: (context, index) {
                      final city = cities[index];
                      final isSelected = city == selectedCity;
                      return InkWell(
                        onTap: () {
                          _selectedCityNotifier.value = city;
                        },
                        child: Padding(
                          padding: const P(horizontal: S.p24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const .all(S.p12),
                                child: Text(city, style: context.textStyle.bodyDescription),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: context.colors.orange100),
                                ),
                                child: Padding(
                                  padding: const P(all: S.p4),
                                  child: Visibility(
                                    visible: isSelected,
                                    replacement: const SizedBox(width: S.p10, height: S.p10),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: context.colors.orange100,
                                      ),
                                      child: const SizedBox(width: S.p10, height: S.p10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(height: S.p12),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
