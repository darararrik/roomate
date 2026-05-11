import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/neighbours/notifier/group_participant_profile_notifier.dart';

import 'package:roomate/lib.dart';

@RoutePage()
class GroupParticipantProfileScreen extends ConsumerWidget {
  const GroupParticipantProfileScreen({super.key, required this.participantId});

  final String participantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(
      groupParticipantProfileProvider(participantId),
    );

    return asyncState.when(
      data: (participant) {
        final colors = context.colors;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                AB(
                  title: const Text('Анкета'),
                  centerTitle: false,
                  backgroundColor: colors.graysWhite,
                ),
                SliverPadding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        GroupParticipantProfileCard(participant: participant),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Анкета арендатора',
                              style: context.typography.headline0,
                            ),
                            const SizedBox(height: S.p24),
                            Text(
                              'Личные качества',
                              style: context.typography.headline1,
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              spacing: S.p16,
                              children: participant.personalQualities.map((
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
                              'Бытовые привычки',
                              style: context.typography.headline1,
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              spacing: S.p16,
                              children: participant.householdHabits.map((item) {
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
                              'Домашние животные',
                              style: context.typography.headline1,
                            ),
                            const SizedBox(height: S.p20),
                            Column(
                              spacing: S.p16,
                              children: participant.pets.map((item) {
                                return DetailInfoRow(
                                  title: item.title,
                                  value: item.value,
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: S.p24),
                            const Divider(),
                          ],
                        ),
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
