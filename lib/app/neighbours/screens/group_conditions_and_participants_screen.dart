import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/notifier/group_conditions_and_participants_notifier.dart';
import 'package:roomate/lib.dart';

@RoutePage()
class GroupConditionsAndParticipantsScreen extends ConsumerWidget {
  const GroupConditionsAndParticipantsScreen({super.key, required this.groupId});

  final String groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(groupConditionsAndParticipantsProvider(groupId));
    final notifier = ref.read(groupConditionsAndParticipantsProvider(groupId).notifier);
    final l10n = context.l10n;

    return asyncState.when(
      data: (conditions) {
        final colors = context.colors;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                AB(
                  title: Text(l10n.groupConditionsAndParticipantsTitle),
                  centerTitle: false,
                  backgroundColor: colors.graysWhite,
                ),
                SliverPadding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        _Section(
                          title: l10n.groupConditionsLookingForTitle,
                          child: Wrap(
                            spacing: S.p12,
                            runSpacing: S.p12,
                            children: conditions.whoGroupIsLookingFor.map((item) {
                              return TinySelectableChip(
                                label: item,
                                selected: false,
                                onSelected: (_) {},
                              );
                            }).toList(),
                          ),
                        ),
                        _Section(
                          title: l10n.groupConditionsLivingRulesTitle,
                          child: Wrap(
                            spacing: S.p12,
                            runSpacing: S.p12,
                            children: conditions.livingRules.map((item) {
                              return TinySelectableChip(
                                label: item,
                                selected: false,
                                onSelected: (_) {},
                              );
                            }).toList(),
                          ),
                        ),
                        _Section(
                          title: l10n.groupConditionsApartmentLifestyleTitle,
                          child: Column(
                            spacing: S.p16,
                            children: conditions.apartmentLifestyle.map((item) {
                              return DetailInfoRow(title: item.title, value: item.value);
                            }).toList(),
                          ),
                        ),
                        _Section(
                          title: l10n.groupConditionsApartmentAtmosphereTitle,
                          child: Column(
                            spacing: S.p16,
                            children: conditions.apartmentAtmosphere.map((item) {
                              return DetailInfoRow(title: item.title, value: item.value);
                            }).toList(),
                          ),
                        ),
                        _Section(
                          title: l10n.groupConditionsParticipantsTitle,
                          trailing: GroupCountChip(
                            currentCount: conditions.participantsCount,
                            maxCount: conditions.maxParticipantsCount,
                          ),
                          child: Column(
                            spacing: S.p12,
                            children: conditions.participants.map((participant) {
                              return GroupParticipantTile(
                                participant: participant,
                                onTap: () => notifier.openParticipant(participant.id),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: S.p32),
                      ].separated(const SizedBox(height: S.p12)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, _) => Scaffold(body: ErrorView(error: error)),
      loading: () => const Scaffold(body: LoadingWidget()),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child, this.trailing});

  final String title;
  final Widget child;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: .start,
          children: [
            Padding(
              padding: const P(vertical: S.p4),
              child: Text(title, style: context.typography.headline1),
            ),
            if (trailing != null) ...[const SizedBox(width: S.p12), trailing!],
          ],
        ),
        const SizedBox(height: S.p4),
        Padding(
          padding: const P(vertical: S.p12),
          child: child,
        ),
      ],
    );
  }
}
