import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract class GroupDetailConditionsMapper {
  static GroupConditionsModel toModel({
    required String groupId,
    required GroupDetailConditionsData conditions,
    required GroupDetailPreferencesData preferences,
    required int participantsCount,
    required int maxParticipantsCount,
    required List<ParticipantModel> participants,
  }) {
    return GroupConditionsModel(
      groupId: groupId,
      whoGroupIsLookingFor: _toWhoGroupIsLookingFor(conditions),
      livingRules: _toLivingRules(conditions),
      apartmentLifestyle: GroupDetailPreferencesMapper.toApartmentLifestyle(
        preferences,
      ),
      apartmentAtmosphere: GroupDetailPreferencesMapper.toApartmentAtmosphere(
        preferences,
      ),
      participantsCount: participantsCount,
      maxParticipantsCount: maxParticipantsCount,
      participants: participants,
    );
  }

  static List<String> _toWhoGroupIsLookingFor(GroupDetailConditionsData dto) {
    return [
      _desiredGenderTitle(dto.desiredGender),
      _ageRangeTitle(minAge: dto.minAge, maxAge: dto.maxAge),
    ].where((item) => item.trim().isNotEmpty).toList();
  }

  static List<String> _toLivingRules(GroupDetailConditionsData dto) {
    return [
      _boolRuleTitle(
        isAllowed: dto.childrenAllowed,
        allowedTitle: 'Можно с детьми',
        disallowedTitle: 'Без детей',
      ),
      _boolRuleTitle(
        isAllowed: dto.partnerAllowed,
        allowedTitle: 'Можно с партнером',
        disallowedTitle: 'Без партнера',
      ),
      _boolRuleTitle(
        isAllowed: dto.petsAllowed,
        allowedTitle: 'Можно с животными',
        disallowedTitle: 'Без животных',
      ),
      _boolRuleTitle(
        isAllowed: dto.smokingAllowed,
        allowedTitle: 'Можно курить',
        disallowedTitle: 'Не курить',
      ),
    ].where((item) => item.trim().isNotEmpty).toList();
  }

  static String _desiredGenderTitle(String? value) {
    return switch (value) {
      'male' => 'Мужчины',
      'female' => 'Женщины',
      'any' => 'Любой пол',
      _ => '',
    };
  }

  static String _ageRangeTitle({int? minAge, int? maxAge}) {
    if (minAge == null && maxAge == null) {
      return '';
    }
    if (minAge != null && maxAge != null) {
      return '$minAge-$maxAge лет';
    }
    if (minAge != null) {
      return 'От $minAge лет';
    }

    return 'До $maxAge лет';
  }

  static String _boolRuleTitle({
    required bool? isAllowed,
    required String allowedTitle,
    required String disallowedTitle,
  }) {
    if (isAllowed == null) {
      return '';
    }

    return isAllowed ? allowedTitle : disallowedTitle;
  }
}
