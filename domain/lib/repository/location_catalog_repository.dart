import 'package:domain/domain.dart';

/// Справочник адресов (улицы, города) для формы объявления и поиска.
///
/// Держим отдельно от [IProfileRepository]: это не данные пользователя, а
/// переиспользуемый контент приложения (как и фильтры квартир). Профиль
/// остаётся про человека; каталог локаций можно подключать к карте, к чату и т.д.
abstract class ILocationCatalogRepository {
  /// [cityKey] — стабильный ключ города, например `omsk`.
  Future<List<StreetModel>> getStreetsForCity(String cityKey);
}
