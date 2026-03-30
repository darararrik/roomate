enum ApartmentAmenity {
  childrenAllowed,
  petsAllowed,
  internet,
  trashChute,
  dishes,
  videoIntercom,
  concierge,
  smartHome,
  shower,
  bath,
  fridge,
  tv,
  washingMachine,
  airConditioner,
  dishwasher,
}

enum ApartmentLayout { adjacent, isolated, mixed }

enum RenovationType { none, euro, cosmetic }

enum ElevatorType { passenger, cargo, both }

enum BalconyType { balcony, none, loggia, balconyAndLoggia, terrace }

enum FurnitureType { available, unavailable, partial }

enum StoveType { gas, electric }

enum RentalConditions { longTerm, daily }

enum DealGoal { rent, exchange }

enum WhoToRent { onePerson, company, family, students }

enum PrepaymentType { none, oneMonth, twoMonths, threeMonths, fourPlusMonths }

enum RentalPeriod { severalMonths, fromYear }

extension ApartmentAmenityX on ApartmentAmenity {
  String get title => switch (this) {
    ApartmentAmenity.childrenAllowed => 'Можно с детьми',
    ApartmentAmenity.petsAllowed => 'Можно с животными',
    ApartmentAmenity.internet => 'Интернет',
    ApartmentAmenity.trashChute => 'Мусоропровод',
    ApartmentAmenity.dishes => 'Посуда',
    ApartmentAmenity.videoIntercom => 'Видеодомофон',
    ApartmentAmenity.concierge => 'Консьерж',
    ApartmentAmenity.smartHome => 'Умный дом',
    ApartmentAmenity.shower => 'Душевая кабина',
    ApartmentAmenity.bath => 'Ванна',
    ApartmentAmenity.fridge => 'Холодильник',
    ApartmentAmenity.tv => 'Телевизор',
    ApartmentAmenity.washingMachine => 'Стиральная машина',
    ApartmentAmenity.airConditioner => 'Кондиционер',
    ApartmentAmenity.dishwasher => 'Посудомоечная машина',
  };
}

extension ApartmentLayoutX on ApartmentLayout {
  String get title => switch (this) {
    ApartmentLayout.adjacent => 'Смежная',
    ApartmentLayout.isolated => 'Изолированная',
    ApartmentLayout.mixed => 'Смежно-изолированная',
  };
}

extension RenovationTypeX on RenovationType {
  String get title => switch (this) {
    RenovationType.none => 'Без ремонта',
    RenovationType.euro => 'Евро',
    RenovationType.cosmetic => 'Косметический',
  };
}

extension ElevatorTypeX on ElevatorType {
  String get title => switch (this) {
    ElevatorType.passenger => 'Пассажирский',
    ElevatorType.cargo => 'Грузовой',
    ElevatorType.both => 'Пассажирский и грузовой',
  };
}

extension BalconyTypeX on BalconyType {
  String get title => switch (this) {
    BalconyType.balcony => 'Балкон',
    BalconyType.none => 'Нет',
    BalconyType.loggia => 'Лоджия',
    BalconyType.balconyAndLoggia => 'Балкон и лоджия',
    BalconyType.terrace => 'Терраса',
  };
}

extension FurnitureTypeX on FurnitureType {
  String get title => switch (this) {
    FurnitureType.available => 'Есть',
    FurnitureType.unavailable => 'Нет',
    FurnitureType.partial => 'Частично',
  };
}

extension StoveTypeX on StoveType {
  String get title => switch (this) {
    StoveType.gas => 'Газ',
    StoveType.electric => 'Электрическая',
  };
}

extension RentalConditionsX on RentalConditions {
  String get title => switch (this) {
    RentalConditions.longTerm => 'Долгосрочная',
    RentalConditions.daily => 'Посуточно',
  };
}

extension DealGoalX on DealGoal {
  String get title => switch (this) {
    DealGoal.rent => 'Съем',
    DealGoal.exchange => 'Обмен',
  };
}

extension WhoToRentX on WhoToRent {
  String get title => switch (this) {
    WhoToRent.onePerson => 'Одному человеку',
    WhoToRent.company => 'Компании',
    WhoToRent.family => 'Семье',
    WhoToRent.students => 'Студентам',
  };
}

extension PrepaymentTypeX on PrepaymentType {
  String get title => switch (this) {
    PrepaymentType.none => 'Без предоплаты',
    PrepaymentType.oneMonth => 'Месяц',
    PrepaymentType.twoMonths => '2',
    PrepaymentType.threeMonths => '3',
    PrepaymentType.fourPlusMonths => '4+',
  };
}

extension RentalPeriodX on RentalPeriod {
  String get title => switch (this) {
    RentalPeriod.severalMonths => 'Несколько месяцев',
    RentalPeriod.fromYear => 'От года',
  };
}
