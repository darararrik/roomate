import 'package:domain/domain.dart';

import 'package:data/data.dart';

class GroupMapper {
  static GroupModel toModel(GroupData dto) {
    return GroupModel(
      id: dto.id ?? '',
      title: dto.title ?? '',
      description: dto.description ?? '',
      matchPercent: dto.matchPercent ?? 0,
      participantsCount: dto.participantsCount ?? 0,
      maxParticipantsCount: dto.maxParticipantsCount ?? 0,
      apartament: dto.apartament != null
          ? ApartamentMapper.toModel(dto.apartament!)
          : const ApartamentModel(),
    );
  }

  static GroupConditionsModel toConditionsModel(GroupConditionsData dto) {
    return GroupConditionsModel(
      groupId: dto.groupId ?? '',
      whoGroupIsLookingFor: dto.whoGroupIsLookingFor ?? const [],
      livingRules: dto.livingRules ?? const [],
      apartmentLifestyle: (dto.apartmentLifestyle ?? const [])
          .map(toPreferenceItemModel)
          .toList(),
      apartmentAtmosphere: (dto.apartmentAtmosphere ?? const [])
          .map(toPreferenceItemModel)
          .toList(),
      participantsCount: dto.participantsCount ?? 0,
      maxParticipantsCount: dto.maxParticipantsCount ?? 0,
      participants: (dto.participants ?? const [])
          .map(toParticipantModel)
          .toList(),
    );
  }

  static ParticipantModel toParticipantModel(ParticipantData dto) {
    return ParticipantModel(
      id: dto.id ?? '',
      fullName: dto.fullName ?? '',
      avatarUrl: dto.avatarUrl ?? '',
      isVerified: dto.isVerified ?? false,
      role: dto.role ?? '',
    );
  }

  static ParticipantProfileModel toParticipantProfileModel(
    ParticipantProfileData dto,
  ) {
    return ParticipantProfileModel(
      id: dto.id ?? '',
      fullName: dto.fullName ?? '',
      avatarUrl: dto.avatarUrl ?? '',
      isVerified: dto.isVerified ?? false,
      age: dto.age ?? 0,
      gender: dto.gender ?? '',
      role: dto.role ?? '',
      rating: dto.rating ?? '',
      reviewsCount: dto.reviewsCount ?? 0,
      personalQualities: (dto.personalQualities ?? const [])
          .map(toPreferenceItemModel)
          .toList(),
      householdHabits: (dto.householdHabits ?? const [])
          .map(toPreferenceItemModel)
          .toList(),
      pets: (dto.pets ?? const []).map(toPreferenceItemModel).toList(),
    );
  }

  static GroupPreferenceItemModel toPreferenceItemModel(
    GroupPreferenceItemData dto,
  ) {
    return GroupPreferenceItemModel(
      title: dto.title ?? '',
      value: dto.value ?? '',
    );
  }
}
