import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class LocationScreen extends HookConsumerWidget {
  const LocationScreen({super.key, required this.onSelected});

  final void Function(StreetModel street) onSelected;

  static const _omskCityKey = 'omsk';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final streetsAsync = ref.watch(cityStreetsProvider(_omskCityKey));

    return Scaffold(
      body: streetsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('$err')),
        data: (streets) {
          return AnimatedBuilder(
            animation: searchController,
            builder: (context, _) {
              final q = searchController.text.trim().toLowerCase();
              final filtered = q.isEmpty
                  ? streets
                  : streets
                        .where(
                          (e) =>
                              e.name.toLowerCase().contains(q) ||
                              (e.district?.toLowerCase().contains(q) ?? false),
                        )
                        .toList();

              return CustomScrollView(
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
                  if (filtered.isEmpty)
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: Text(context.l10n.searchNoResults)),
                    )
                  else
                    SliverList.separated(
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        final st = filtered[index];
                        final sub = [
                          st.city,
                          if (st.district != null && st.district!.isNotEmpty)
                            st.district!,
                          if (st.regionLine != null &&
                              st.regionLine!.isNotEmpty)
                            st.regionLine!,
                        ].join(', ');
                        return AdressItem(
                          title: st.name,
                          subtitle: sub,
                          onTap: () {
                            onSelected(st);
                            context.pop();
                          },
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: S.p12),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
