import 'package:roomate/presentation/l10n/app_localizations.dart';

enum GenderEnum { male, female }

extension GenderExtension on GenderEnum {
  String localizedName(AppLocalizations l10n) {
    return switch (this) {
      GenderEnum.male => l10n.genderMale,
      GenderEnum.female => l10n.genderFemale,
    };
  }
}
