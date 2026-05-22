import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/app/my_ad_applications/tenant_card.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/widgets/cards/ad_card.dart';

@RoutePage()
class MyAdApplicationDetailScreen extends ConsumerWidget {
  const MyAdApplicationDetailScreen({super.key, required this.applicationId});

  final String applicationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myAdApplicationDetailProvider(applicationId));
    final notifier = ref.read(
      myAdApplicationDetailProvider(applicationId).notifier,
    );
    final isSubmitting = ref.watch(incomingAdApplicationActionProvider);

    return asyncState.when(
      data: (application) {
        final isFinalized = application.status.isFinalized;
        final areActionsEnabled = !isSubmitting && !isFinalized;

        return Scaffold(
          backgroundColor: context.colors.graysWhite,
          appBar: AppBar(
            centerTitle: false,
            title: Text(context.l10n.myAdApplicationsTitle),
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const P(horizontal: S.p16, vertical: S.p20),
              child: Row(
                spacing: S.p12,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      onPressed: areActionsEnabled
                          ? () => _handleAccept(context, ref)
                          : null,
                      text: context.l10n.adApplicationAccept,
                    ),
                  ),
                  Expanded(
                    child: OpacityButton(
                      color: areActionsEnabled
                          ? context.colors.orange
                          : context.colors.graysWhite,
                      bgColor: context.colors.opacityOrange20,
                      onPressed: areActionsEnabled
                          ? () => _handleReject(context, ref)
                          : null,
                      text: context.l10n.adApplicationReject,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const P(horizontal: S.p16, top: S.p12, bottom: S.p24),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    TenantCard(
                      tenant: application.tenant,
                      onCallPressed: () =>
                          _handleCall(context, ref, application.tenant),
                      onWritePressed: () => _handleWrite(context, ref),
                    ),
                    const SizedBox(height: S.p16),
                    AdCard(ad: application.ad),
                    const SizedBox(height: S.p16),
                    Text(
                      context.l10n.adApplicationQuestionnaireTitle,
                      style: context.typography.headline1,
                    ),
                    const SizedBox(height: S.p12),
                    _ProfileInfoSection(
                      title: context
                          .l10n
                          .groupParticipantProfilePersonalQualitiesTitle,
                      items: notifier.personalQualities(
                        application.tenantProfile,
                      ),
                    ),
                    _ProfileInfoSection(
                      title: context.l10n.preferencesHouseholdTitle,
                      items: notifier.householdHabits(
                        application.tenantProfile,
                      ),
                    ),
                    _ProfileInfoSection(
                      title: context.l10n.groupParticipantProfilePetsTitle,
                      items: notifier.pets(application.tenantProfile),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, _) => Scaffold(body: ErrorView(error: error)),
      loading: () => const Scaffold(body: LoadingWidget()),
    );
  }

  Future<void> _handleAccept(BuildContext context, WidgetRef ref) async {
    final error = await ref
        .read(incomingAdApplicationActionProvider.notifier)
        .accept(applicationId);
    if (!context.mounted) {
      return;
    }
    if (error != null) {
      ref
          .read(navigationServiceProvider)
          .showSnackBar(
            message: error.messages.isNotEmpty
                ? error.messages
                : error.toString(),
          );
      return;
    }
    context.maybePop();
  }

  Future<void> _handleReject(BuildContext context, WidgetRef ref) async {
    final error = await ref
        .read(incomingAdApplicationActionProvider.notifier)
        .reject(applicationId);
    if (!context.mounted) {
      return;
    }
    if (error != null) {
      ref
          .read(navigationServiceProvider)
          .showSnackBar(
            message: error.messages.isNotEmpty
                ? error.messages
                : error.toString(),
          );
      return;
    }
    context.maybePop();
  }

  void _handleCall(BuildContext context, WidgetRef ref, TenantModel tenant) {
    ref.read(navigationServiceProvider).showSnackBar(message: tenant.phone);
  }

  void _handleWrite(BuildContext context, WidgetRef ref) {
    ref
        .read(navigationServiceProvider)
        .showSnackBar(message: context.l10n.chatWillBeAvailableLater);
  }
}

class _ProfileInfoSection extends StatelessWidget {
  const _ProfileInfoSection({required this.title, required this.items});

  final String title;
  final List<GroupPreferenceItemModel> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const P(vertical: S.p12),
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
