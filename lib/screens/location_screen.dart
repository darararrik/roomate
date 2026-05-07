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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();

    // Получаем текст из контроллера
    // final searchQuery = useValueListenable(searchController).text.trim();

    // Теперь провайдер сам должен обрабатывать searchQuery (делать запрос на бэк)
    // Убедись, что cityStreetsProvider принимает query или используй семейство (family)
    final streetsAsync = ref.watch(cityStreetsProvider('omsk'));

    return Scaffold(
      backgroundColor: context.colors.graysWhite,
      body: SafeArea(
        bottom: false, // Чтобы список уходил под системную панель снизу
        child: streetsAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(child: Text('$err')),
          data: (streets) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(context.l10n.location),
                  centerTitle: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: context.colors.graysWhite,
                  surfaceTintColor: Colors.transparent,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverSearchDelegate(
                    child: ColoredBox(
                      color: context.colors.graysWhite,
                      child: Padding(
                        padding: const P(horizontal: S.p16),
                        child: InputWidget(
                          controller: searchController,
                          //TODO: добавить иконку, посмотреть в рестике
                          // prefixIcon: AppIcon(AppIcons.search, color: context.colors.graysIcon500),
                          hintText: context.l10n.search,
                        ),
                      ),
                    ),
                  ),
                ),

                if (streets.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        context.l10n.searchNoResults,
                        style: context.typography.bodyDescription.copyWith(
                          color: context.colors.graysIcon500,
                        ),
                      ),
                    ),
                  )
                else
                  SliverPadding(
                    padding: const P(horizontal: S.p16, top: S.p12),
                    sliver: SliverList.separated(
                      itemCount: streets.length,
                      itemBuilder: (context, index) {
                        final street = streets[index];
                        return ListItem(
                          iconPath: AppIcons.street,
                          title: street.name,
                          subtitle: street.district,
                          onTap: () => onSelected(street),
                        );
                      },
                      separatorBuilder: (_, _) => const SizedBox(height: S.p20),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SliverSearchDelegate extends SliverPersistentHeaderDelegate {
  _SliverSearchDelegate({required this.child});
  final Widget child;

  // Увеличили высоту, чтобы RenderFlex перестал выходить за границы (54 контент + паддинги)
  @override
  double get minExtent => 60;
  @override
  double get maxExtent => 60;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _SliverSearchDelegate oldDelegate) => false;
}
