import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/currency_enum.dart';

part 'create_ad_form_model.freezed.dart';

@freezed
sealed class CreateAdFormModel with _$CreateAdFormModel {
  const factory CreateAdFormModel({
    // --- Основные параметры аренды ---
    /// Цель аренды (например: снять, сдать)
    @Default(0) int rentGoalId,

    /// Период аренды (посуточно, длительно)
    @Default(0) int rentPeriodId,

    /// Кто может снимать (студенты, пары, с животными и т.д.)
    @Default(<int>{}) Set<int> whoCanRentIds,

    // --- Тип недвижимости ---
    /// Вид помещения (жилое, нежилое)
    @Default(0) int premisesTypeId,

    /// Тип собственности (квартира, комната, дом)
    @Default(0) int propertyTypeId,

    // --- Параметры жилья ---
    /// Количество комнат
    @Default(0) int roomsCountId,

    /// Планировка (смежная, изолированная)
    @Default(0) int layoutId,

    // --- Здание и ремонт ---
    /// Тип ремонта (косметический, евро, дизайнерский)
    @Default(0) int renovationId,

    /// Наличие лифтов (пассажирский, грузовой)
    @Default(0) int elevatorsId,

    /// Наличие балконов/лоджий
    @Default(0) int balconiesId,

    // --- Удобства и наполнение ---
    /// Мебель (есть, нет, частично)
    @Default(0) int furnitureId,

    /// Общие удобства (интернет, парковка, кондиционер)
    @Default(<int>{}) Set<int> amenitiesIds,

    /// Тип санузла (совмещенный, раздельный)
    @Default(<int>{}) Set<int> bathroomIds,

    /// Бытовая техника (холодильник, стиралка, плита)
    @Default(<int>{}) Set<int> appliancesIds,

    /// Тип плиты (газовая, электрическая)
    @Default(0) int stoveId,

    // --- Финансы и условия ---
    /// ID валюты из справочника
    @Default(0) int currencyId,

    /// Условия предоплаты (за 1 месяц, за 2 месяца)
    @Default(0) int prepaymentId,

    /// Срок аренды (минимальный срок)
    @Default(0) int rentDurationId,

    /// Дополнительные условия аренды
    @Default(<int>{}) Set<int> rentConditionsIds,

    // --- Связь ---
    /// Предпочтительный способ связи (звонок, сообщение)
    @Default(0) int contactMethodId,

    // --- Числовые данные и текст ---
    /// Выбранная валюта (объект Enum для UI)
    @Default(Currency.rub) Currency selectedCurrency,

    /// Стоимость аренды
    @Default(0) double cost,

    /// Размер залога
    @Default(0) double deposit,

    /// Площадь квартиры (кв. м.)
    @Default(0) double apartmentArea,

    /// Текущий этаж
    @Default(0) int floor,

    /// Всего этажей в здании
    @Default(0) int totalFloors,

    /// Полный адрес строкой
    @Default("") String address,

    /// Выбранная из справочника улица (0 — не выбрана)
    @Default(0) int selectedStreetId,

    /// Номер квартиры
    @Default(0) int apartmentNumber,

    /// Заголовок объявления
    @Default("") String title,

    /// Подробное описание
    @Default("") String description,

    /// Основной номер телефона
    @Default("") String mainPhone,

    /// Дополнительный номер телефона
    @Default("") String additionalNumber,
  }) = _CreateAdFormModel;
}
