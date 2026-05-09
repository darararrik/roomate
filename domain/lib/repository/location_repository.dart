import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import 'package:domain/domain.dart';

/// Справочник адресов (улицы, города) для формы объявления и поиска.
///
/// Держим отдельно от [IProfileRepository]: это не данные пользователя, а
/// переиспользуемый контент приложения (как и фильтры квартир). Профиль
/// остаётся про человека; каталог локаций можно подключать к карте, к чату и т.д.
abstract class ILocationRepository {
  Future<Either<RemoteException, List<CityModel>>> fetchCities();
  Future<Either<RemoteException, List<LocationSuggestionModel>>>
  suggestLocations(String addressQuery);
}
