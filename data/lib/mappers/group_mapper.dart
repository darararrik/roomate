import 'package:data/data.dart';
import 'package:data/entity/group_list_item/group_list_item_data.dart';
import 'package:domain/domain.dart';

class GroupMapper {
  static GroupListItemModel toListItemModel(GroupListItemData dto, {String baseUrl = ''}) {
    return GroupListItemModel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      matchPercent: dto.matchPercent,
      participantsCount: dto.participantsCount,
      maxParticipantsCount: dto.maxParticipantsCount,
      participantAvatars: dto.participantAvatars,
      price: dto.price.isNotEmpty ? dto.price : dto.apartament.price ?? '',
      apartament: ApartamentMapper.toPreviewModel(dto.apartament, baseUrl: baseUrl),
    );
  }

  static GroupDetailModel toDetailModel(GroupDetailData dto, {String baseUrl = ''}) {
    final participants = dto.participants.map(toParticipantModel).toList();

    return GroupDetailModel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      status: dto.status,
      applicationStatus: dto.applicationStatus,
      matchPercent: dto.matchPercent,
      ownerUserId: dto.ownerUserId,
      participantsCount: dto.participantsCount,
      maxParticipantsCount: dto.maxParticipantsCount,
      conditions: GroupDetailConditionsMapper.toModel(
        groupId: dto.id,
        conditions: dto.conditions,
        preferences: dto.preferences,
        participantsCount: dto.participantsCount,
        maxParticipantsCount: dto.maxParticipantsCount,
        participants: participants,
      ),
      apartament: ApartamentMapper.toModel(dto.apartament, baseUrl: baseUrl),
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      isFavorite: dto.isFavorite,
    );
  }

  static GroupApplicationModel toApplicationModel(GroupApplicationData dto) {
    return GroupApplicationModel(
      id: dto.id ?? '',
      groupId: dto.groupId ?? '',
      status: dto.status ?? '',
      createdAt: dto.createdAt ?? '',
    );
  }

  static IncomingGroupApplicationModel toIncomingApplicationModel(
    IncomingGroupApplicationData dto, {
    String baseUrl = '',
  }) {
    return IncomingGroupApplicationModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      group: toListItemModel(dto.group ?? const GroupListItemData(), baseUrl: baseUrl),
      tenant: TenantMapper.toModel(dto.tenant),
    );
  }

  static IncomingGroupApplicationDetailModel toIncomingApplicationDetailModel(
    IncomingGroupApplicationData dto, {
    String baseUrl = '',
  }) {
    return IncomingGroupApplicationDetailModel(
      id: dto.id,
      status: AdApplicationStatus.fromValue(dto.status),
      createdAt: dto.createdAt,
      group: toListItemModel(dto.group ?? const GroupListItemData(), baseUrl: baseUrl),
      tenant: TenantMapper.toModel(dto.tenant),
      tenantProfile: TenantMapper.toProfileModel(dto.applicantProfile),
    );
  }

  static ParticipantModel toParticipantModel(ParticipantData dto) {
    return ParticipantModel(
      id: dto.id ?? '',
      fullName: dto.fullName ?? _joinName(dto.firstName, dto.lastName),
      avatarUrl: dto.avatarUrl ?? '',
      isVerified: dto.isVerified ?? false,
      role: _participantRoleTitle(dto.role) ?? '',
    );
  }

  static ParticipantProfileModel toParticipantProfileModel(ParticipantProfileData dto) {
    return ParticipantProfileModel(
      id: dto.id,
      fullName: dto.fullName.isNotEmpty ? dto.fullName : _joinName(dto.firstName, dto.lastName),
      avatarUrl: dto.avatarUrl,
      isVerified: false,
      age: dto.age,
      gender: _genderTitle(dto.gender),
      role: _participantRoleTitle(dto.role) ?? dto.role,
      rating: dto.rating.toString(),
      reviewsCount: dto.reviewsCount,
      personalQualities: _questionnaireItems(dto.questionnaire.personalTraits),
      householdHabits: _questionnaireItems(dto.questionnaire.householdHabits),
      pets: _questionnaireItems(dto.questionnaire.pets),
    );
  }

  static List<GroupPreferenceItemModel> _questionnaireItems(List<ParticipantQuestionnaireItemData> items) {
    return items
        .map((item) {
          final values = item.values
              .map((value) => value.title ?? '')
              .where((value) => value.trim().isNotEmpty)
              .join(', ');
          return GroupPreferenceItemModel(title: item.title, value: values);
        })
        .where((item) {
          return item.title.trim().isNotEmpty || item.value.trim().isNotEmpty;
        })
        .toList();
  }

  static String _joinName(String? firstName, String? lastName) {
    return [firstName ?? '', lastName ?? ''].where((item) => item.trim().isNotEmpty).join(' ');
  }

  static String? _participantRoleTitle(String? role) {
    return switch (role) {
      'owner' => 'Владелец',
      'member' => 'Участник',
      'tenant' => 'Арендатор',
      final value? when value.trim().isNotEmpty => value,
      _ => null,
    };
  }

  static String _genderTitle(String? value) {
    return switch (value) {
      'male' => 'мужчина',
      'female' => 'женщина',
      'other' => 'другой',
      final gender? => gender,
      _ => '',
    };
  }
}
