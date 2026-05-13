import 'package:domain/domain.dart';

import 'package:roomate/l10n/app_localizations.dart';

extension GenderExtension on GenderEnum {
  String localizedName(AppLocalizations l10n) {
    return switch (this) {
      GenderEnum.male => l10n.genderMale,
      GenderEnum.female => l10n.genderFemale,
      GenderEnum.other => l10n.genderOther,
    };
  }
}
