import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class MyAdvertisementsScreen extends ConsumerWidget {
  const MyAdvertisementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(apartamentsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: Text(context.l10n.myAdvertisements), centerTitle: false),
          asyncState.when(
            data: (state) {
              final apartments = state.apartaments;

              return SliverPadding(
                padding: const P(horizontal: S.p16, top: S.p16, bottom: S.p24),
                sliver: SliverList.separated(
                  itemCount: apartments.length,
                  itemBuilder: (context, index) {
                    final apartment = apartments[index];

                    return ApartmentCard(
                      apartment: apartment,
                      isFavorite: false,
                      onFavoriteTap: () {},
                      onTap: () => context.pushRoute(ApartamnetRoute(apartment: apartment)),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: S.p12),
                ),
              );
            },
            loading: () => const SliverToBoxAdapter(child: LoadingWidget()),
            error: (error, stack) => SliverToBoxAdapter(child: ErrorView(error: stack)),
          ),
        ],
      ),
    );
  }
}
