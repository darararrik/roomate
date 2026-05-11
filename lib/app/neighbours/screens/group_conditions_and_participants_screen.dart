import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/notifier/group_conditions_and_participants_notifier.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class GroupConditionsAndParticipantsScreen extends ConsumerWidget {
  const GroupConditionsAndParticipantsScreen({
    super.key,
    required this.groupId,
  });

  final String groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(
      groupConditionsAndParticipantsProvider(groupId),
    );
    final notifier = ref.read(
      groupConditionsAndParticipantsProvider(groupId).notifier,
    );

    return asyncState.when(
      data: (conditions) {
        final colors = context.colors;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                AB(
                  title: const Text('Участники и условия'),
                  centerTitle: false,
                  backgroundColor: colors.graysWhite,
                ),
                SliverPadding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Кого ищёт группа',
                              style: context.typography.headline0,
                            ),
                            const SizedBox(height: S.p20),
                            Wrap(
                              spacing: S.p12,
                              runSpacing: S.p12,
                              children: conditions.whoGroupIsLookingFor.map((
                                item,
                              ) {
                                return LabelChip(
                                  title: item,
                                  backgroundColor: colors.graysLight100,
                                  color: colors.graysText400,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Правила проживания',
                              style: context.typography.headline0,
                            ),
                            const SizedBox(height: S.p20),
                            Wrap(
                              spacing: S.p12,
                              runSpacing: S.p12,
                              children: conditions.livingRules.map((item) {
                                return LabelChip(
                                  title: item,
                                  backgroundColor: colors.graysLight100,
                                  color: colors.graysText400,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Образ жизни в квартире',
                              style: context.typography.headline0,
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              spacing: S.p16,
                              children: conditions.apartmentLifestyle.map((
                                item,
                              ) {
                                return DetailInfoRow(
                                  title: item.title,
                                  value: item.value,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Атмосфера в квартире',
                              style: context.typography.headline0,
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              spacing: S.p16,
                              children: conditions.apartmentAtmosphere.map((
                                item,
                              ) {
                                return DetailInfoRow(
                                  title: item.title,
                                  value: item.value,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Участники',
                                  style: context.typography.headline0,
                                ),
                                const SizedBox(width: S.p12),
                                GroupCountChip(
                                  currentCount: conditions.participantsCount,
                                  maxCount: conditions.maxParticipantsCount,
                                ),
                              ],
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              children: conditions.participants.map((
                                participant,
                              ) {
                                return GroupParticipantTile(
                                  participant: participant,
                                  onTap: () =>
                                      notifier.openParticipant(participant.id),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        const SizedBox(height: S.p32),
                      ].separated(const SizedBox(height: S.p32)),
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
