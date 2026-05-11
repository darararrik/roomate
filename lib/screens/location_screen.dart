import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class LocationScreen extends HookConsumerWidget {
  const LocationScreen({super.key, required this.onSelected});

  final void Function(LocationSelectionModel selection) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final rawSearchQuery = useValueListenable(
      searchController,
    ).text.trim().toLowerCase();
    final debouncedQuery = useState(rawSearchQuery);

    useEffect(() {
      final timer = Timer(const Duration(milliseconds: 350), () {
        debouncedQuery.value = rawSearchQuery;
      });

      return timer.cancel;
    }, [rawSearchQuery]);

    final citiesAsync = ref.watch(citiesProvider);
    final currentCity = ref.watch(currentProfileCityProvider);
    final suggestionsAsync = ref.watch(
      locationSuggestionsProvider(debouncedQuery.value),
    );

    return Scaffold(
      backgroundColor: context.colors.graysWhite,
      body: SafeArea(
        bottom: false, // Чтобы список уходил под системную панель снизу
        child: citiesAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(child: Text('$err')),
          data: (cities) {
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

                SliverPadding(
                  padding: const P(horizontal: S.p16, top: S.p12),
                  sliver: suggestionsAsync.when(
                    loading: () => const SliverToBoxAdapter(
                      child: Padding(
                        padding: P(vertical: S.p24),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                    error: (err, _) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(child: Text('$err')),
                    ),
                    data: (suggestions) {
                      if (debouncedQuery.value.isEmpty) {
                        return SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Text(
                              'Начните поиск',
                              style: context.typography.bodyDescription
                                  .copyWith(color: context.colors.graysIcon500),
                            ),
                          ),
                        );
                      }

                      if (suggestions.isEmpty) {
                        return SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Text(
                              context.l10n.searchNoResults,
                              style: context.typography.bodyDescription
                                  .copyWith(color: context.colors.graysIcon500),
                            ),
                          ),
                        );
                      }

                      return SliverList.separated(
                        itemCount: suggestions.length,
                        itemBuilder: (context, index) {
                          final suggestion = suggestions[index];
                          final selection = resolveLocationSelection(
                            suggestion: suggestion,
                            cities: cities,
                            fallbackCity: currentCity,
                          );
                          return ListItem(
                            iconPath: AppIcons.city,
                            title: selection.displayTitle,
                            subtitle: suggestion.unrestrictedValue,
                            onTap: () => onSelected(selection),
                          );
                        },
                        separatorBuilder: (_, _) =>
                            const SizedBox(height: S.p20),
                      );
                    },
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
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _SliverSearchDelegate oldDelegate) => false;
}
