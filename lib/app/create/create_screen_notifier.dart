import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/lib.dart';
import 'package:roomate/routing/app_routing.gr.dart';

part 'create_screen_notifier.g.dart';

@Riverpod(keepAlive: true)
class CreateScreenNotifier extends _$CreateScreenNotifier {
  @override
  bool build() {
    return false;
  }

  AppLocalizations get _locale => ref.l10n;

  Future<void> startNewCreation() async {
    final profile = ref.read(globalProfileProvider).value;
    if (profile == null) {
      return;
    }

    if (profile.isOwner) {
      await ref.read(adFormProvider.notifier).reset();
      ref.read(createAdFlowProvider.notifier).reset();
      await ref.nav.push(const CreateAdRoute());
      return;
    }

    await ref.read(groupFormProvider.notifier).reset();
    ref.read(createGroupFlowProvider.notifier).reset();
    await ref.nav.push(const CreateGroupRoute());
  }

  Future<void> continueDraft(Object draft) async {
    final profile = ref.read(globalProfileProvider).value;
    if (profile == null) {
      return;
    }

    if (profile.isOwner) {
      if (draft case final CreateAdFormModel adDraft) {
        ref.read(adFormProvider.notifier).restoreDraft(adDraft);
        ref.read(createAdFlowProvider.notifier).reset();
        await ref.nav.push(const CreateAdRoute());
      }
      return;
    }

    if (draft case final CreateGroupFormModel groupDraft) {
      ref.read(groupFormProvider.notifier).restoreDraft(groupDraft);
      ref.read(createGroupFlowProvider.notifier).reset();
      await ref.nav.push(const CreateGroupRoute());
    }
  }

  String draftPrimaryText(Object draft) {
    if (draft case final CreateAdFormModel adDraft) {
      final title = adDraft.title.trim();
      if (title.isNotEmpty) {
        return title;
      }

      final address = adDraft.addressDetails.value.trim();
      if (address.isNotEmpty) {
        return address;
      }

      return _locale.advertisement;
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

      return _locale.apartmentRent;
    }

    return '';
  }

  String? draftSecondaryText(Object draft) {
    if (draft case final CreateAdFormModel adDraft) {
      if (adDraft.cost > 0) {
        return '${adDraft.cost.toInt()} ${adDraft.selectedCurrency.symbol}';
      }

      return null;
    }

    if (draft case final CreateGroupFormModel groupDraft) {
      return _locale.createGroupParticipantsSummary(groupDraft.participantsCount);
    }

    return null;
  }
}
