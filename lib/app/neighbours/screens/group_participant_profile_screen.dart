import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
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
    final asyncState = ref.watch(groupParticipantProfileProvider(participantId));
    final l10n = context.l10n;

    return asyncState.when(
      data: (participant) {
        final colors = context.colors;

        return Scaffold(
          backgroundColor: colors.graysWhite,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                AB(
                  title: Text(l10n.groupParticipantProfileTitle),
                  centerTitle: false,
                  backgroundColor: colors.graysWhite,
                ),
                SliverPadding(
                  padding: const P(horizontal: S.p16, vertical: S.p12),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      GroupParticipantProfileCard(participant: participant),
                      const SizedBox(height: S.p12),
                      Padding(
                        padding: const P(vertical: S.p12),
                        child: Column(
                          spacing: S.p12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.groupParticipantProfileQuestionnaireTitle,
                              style: context.typography.headline1,
                            ),
                            _ProfileInfoSection(
                              title: l10n.groupParticipantProfilePersonalQualitiesTitle,
                              items: participant.personalQualities,
                            ),
                            _ProfileInfoSection(
                              title: l10n.preferencesHouseholdTitle,
                              items: participant.householdHabits,
                            ),
                            _ProfileInfoSection(
                              title: l10n.groupParticipantProfilePetsTitle,
                              items: participant.pets,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ]),
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

class _ProfileInfoSection extends StatelessWidget {
  const _ProfileInfoSection({required this.title, required this.items});

  final String title;
  final List<GroupPreferenceItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(vertical: S.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.typography.headline1),
          const SizedBox(height: S.p12),
          Column(
            spacing: S.p12,
            children: items.map((item) {
              return DetailInfoRow(title: item.title, value: item.value);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
