import 'package:roomate/data/utils/extensions/collections.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';
import 'package:roomate/domain/models/selection_category.dart';

class MockDataSource {
  Future<List<SelectionCategory>> getSelectionCategories(
    SelectionStepKey key,
  ) async {
    switch (key) {
      case SelectionStepKey.rentType:
        return _rentTypeCategories;
      case SelectionStepKey.roomType:
        return _roomTypeCategories;
      case SelectionStepKey.propertyType:
        return _propertyTypeCategories;
      case SelectionStepKey.propertiesApartment:
        return _propertiesApartmentCategories;
      case SelectionStepKey.featuresFirst:
        return _featuresFirstCategories;
      case SelectionStepKey.featuresSecond:
        return _featuresSecondCategories;
      case SelectionStepKey.dealTerms:
        return _dealTermsCategories;
      case SelectionStepKey.contactInfo:
        return _contactInfoCategories;
    }
  }

  static final Future<List<SelectionCategory>> _rentTypeCategories = const [
    SelectionCategory(
      title: "Аренда",
      tags: ["Долгосрочная", "Посуточно", "Обмен"],
    ),
    SelectionCategory(
      title: "Кому готов сдавать",
      tags: ["Одному человеку", "Компании", "Семье", "Студентам"],
    ),
  ].withDelay();

  static final Future<List<SelectionCategory>> _roomTypeCategories = const [
    SelectionCategory(
      title: "Долгосрочная аренда",
      description: "Какое у вас помещение?",
      tags: ["Жилое", "Коммерческое"],
    ),
  ].withDelay();
  static final Future<List<SelectionCategory>> _propertiesApartmentCategories =
      const [
        SelectionCategory(
          title: "Количество комнат",
          tags: [
            "Студия",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6+",
            "Свободная планировка",
          ],
        ),
        SelectionCategory(
          title: "Планировка",
          tags: ["Смежная", "Изолированная", "Смежно-изолированная"],
        ),
      ].withDelay();
  static final Future<List<SelectionCategory>> _propertyTypeCategories = const [
    SelectionCategory(
      title: "Вид недвижимости",
      tags: [
        "Квартира",
        "Апартаменты",
        "Комната",
        "Койко-место",
        "Дом",
        "Коттедж",
        "Таунхаус",
      ],
    ),
  ].withDelay();

  static final Future<List<SelectionCategory>> _featuresFirstCategories =
      const [
        SelectionCategory(
          title: "Ремонт",
          tags: ["Без ремонта", "Евро", "Косметический"],
        ),
        SelectionCategory(
          title: "Лифты",
          tags: ["Пассажирский", "Грузовой", "Отсутствует"],
        ),
        SelectionCategory(
          title: "Балконы",
          tags: ["Балкон", "Нет", "Лоджия", "Балкон и лоджия", "Терраса"],
        ),
      ].withDelay();

  static final Future<List<SelectionCategory>> _featuresSecondCategories =
      const [
        SelectionCategory(title: "Мебель", tags: ["Есть", "Нет", "Частично"]),
        SelectionCategory(
          title: "Удобства",
          tags: [
            "Интернет",
            "Мусоропровод",
            "Посуда",
            "Видеодомофон",
            "Консьерж",
            "Умный дом",
          ],
        ),
        SelectionCategory(
          title: "Ванная комната",
          tags: ["Душевая кабина", "Ванна"],
        ),
        SelectionCategory(
          title: "Бытовая техника",
          tags: [
            "Холодильник",
            "Телевизор",
            "Стиральная машина",
            "Кондиционер",
            "Посудомоечная машина",
          ],
        ),
        SelectionCategory(title: "Плита", tags: ["Газ", "Электрическая"]),
      ].withDelay();
  static final Future<List<SelectionCategory>> _dealTermsCategories = const [
    SelectionCategory(title: "Цена", tags: ["Рубли", "Евро", "Доллары"]),
    SelectionCategory(
      title: "Предоплата",
      tags: ["Без предоплаты", "Месяц", "2", "3", "4+"],
    ),
    SelectionCategory(
      title: "Срок аренды",
      tags: ["Несколько месяцев", "От года"],
    ),
    SelectionCategory(
      title: "Условия сдачи",
      tags: ["Можно с детьми", "Можно с животными"],
    ),
  ].withDelay();
  static final Future<List<SelectionCategory>> _contactInfoCategories = const [
    SelectionCategory(
      title: "Способ связи",
      tags: ["Телефон", "Соцсети", "Электронная почта", "Все"],
    ),
  ].withDelay();
}
