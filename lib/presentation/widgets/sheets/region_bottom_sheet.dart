import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/app_radio_button.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

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
      initialChildSize: 0.7,
      maxChildSize: 0.9,
      minChildSize: 0.4,
      builder: (context, controller) {
        return BaseBottomSheet(
          title: context.l10n.selectRegion,
          child: Expanded(
            child: Padding(
              padding: const P(horizontal: S.p24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const P(bottom: S.p12),
                    child: InputWidget(
                      controller: _searchController,
                      prefixIcon: AppIcon(AppIcons.search, color: context.colors.icon500),
                      hintText: context.l10n.search,
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: controller,
                      children: [
                        GroupButton(
                          buttons: cities,
                          buttonBuilder: (selected, value, context) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(S.p12),
                                    child: Text(value, style: context.textStyle.bodyDescription),
                                  ),
                                ),
                                AppRadioButton(selected: selected),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const P(top: S.p16),
                    child: PrimaryButton(titleText: Text(context.l10n.apply), onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
