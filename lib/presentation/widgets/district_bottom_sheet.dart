import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:roomate/presentation/presentation.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

class DistrictBottomSheet extends StatefulWidget {
  const DistrictBottomSheet({super.key});

  @override
  State<DistrictBottomSheet> createState() => _DistrictBottomSheetState();
}

class _DistrictBottomSheetState extends State<DistrictBottomSheet> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  final List<String> disctricts = [
    "Авангард",
    "Тюмень",
    "Каржас",
    "11-й",
    "Тополиный",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Авангард",
    "Тюмень",
    "Каржас",
    "11-й",
    "Тополиный",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Авангард",
    "Тюмень",
    "Каржас",
    "11-й",
    "Тополиный",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Авангард",
    "Тюмень",
    "Каржас",
    "11-й",
    "Тополиный",
    "Кристалл",
    "Кристалл",
    "Кристалл",
    "Кристалл",
  ];
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.7,
      maxChildSize: 0.9,
      minChildSize: 0.4,
      builder: (context, controller) {
        return SafeArea(
          child: BaseBottomSheet(
            title: 'Выберите район',
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
                            isRadio: false,
                            buttons: disctricts,
                            onSelected: (val, index, isSelected) {
                              debugPrint('Button: $val index: $index selected: $isSelected');
                            },
                            buttonBuilder: (selected, value, context) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const .all(S.p12),
                                      child: Text(value, style: context.textStyle.bodyDescription),
                                    ),
                                  ),
                                  Visibility(
                                    visible: selected,
                                    replacement: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: .circular(S.p4),
                                        //TODO:Цвет бордера
                                        border: .all(color: context.colors.stroke300),
                                      ),
                                      child: const SizedBox(width: S.p20, height: S.p20),
                                    ),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: context.colors.orange100,
                                        borderRadius: .circular(S.p4),
                                        border: .all(color: context.colors.orange100),
                                      ),
                                      child: Center(
                                        child: Icon(Icons.check_rounded, color: context.colors.white, size: S.p20),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                            options: const GroupButtonOptions(crossGroupAlignment: .start, groupingType: .column),
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
          ),
        );
      },
    );
  }
}
