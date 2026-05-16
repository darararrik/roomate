import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/filters/notifier/who_search_filter_notifier.dart';
import 'package:roomate/app/neighbours/groups/notifier/groups_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class WhoSearchScreen extends HookConsumerWidget {
  const WhoSearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(whoSearchFilterProvider);
    final notifier = ref.read(whoSearchFilterProvider.notifier);
    final groupsState = ref.watch(groupsProvider);
    final options = ref.watch(filtersNeighboursProvider);
    final minGroupSizeController = useTextEditingController(
      text: filter.minParticipantsCount?.toString() ?? '',
    );
    final maxGroupSizeController = useTextEditingController(
      text: filter.maxParticipantsCount?.toString() ?? '',
    );
    final considerationController = useTextEditingController(
      text: filter.smartQuery,
    );
    final l10n = context.l10n;
    final groupsCount = groupsState.value?.length ?? 0;
    final ageRange = RangeValues(
      (filter.minAge ?? 18).toDouble(),
      (filter.maxAge ?? 35).toDouble(),
    );

    return options.when(
      data: (data) => Scaffold(
        backgroundColor: context.colors.graysWhite,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              AB(
                title: Text(l10n.whoSearchTitle),
                centerTitle: false,
                backgroundColor: context.colors.graysWhite,
                actions: [
                  TextButton(
                    onPressed: notifier.reset,
                    child: Text(
                      l10n.reset,
                      style: context.typography.activesButton.copyWith(
                        color: context.colors.lightOrange100,
                      ),
                    ),
                  ),
                ],
              ),
              SliverPadding(
                padding: const P(horizontal: S.p16, vertical: S.p4),
                sliver: SliverList.list(
                  children: [
                    Padding(
                      padding: const P(vertical: S.p12),
                      child: Text(
                        l10n.whoSearchRoommatesTitle,
                        style: context.typography.headline1,
                      ),
                    ),
                    ChipWrap(
                      title: l10n.gender,
                      options: data.lookingForGender,
                      selectedIds: {_genderToOptionId(filter.desiredGender)},
                      singleSelection: true,
                      onSelectionChanged: (ids) {
                        final selectedId = ids.isEmpty ? 3 : ids.first;
                        notifier.setGender(_optionIdToGender(selectedId));
                      },
                    ),
                    const SizedBox(height: S.p24),
                    _SectionLabel(title: l10n.age),
                    const SizedBox(height: S.p12),
                    Row(
                      children: [
                        _ValueBadge(value: ageRange.start.round()),
                        const SizedBox(width: S.p12),
                        Expanded(
                          child: RangeSlider(
                            values: ageRange,
                            min: 18,
                            max: 60,
                            divisions: 42,
                            activeColor: context.colors.orange,
                            inactiveColor: context.colors.opacityOrange20,
                            onChanged: (value) => notifier.setAgeRange(
                              minAge: value.start.round(),
                              maxAge: value.end.round(),
                            ),
                          ),
                        ),
                        const SizedBox(width: S.p12),
                        _ValueBadge(value: ageRange.end.round()),
                      ],
                    ),
                    const SizedBox(height: S.p24),
                    _SectionLabel(title: l10n.whoSearchGroupSizeTitle),
                    const SizedBox(height: S.p12),
                    Row(
                      children: [
                        Expanded(
                          child: InputWidget(
                            controller: minGroupSizeController,
                            hintText: l10n.priceFromHint,
                            needSuffixIcon: false,
                            keyboardType: TextInputType.number,
                            onChanged: (value) =>
                                notifier.setMinGroupSize(_parseInt(value)),
                          ),
                        ),
                        const SizedBox(width: S.p12),
                        Expanded(
                          child: InputWidget(
                            controller: maxGroupSizeController,
                            hintText: l10n.priceToHint,
                            needSuffixIcon: false,
                            keyboardType: TextInputType.number,
                            onChanged: (value) =>
                                notifier.setMaxGroupSize(_parseInt(value)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: S.p24),
                    Text(
                      l10n.whoSearchConsiderTitle,
                      style: context.typography.headline0,
                    ),
                    const SizedBox(height: S.p8),
                    Text(
                      l10n.whoSearchConsiderHint,
                      style: context.typography.bodyDescription.copyWith(
                        color: context.colors.graysText400,
                      ),
                    ),
                    const SizedBox(height: S.p12),
                    InputWidget(
                      controller: considerationController,
                      hintText: l10n.whoSearchConsiderPlaceholder,
                      onChanged: notifier.setSearchQuery,
                      prefixIcon: AppIcon(
                        AppIcons.search,
                        width: S.p20,
                        height: S.p20,
                        color: context.colors.graysIcon500,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: context.colors.graysLight50,
                      ),
                    ),
                    const SizedBox(height: S.p24),
                    Text(
                      l10n.createGroupLivingConditions,
                      style: context.typography.headline0,
                    ),
                    const SizedBox(height: S.p12),
                    _ConditionSwitchRow(
                      title: l10n.childrenAllowedFilter,
                      value: filter.childrenAllowed,
                      onChanged: notifier.setChildrenAllowed,
                    ),
                    _ConditionSwitchRow(
                      title: l10n.createGroupPartnerAllowed,
                      value: filter.partnerAllowed,
                      onChanged: notifier.setPartnerAllowed,
                    ),
                    _ConditionSwitchRow(
                      title: l10n.petsAllowedFilter,
                      value: filter.petsAllowed,
                      onChanged: notifier.setPetsAllowed,
                    ),
                    _ConditionSwitchRow(
                      title: l10n.createGroupSmokingAllowed,
                      value: filter.smokingAllowed,
                      onChanged: notifier.setSmokingAllowed,
                    ),
                    const SizedBox(height: S.p24),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          top: false,
          child: Container(
            padding: const P(horizontal: S.p16, vertical: S.p20),
            decoration: BoxDecoration(
              color: context.colors.graysWhite,
              boxShadow: [
                BoxShadow(
                  color: context.colors.graysBlack.withValues(alpha: 0.04),
                  blurRadius: 9.1,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: PrimaryButton(
              text: l10n.whoSearchShowGroupsCount(groupsCount),
              onPressed: () async {
                await notifier.apply();
                if (context.mounted) {
                  context.router.pop();
                }
              },
            ),
          ),
        ),
      ),
      error: (Object error, StackTrace stackTrace) => const ErrorView(),
      loading: () => const LoadingWidget(),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: context.typography.headline1);
  }
}

class _ValueBadge extends StatelessWidget {
  const _ValueBadge({required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.graysLight100,
        borderRadius: BorderRadius.circular(S.p8),
      ),
      child: Padding(
        padding: const P(horizontal: S.p12, vertical: S.p8),
        child: Text(
          '$value',
          style: context.typography.bodyDescription.copyWith(
            color: context.colors.graysText400,
          ),
        ),
      ),
    );
  }
}

class _ConditionSwitchRow extends StatelessWidget {
  const _ConditionSwitchRow({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p8),
      child: Row(
        children: [
          Expanded(child: Text(title, style: context.typography.headline2)),
          Switch.adaptive(
            value: value,
            activeTrackColor: context.colors.lightOrange100,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

int _genderToOptionId(GenderEnum? gender) {
  return switch (gender) {
    null => 3,
    GenderEnum.male => 1,
    GenderEnum.female => 2,
    GenderEnum.other => 3,
  };
}

GenderEnum? _optionIdToGender(int id) {
  return switch (id) {
    1 => GenderEnum.male,
    2 => GenderEnum.female,
    _ => null,
  };
}

int? _parseInt(String value) {
  final normalized = value.trim();
  if (normalized.isEmpty) {
    return null;
  }
  return int.tryParse(normalized);
}
