import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

@RoutePage()
class CreateScreen extends ConsumerWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(globalProfileProvider);

    return profileState.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      ),
      error: (_, _) => const Scaffold(body: ErrorView()),
      data: (profile) {
        final draftState = profile.isOwner
            ? ref.watch(createAdDraftProvider)
            : ref.watch(createGroupDraftProvider);

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: BB(
              onPressed: () => AutoTabsRouter.of(context).setActiveIndex(0),
            ),
            title: Text(context.l10n.createAdvertisementTitle),
          ),
          body: draftState.when(
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            error: (_, _) => const ErrorView(),
            data: (draft) {
              return Padding(
                padding: const P(horizontal: S.p16, top: S.p24),
                child: Column(
                  spacing: S.p24,
                  children: [
                    if (draft != null)
                      _CreateActionCard(
                        title: context.l10n.continueDraft,
                        subtitle: _draftPrimaryText(context, draft),
                        caption: _draftSecondaryText(context, draft),
                        onTap: () =>
                            _continueDraft(context, ref, profile, draft),
                      ),
                    _CreateActionCard(
                      title: context.l10n.createNewAdvertisement,
                      onTap: () => _startNewCreation(context, ref, profile),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _startNewCreation(
    BuildContext context,
    WidgetRef ref,
    ProfileModel profile,
  ) async {
    if (profile.isOwner) {
      await ref.read(adFormProvider.notifier).reset();
      ref.read(createAdFlowProvider.notifier).reset();
      if (!context.mounted) {
        return;
      }
      await context.router.push(const CreateAdRoute());
      return;
    }

    await ref.read(groupFormProvider.notifier).reset();
    ref.read(createGroupFlowProvider.notifier).reset();
    if (!context.mounted) {
      return;
    }
    await context.router.push(const CreateGroupRoute());
  }

  Future<void> _continueDraft(
    BuildContext context,
    WidgetRef ref,
    ProfileModel profile,
    Object draft,
  ) async {
    if (profile.isOwner) {
      final adDraft = draft as CreateAdFormModel;
      ref.read(adFormProvider.notifier).restoreDraft(adDraft);
      ref.read(createAdFlowProvider.notifier).reset();
      await context.router.push(const CreateAdRoute());
      return;
    }

    final groupDraft = draft as CreateGroupFormModel;
    ref.read(groupFormProvider.notifier).restoreDraft(groupDraft);
    ref.read(createGroupFlowProvider.notifier).reset();
    await context.router.push(const CreateGroupRoute());
  }

  String _draftPrimaryText(BuildContext context, Object draft) {
    if (draft case final CreateAdFormModel adDraft) {
      final title = adDraft.title.trim();
      if (title.isNotEmpty) {
        return title;
      }

      final address = adDraft.addressDetails.value.trim();
      if (address.isNotEmpty) {
        return address;
      }

      return context.l10n.advertisement;
    }

    if (draft case final CreateGroupFormModel groupDraft) {
      final title = groupDraft.title.trim();
      if (title.isNotEmpty) {
        return title;
      }

      final address = groupDraft.addressDetails.value.trim();
      if (address.isNotEmpty) {
        return address;
      }

      return context.l10n.apartmentRent;
    }

    return '';
  }

  String? _draftSecondaryText(BuildContext context, Object draft) {
    if (draft case final CreateAdFormModel adDraft) {
      if (adDraft.cost > 0) {
        return '${adDraft.cost.toInt()} ${adDraft.selectedCurrency.symbol}';
      }

      return null;
    }

    if (draft case final CreateGroupFormModel groupDraft) {
      return context.l10n.createGroupParticipantsSummary(
        groupDraft.participantsCount,
      );
    }

    return null;
  }
}

class _CreateActionCard extends StatelessWidget {
  const _CreateActionCard({
    required this.title,
    required this.onTap,
    this.subtitle,
    this.caption,
  });

  final String title;
  final String? subtitle;
  final String? caption;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.graysLight50,
      borderRadius: BorderRadius.circular(S.p32),
      child: InkWell(
        borderRadius: BorderRadius.circular(S.p32),
        onTap: onTap,
        child: Padding(
          padding: const P(all: S.p16),
          child: Row(
            spacing: S.p16,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.graysWhite,
                  borderRadius: BorderRadius.circular(S.p16),
                ),
                child: Padding(
                  padding: const P(all: S.p16),
                  child: AppIcon(
                    AppIcons.docs,
                    width: S.p32,
                    height: S.p32,
                    color: context.colors.lightOrange100,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  spacing: S.p4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.typography.headline2),
                    if (subtitle != null && subtitle!.isNotEmpty)
                      Text(
                        subtitle!,
                        style: context.typography.bodyDescription.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                    if (caption != null && caption!.isNotEmpty)
                      Text(
                        caption!,
                        style: context.typography.bodyDescription.copyWith(
                          color: context.colors.graysText400,
                        ),
                      ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                size: S.p32,
                color: context.colors.graysIcon500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
