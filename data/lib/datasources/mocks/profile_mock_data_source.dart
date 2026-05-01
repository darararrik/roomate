import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/exception/remote_exception.dart';

class ProfileMockDataSource implements ProfileDataSource {
  @override
  Future<Either<RemoteException, ProfileModel>> fetchProfile() async {
    final json = MockStorage.userProfile;
    if (json == null) {
      return Left(
        RemoteException(
          kind: RemoteExceptionKind.serverUndefined,
          rootException: Exception("User not found"),
        ),
      );
    }
    return Right(
      await ProfileMapper.toModel(ProfileData.fromJson(json)).withDelay(),
    );
  }

  @override
  Future<Either<RemoteException, ProfileModel>> updateProfile(
    ProfileModel user,
  ) async {
    final phone = MockStorage.phone;
    final fullUser = user.copyWith(phone: phone);
    final json = ProfileMapper.toData(fullUser).toJson();
    MockStorage.userProfile = json;
    return Right(await fullUser.withDelay());
  }

  @override
  Future<Either<RemoteException, PreferenceTagsCatalogModel>>
  fetchPreferenceTagsCatalog() async {
    final json = {
      "communication": [
        {"id": 1, "title": "Интроверт"},
        {"id": 2, "title": "Амбиверт"},
        {"id": 3, "title": "Экстраверт"},
      ],
      "sleep": [
        {"id": 10, "title": "Жаворонок"},
        {"id": 11, "title": "Сова"},
        {"id": 12, "title": "Без режима"},
      ],
      "employment": [
        {"id": 20, "title": "Студент"},
        {"id": 21, "title": "Офис"},
        {"id": 22, "title": "Удаленка"},
        {"id": 23, "title": "Другое"},
      ],
      "bad_habits": [
        {"id": 30, "title": "Нет"},
        {"id": 31, "title": "Курение"},
        {"id": 32, "title": "Алкоголь"},
      ],
      "guests": [
        {"id": 40, "title": "Не привожу"},
        {"id": 41, "title": "Иногда"},
        {"id": 42, "title": "Часто"},
      ],
      "noise_level": [
        {"id": 50, "title": "Тихий — без шума и громких звуков"},
        {"id": 51, "title": "Средний — иногда музыка или ТВ"},
        {"id": 52, "title": "Активный — музыка, бывают компании"},
      ],
      "cleaning": [
        {"id": 60, "title": "Убираюсь сразу"},
        {"id": 61, "title": "Раз в несколько дней"},
        {"id": 62, "title": "Раз в неделю"},
      ],
      "pets": [
        {"id": 70, "title": "Нет"},
        {"id": 71, "title": "Кошка"},
        {"id": 72, "title": "Собака"},
        {"id": 73, "title": "Другое"},
      ],
      "pets_attitude": [
        {"id": 80, "title": "Положительно"},
        {"id": 81, "title": "Аллергия"},
        {"id": 82, "title": "Против"},
      ],
    };
    final model = PreferenceTagsCatalogMapper.toModel(
      PreferencesTagsData.fromJson(json),
    );
    return Right(await model.withDelay());
  }
}
