import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
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
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.location), centerTitle: false, pinned: true),
          PinnedHeaderSliver(
            child: ColoredBox(
              color: context.colors.white,
              child: Padding(
                padding: const P(horizontal: S.p16, bottom: S.p12),
                child: InputWidget(
                  controller: _searchController,
                  prefixIcon: AppIcon(AppIcons.search, color: context.colors.icon500),
                  hintText: context.l10n.search,
                ),
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const P(horizontal: S.p12),
                child: Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .start,
                  children: [
                    const Padding(padding: .all(S.p10), child: AppIcon(AppIcons.street)),
                    const SizedBox(width: S.p12),
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: context.colors.stroke300)),
                        ),
                        child: Padding(
                          padding: const P(bottom: S.p12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("метро Ухтомская", style: context.textStyle.bodyDescription),
                              const SizedBox(height: S.p8),
                              Text(
                                "Люберцы, Люберцы (городской округ), Московская область, Москва и МО",
                                style: context.textStyle.bodySmall.copyWith(color: context.colors.text400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: S.p12),
          ),
        ],
      ),
    );
  }
}
