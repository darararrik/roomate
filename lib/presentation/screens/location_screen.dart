import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:roomate/presentation/constants/constants.dart';
import 'package:roomate/presentation/utils/utils.dart';
import 'package:roomate/presentation/widgets/adress_item.dart';
import 'package:roomate/presentation/widgets/widgets.dart';

@RoutePage()
class LocationScreen extends HookWidget {
  const LocationScreen({super.key, required this.onSelected});
  final void Function(String address) onSelected; // Callback
  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(context.l10n.location),
            centerTitle: false,
            pinned: true,
          ),
          PinnedHeaderSliver(
            child: ColoredBox(
              color: context.colors.graysWhite,
              child: Padding(
                padding: const P(horizontal: S.p16, bottom: S.p12),
                child: InputWidget(
                  controller: searchController,
                  prefixIcon: AppIcon(
                    AppIcons.search,
                    color: context.colors.graysIcon500,
                  ),
                  hintText: context.l10n.search,
                ),
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) {
              return AdressItem(onSelected: onSelected);
            },
            separatorBuilder: (context, index) => const SizedBox(height: S.p12),
          ),
        ],
      ),
    );
  }
}
