import 'package:roomate/domain/enums/enums.dart';
import 'package:roomate/domain/models/tag_model.dart';

class CreateAdStaticDataSource {
  static List<TagGroupModel> get rentType => _rentType;
  static TagGroupModel get premisesType => _premisesType;
  static TagGroupModel get propertyType => _propertyType;
  static List<TagGroupModel> get propertiesApartment => _propertiesApartment;
  static List<TagGroupModel> get featuresFirst => _featuresFirst;
  static List<TagGroupModel> get featuresSecond => _featuresSecond;
  static List<TagGroupModel> get dealTerms => _dealTerms;
  static TagGroupModel get contactInfo => _contactInfo;

  static final _rentType = [
    _goalGroup,
    _termGroup,
    _whoToRentGroup,
  ];

  static const _premisesType = TagGroupModel(
    groupId: 'premises_type',
    groupTitle: 'Тип помещения',
    tags: [
      TagModel(id: 20, title: 'Жилое'),
      TagModel(id: 21, title: 'Коммерческое'),
    ],
  );

  static const _propertyType = TagGroupModel(
    groupId: 'property_type',
    groupTitle: 'Вид недвижимости',
    tags: [
      TagModel(id: 30, title: 'Квартира'),
      TagModel(id: 31, title: 'Апартаменты'),
      TagModel(id: 32, title: 'Комната'),
      TagModel(id: 33, title: 'Койко-место'),
      TagModel(id: 34, title: 'Дом'),
      TagModel(id: 35, title: 'Коттедж'),
      TagModel(id: 36, title: 'Таунхаус'),
    ],
  );

  static final _propertiesApartment = [
    const TagGroupModel(
      groupId: 'room_count',
      groupTitle: 'Количество комнат',
      tags: [
        TagModel(id: 40, title: 'Студия'),
        TagModel(id: 41, title: '1'),
        TagModel(id: 42, title: '2'),
        TagModel(id: 43, title: '3'),
        TagModel(id: 44, title: '4'),
        TagModel(id: 45, title: '5'),
        TagModel(id: 46, title: '6+'),
        TagModel(id: 47, title: 'Свободная планировка'),
      ],
    ),
    _layoutGroup,
  ];

  static final _featuresFirst = [_renovationGroup, _elevatorsGroup, _balconiesGroup];

  static final _featuresSecond = [
    _furnitureGroup,
    _amenitiesGroup,
    _bathroomGroup,
    _appliancesGroup,
    _stoveGroup,
  ];

  static final _dealTerms = [
    const TagGroupModel(
      groupId: 'currency',
      groupTitle: 'Цена',
      tags: [
        TagModel(id: 140, title: 'Рубли'),
        TagModel(id: 141, title: 'Евро'),
        TagModel(id: 142, title: 'Доллары'),
      ],
    ),
    _prepaymentGroup,
    _rentalPeriodGroup,
  ];

  static const _contactInfo = TagGroupModel(
    groupId: 'contact_method',
    groupTitle: 'Способ связи',
    tags: [
      TagModel(id: 180, title: 'Оба способа'),
      TagModel(id: 181, title: 'Звонки'),
      TagModel(id: 182, title: 'Сообщения'),
    ],
  );

  static final TagGroupModel _layoutGroup = _buildGroup(
    groupId: 'layout',
    groupTitle: 'Планировка',
    titles: ApartmentLayout.values.map((item) => item.title).toList(),
    startId: 50,
  );

  static final TagGroupModel _renovationGroup = _buildGroup(
    groupId: 'renovation',
    groupTitle: 'Ремонт',
    titles: RenovationType.values.map((item) => item.title).toList(),
    startId: 60,
  );

  static final TagGroupModel _elevatorsGroup = _buildGroup(
    groupId: 'elevators',
    groupTitle: 'Лифты',
    titles: ElevatorType.values.map((item) => item.title).toList(),
    startId: 70,
  );

  static final TagGroupModel _balconiesGroup = _buildGroup(
    groupId: 'balconies',
    groupTitle: 'Балконы',
    titles: BalconyType.values.map((item) => item.title).toList(),
    startId: 80,
  );

  static final TagGroupModel _furnitureGroup = _buildGroup(
    groupId: 'furniture',
    groupTitle: 'Мебель',
    titles: FurnitureType.values.map((item) => item.title).toList(),
    startId: 90,
  );

  static final TagGroupModel _amenitiesGroup = _buildGroup(
    groupId: 'amenities',
    groupTitle: 'Удобства',
    titles: const [
      ApartmentAmenity.internet,
      ApartmentAmenity.trashChute,
      ApartmentAmenity.dishes,
      ApartmentAmenity.videoIntercom,
      ApartmentAmenity.concierge,
      ApartmentAmenity.smartHome,
    ].map((item) => item.title).toList(),
    startId: 100,
  );

  static final TagGroupModel _bathroomGroup = _buildGroup(
    groupId: 'bathroom',
    groupTitle: 'Ванная комната',
    titles: const [
      ApartmentAmenity.shower,
      ApartmentAmenity.bath,
    ].map((item) => item.title).toList(),
    startId: 110,
  );

  static final TagGroupModel _appliancesGroup = _buildGroup(
    groupId: 'appliances',
    groupTitle: 'Бытовая техника',
    titles: const [
      ApartmentAmenity.fridge,
      ApartmentAmenity.tv,
      ApartmentAmenity.washingMachine,
      ApartmentAmenity.airConditioner,
      ApartmentAmenity.dishwasher,
    ].map((item) => item.title).toList(),
    startId: 120,
  );

  static final TagGroupModel _stoveGroup = _buildGroup(
    groupId: 'stove',
    groupTitle: 'Плита',
    titles: StoveType.values.map((item) => item.title).toList(),
    startId: 130,
  );

  static final TagGroupModel _goalGroup = _buildGroup(
    groupId: 'goal',
    groupTitle: 'Ваша цель',
    titles: DealGoal.values.map((item) => item.title).toList(),
    startId: 1,
  );

  static final TagGroupModel _termGroup = _buildGroup(
    groupId: 'term',
    groupTitle: 'Срок',
    titles: RentalConditions.values.map((item) => item.title).toList(),
    startId: 3,
  );

  static final TagGroupModel _whoToRentGroup = _buildGroup(
    groupId: 'who_to_rent',
    groupTitle: 'Кому готов сдавать',
    titles: WhoToRent.values.map((item) => item.title).toList(),
    startId: 10,
  );

  static final TagGroupModel _prepaymentGroup = _buildGroup(
    groupId: 'prepayment',
    groupTitle: 'Предоплата',
    titles: PrepaymentType.values.map((item) => item.title).toList(),
    startId: 150,
  );

  static final TagGroupModel _rentalPeriodGroup = _buildGroup(
    groupId: 'rental_period',
    groupTitle: 'Срок аренды',
    titles: RentalPeriod.values.map((item) => item.title).toList(),
    startId: 160,
  );

  static TagGroupModel _buildGroup({
    required String groupId,
    required String groupTitle,
    required List<String> titles,
    required int startId,
  }) {
    return TagGroupModel(
      groupId: groupId,
      groupTitle: groupTitle,
      tags: List.generate(
        titles.length,
        (index) => TagModel(id: startId + index, title: titles[index]),
      ),
    );
  }
}
