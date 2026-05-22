import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/app/my_advertisements/widgets/my_ad_card.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

class MyAdsTabContent extends ConsumerWidget {
  const MyAdsTabContent({super.key, required this.statuses});

  final List<MyAdStatus> statuses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myAdsProvider);

    return CustomScrollView(
      key: PageStorageKey(statuses.map((status) => status.value).join(',')),
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        asyncState.when(
          data: (items) {
            final filteredItems = items
                .where((item) => statuses.contains(item.status))
                .toList();

            return SliverPadding(
              padding: const P(top: S.p16, bottom: S.p24),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  if (filteredItems.isEmpty)
                    Padding(
                      padding: const P(horizontal: S.p16, top: S.p24),
                      child: Center(
                        child: Text(
                          context.l10n.myAdsNoItems,
                          style: context.typography.bodyDescription.copyWith(
                            color: context.colors.graysText400,
                          ),
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const P(horizontal: S.p16),
                      child: Column(
                        spacing: S.p12,
                        children: filteredItems.map((item) {
                          return MyAdCard(
                            ad: item,
                            onTap: () => context.pushRoute(
                              ApartamnetRoute(apartmentId: item.id),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                ]),
              ),
            );
          },
          loading: () => const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: LoadingWidget()),
          ),
          error: (error, _) => SliverFillRemaining(
            hasScrollBody: false,
            child: ErrorView(error: error),
          ),
        ),
      ],
    );
  }
}
