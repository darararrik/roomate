import 'package:roomate/data/dto/ad_field_dto.dart';
import 'package:roomate/domain/enums/selection_step_key_enum.dart';

class MockDataSource {
  /// Главный метод для получения данных по ключу
  Future<List<AdFieldDto>> getStepFields(SelectionStepKey key) async {
    return switch (key) {
      SelectionStepKey.rentType => getRentType(),
      SelectionStepKey.roomType => getRoomType(),
      SelectionStepKey.propertyType => getPropertyType(),
      SelectionStepKey.propertiesApartment => getPropertiesApartment(),
      SelectionStepKey.featuresFirst => getFeaturesFirst(),
      SelectionStepKey.featuresSecond => getFeaturesSecond(),
      SelectionStepKey.dealTerms => getDealTerms(),
      SelectionStepKey.contactInfo => getContactInfo(),
      SelectionStepKey.location => getLocation(),
      SelectionStepKey.media => getMedia(),
    };
  }

  // --- Методы для каждого шага ---

  Future<List<AdFieldDto>> getRentType() => _toDtoList(_rentTypeJson);

  Future<List<AdFieldDto>> getRoomType() => _toDtoList(_roomTypeJson);

  Future<List<AdFieldDto>> getPropertyType() => _toDtoList(_propertyTypeJson);

  Future<List<AdFieldDto>> getPropertiesApartment() =>
      _toDtoList(_propertiesApartmentJson);

  Future<List<AdFieldDto>> getFeaturesFirst() => _toDtoList(_featuresFirstJson);

  Future<List<AdFieldDto>> getFeaturesSecond() =>
      _toDtoList(_featuresSecondJson);

  Future<List<AdFieldDto>> getDealTerms() => _toDtoList(_dealTermsJson);

  Future<List<AdFieldDto>> getContactInfo() => _toDtoList(_contactInfoJson);

  Future<List<AdFieldDto>> getLocation() => _toDtoList(_locationJson);

  Future<List<AdFieldDto>> getMedia() => _toDtoList(_mediaJson);

  // --- Вспомогательный метод маппинга ---

  Future<List<AdFieldDto>> _toDtoList(
    List<Map<String, dynamic>> jsonList,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return jsonList.map((json) => AdFieldDto.fromJson(json)).toList();
  }

  // --- JSON Data (Static Consts) ---

  static const _rentTypeJson = [
    {
      "type": "tag_group",
      "id": "rent_type",
      "title": "Аренда",
      "is_radio": true,
      "tags": ["Долгосрочная", "Посуточно", "Обмен"],
    },
    {
      "type": "tag_group",
      "id": "who_to_rent",
      "title": "Кому готов сдавать",
      "is_radio": true,
      "tags": ["Одному человеку", "Компании", "Семье", "Студентам"],
    },
  ];

  static const _roomTypeJson = [
    {
      "type": "tag_group",
      "id": "room_category",
      "title": "Долгосрочная аренда",
      "description": "Какое у вас помещение?",
      "tags": ["Жилое", "Коммерческое"],
    },
  ];

  static const _propertyTypeJson = [
    {
      "type": "tag_group",
      "id": "property_type",
      "title": "Вид недвижимости",
      "tags": [
        "Квартира",
        "Апартаменты",
        "Комната",
        "Койко-место",
        "Дом",
        "Коттедж",
        "Таунхаус",
      ],
    },
  ];

  static const _propertiesApartmentJson = [
    {
      "type": "tag_group",
      "id": "rooms_count",
      "title": "Количество комнат",
      "is_radio": true,
      "tags": ["Студия", "1", "2", "3", "4", "5", "6+", "Свободная планировка"],
    },
    {
      "type": "input",
      "id": "apartment_area",
      "title": "Площадь квартиры",
      "hint_text": "Введите площадь квартиры",
      "is_numeric": true,
      "suffix": "м²",
    },
    {
      "type": "tag_group",
      "id": "layout_type",
      "title": "Планировка",
      "is_radio": true,
      "tags": ["Смежная", "Изолированная", "Смежно-изолированная"],
    },
    {
      "type": "input",
      "id": "floor",
      "title": "Этаж",
      "hint_text": "Этаж",
      "is_numeric": true,
    },
    {
      "type": "input",
      "id": "total_floors",
      "title": "Этажей в доме",
      "hint_text": "Количество этажей",
      "is_numeric": true,
    },
  ];

  static const _featuresFirstJson = [
    {
      "type": "tag_group",
      "id": "repair",
      "title": "Ремонт",
      "tags": ["Без ремонта", "Евро", "Косметический"],
    },
    {
      "type": "tag_group",
      "id": "lifts",
      "title": "Лифты",
      "tags": ["Пассажирский", "Грузовой", "Отсутствует"],
    },
    {
      "type": "tag_group",
      "id": "balconies",
      "title": "Балконы",
      "tags": ["Балкон", "Нет", "Лоджия", "Балкон и лоджия", "Терраса"],
    },
  ];

  static const _featuresSecondJson = [
    {
      "type": "tag_group",
      "id": "furniture",
      "title": "Мебель",
      "tags": ["Есть", "Нет", "Частично"],
    },
    {
      "type": "tag_group",
      "id": "amenities",
      "title": "Удобства",
      "tags": [
        "Интернет",
        "Мусоропровод",
        "Посуда",
        "Видеодомофон",
        "Консьерж",
        "Умный дом",
      ],
    },
    {
      "type": "tag_group",
      "id": "bathroom",
      "title": "Ванная комната",
      "tags": ["Душевая кабина", "Ванна"],
    },
    {
      "type": "tag_group",
      "id": "appliances",
      "title": "Бытовая техника",
      "tags": [
        "Холодильник",
        "Телевизор",
        "Стиральная машина",
        "Кондиционер",
        "Посудомоечная машина",
      ],
    },
    {
      "type": "tag_group",
      "id": "stove",
      "title": "Плита",
      "tags": ["Газ", "Электрическая"],
    },
  ];

  static const _dealTermsJson = [
    {
      "type": "tag_group",
      "id": "currency",
      "title": "Валюта",
      "tags": ["Рубли", "Евро", "Доллары"],
      "is_radio": true,
    },
    {
      "type": "input",
      "id": "price",
      "title": "За месяц",
      "hint_text": "Например: 20 000",
      "is_numeric": true,
    },
    {
      "type": "tag_group",
      "id": "prepayment",
      "title": "Предоплата",
      "tags": ["Без предоплаты", "Месяц", "2", "3", "4+"],
    },
    {
      "type": "input",
      "id": "deposit",
      "title": "Залог",
      "hint_text": "Например: 20 000",
      "is_numeric": true,
    },
    {
      "type": "tag_group",
      "id": "lease_term",
      "title": "Срок аренды",
      "tags": ["Несколько месяцев", "От года"],
    },
    {
      "type": "tag_group",
      "id": "rental_conditions",
      "title": "Условия сдачи",
      "tags": ["Можно с детьми", "Можно с животными"],
    },
  ];

  static const _contactInfoJson = [
    {
      "type": "input",
      "id": "phone",
      "title": "Телефон",
      "hint_text": "+7 999 999 99 99",
    },
    {
      "type": "input",
      "id": "phone_2",
      "title": "Дополнительный номер телефона",
      "hint_text": "+7 999 999 99 99",
    },
    {
      "type": "tag_group",
      "id": "contact_method",
      "title": "Способ связи",
      "tags": ["Телефон", "Соцсети", "Электронная почта", "Все"],
    },
  ];

  static const _locationJson = [
    {
      "type": "address",
      "id": "main_address",
      "title": "Местоположение",
      "description": "Где находится жилье?",
    },
    {
      "type": "input",
      "id": "apartment_number",
      "title": "Номер квартиры",
      "hint_text": "Например: 12",
      "is_numeric": true,
      "description": "Не будет видно в объявлении",
    },
  ];

  static const _mediaJson = [
    {
      "type": "media",
      "id": "photos_upload",
      "title": "Добавьте фото",
      "description": "Минимум 3 фотографии",
      "is_photo": true,
    },
    {
      "type": "media",
      "id": "video_upload",
      "title": "Добавьте видео",
      "description": "Только одно видео",
      "is_photo": false,
    },
  ];
}
