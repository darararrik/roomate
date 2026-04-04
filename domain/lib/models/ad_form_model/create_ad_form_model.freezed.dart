// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdFormModel {

// --- Основные параметры аренды ---
/// Цель аренды (например: снять, сдать)
 int get rentGoalId;/// Период аренды (посуточно, длительно)
 int get rentPeriodId;/// Кто может снимать (студенты, пары, с животными и т.д.)
 Set<int> get whoCanRentIds;// --- Тип недвижимости ---
/// Вид помещения (жилое, нежилое)
 int get premisesTypeId;/// Тип собственности (квартира, комната, дом)
 int get propertyTypeId;// --- Параметры жилья ---
/// Количество комнат
 int get roomsCountId;/// Планировка (смежная, изолированная)
 int get layoutId;// --- Здание и ремонт ---
/// Тип ремонта (косметический, евро, дизайнерский)
 int get renovationId;/// Наличие лифтов (пассажирский, грузовой)
 int get elevatorsId;/// Наличие балконов/лоджий
 int get balconiesId;// --- Удобства и наполнение ---
/// Мебель (есть, нет, частично)
 int get furnitureId;/// Общие удобства (интернет, парковка, кондиционер)
 Set<int> get amenitiesIds;/// Тип санузла (совмещенный, раздельный)
 Set<int> get bathroomIds;/// Бытовая техника (холодильник, стиралка, плита)
 Set<int> get appliancesIds;/// Тип плиты (газовая, электрическая)
 int get stoveId;// --- Финансы и условия ---
/// ID валюты из справочника
 int get currencyId;/// Условия предоплаты (за 1 месяц, за 2 месяца)
 int get prepaymentId;/// Срок аренды (минимальный срок)
 int get rentDurationId;/// Дополнительные условия аренды
 Set<int> get rentConditionsIds;// --- Связь ---
/// Предпочтительный способ связи (звонок, сообщение)
 int get contactMethodId;// --- Числовые данные и текст ---
/// Выбранная валюта (объект Enum для UI)
 Currency get selectedCurrency;/// Стоимость аренды
 double get cost;/// Размер залога
 double get deposit;/// Площадь квартиры (кв. м.)
 double get apartmentArea;/// Текущий этаж
 int get floor;/// Всего этажей в здании
 int get totalFloors;/// Полный адрес строкой
 String get address;/// Выбранная из справочника улица (0 — не выбрана)
 int get selectedStreetId;/// Номер квартиры
 int get apartmentNumber;/// Заголовок объявления
 String get title;/// Подробное описание
 String get description;/// Основной номер телефона
 String get mainPhone;/// Дополнительный номер телефона
 String get additionalNumber;
/// Create a copy of CreateAdFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdFormModelCopyWith<CreateAdFormModel> get copyWith => _$CreateAdFormModelCopyWithImpl<CreateAdFormModel>(this as CreateAdFormModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdFormModel&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other.whoCanRentIds, whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other.amenitiesIds, amenitiesIds)&&const DeepCollectionEquality().equals(other.bathroomIds, bathroomIds)&&const DeepCollectionEquality().equals(other.appliancesIds, appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other.rentConditionsIds, rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.selectedStreetId, selectedStreetId) || other.selectedStreetId == selectedStreetId)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(amenitiesIds),const DeepCollectionEquality().hash(bathroomIds),const DeepCollectionEquality().hash(appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(rentConditionsIds),contactMethodId,selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,selectedStreetId,apartmentNumber,title,description,mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateAdFormModel(rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, selectedStreetId: $selectedStreetId, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateAdFormModelCopyWith<$Res>  {
  factory $CreateAdFormModelCopyWith(CreateAdFormModel value, $Res Function(CreateAdFormModel) _then) = _$CreateAdFormModelCopyWithImpl;
@useResult
$Res call({
 int rentGoalId, int rentPeriodId, Set<int> whoCanRentIds, int premisesTypeId, int propertyTypeId, int roomsCountId, int layoutId, int renovationId, int elevatorsId, int balconiesId, int furnitureId, Set<int> amenitiesIds, Set<int> bathroomIds, Set<int> appliancesIds, int stoveId, int currencyId, int prepaymentId, int rentDurationId, Set<int> rentConditionsIds, int contactMethodId, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int selectedStreetId, int apartmentNumber, String title, String description, String mainPhone, String additionalNumber
});




}
/// @nodoc
class _$CreateAdFormModelCopyWithImpl<$Res>
    implements $CreateAdFormModelCopyWith<$Res> {
  _$CreateAdFormModelCopyWithImpl(this._self, this._then);

  final CreateAdFormModel _self;
  final $Res Function(CreateAdFormModel) _then;

/// Create a copy of CreateAdFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoalId = null,Object? rentPeriodId = null,Object? whoCanRentIds = null,Object? premisesTypeId = null,Object? propertyTypeId = null,Object? roomsCountId = null,Object? layoutId = null,Object? renovationId = null,Object? elevatorsId = null,Object? balconiesId = null,Object? furnitureId = null,Object? amenitiesIds = null,Object? bathroomIds = null,Object? appliancesIds = null,Object? stoveId = null,Object? currencyId = null,Object? prepaymentId = null,Object? rentDurationId = null,Object? rentConditionsIds = null,Object? contactMethodId = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? selectedStreetId = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? mainPhone = null,Object? additionalNumber = null,}) {
  return _then(_self.copyWith(
rentGoalId: null == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int,rentPeriodId: null == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int,whoCanRentIds: null == whoCanRentIds ? _self.whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as Set<int>,premisesTypeId: null == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeId: null == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int,roomsCountId: null == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int,layoutId: null == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int,renovationId: null == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int,elevatorsId: null == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int,balconiesId: null == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int,furnitureId: null == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int,amenitiesIds: null == amenitiesIds ? _self.amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as Set<int>,bathroomIds: null == bathroomIds ? _self.bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as Set<int>,appliancesIds: null == appliancesIds ? _self.appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as Set<int>,stoveId: null == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,prepaymentId: null == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,rentConditionsIds: null == rentConditionsIds ? _self.rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as Set<int>,contactMethodId: null == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,selectedStreetId: null == selectedStreetId ? _self.selectedStreetId : selectedStreetId // ignore: cast_nullable_to_non_nullable
as int,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainPhone: null == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdFormModel].
extension CreateAdFormModelPatterns on CreateAdFormModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdFormModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdFormModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdFormModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdFormModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdFormModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdFormModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rentGoalId,  int rentPeriodId,  Set<int> whoCanRentIds,  int premisesTypeId,  int propertyTypeId,  int roomsCountId,  int layoutId,  int renovationId,  int elevatorsId,  int balconiesId,  int furnitureId,  Set<int> amenitiesIds,  Set<int> bathroomIds,  Set<int> appliancesIds,  int stoveId,  int currencyId,  int prepaymentId,  int rentDurationId,  Set<int> rentConditionsIds,  int contactMethodId,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int selectedStreetId,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdFormModel() when $default != null:
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.selectedStreetId,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rentGoalId,  int rentPeriodId,  Set<int> whoCanRentIds,  int premisesTypeId,  int propertyTypeId,  int roomsCountId,  int layoutId,  int renovationId,  int elevatorsId,  int balconiesId,  int furnitureId,  Set<int> amenitiesIds,  Set<int> bathroomIds,  Set<int> appliancesIds,  int stoveId,  int currencyId,  int prepaymentId,  int rentDurationId,  Set<int> rentConditionsIds,  int contactMethodId,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int selectedStreetId,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateAdFormModel():
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.selectedStreetId,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rentGoalId,  int rentPeriodId,  Set<int> whoCanRentIds,  int premisesTypeId,  int propertyTypeId,  int roomsCountId,  int layoutId,  int renovationId,  int elevatorsId,  int balconiesId,  int furnitureId,  Set<int> amenitiesIds,  Set<int> bathroomIds,  Set<int> appliancesIds,  int stoveId,  int currencyId,  int prepaymentId,  int rentDurationId,  Set<int> rentConditionsIds,  int contactMethodId,  Currency selectedCurrency,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int selectedStreetId,  int apartmentNumber,  String title,  String description,  String mainPhone,  String additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdFormModel() when $default != null:
return $default(_that.rentGoalId,_that.rentPeriodId,_that.whoCanRentIds,_that.premisesTypeId,_that.propertyTypeId,_that.roomsCountId,_that.layoutId,_that.renovationId,_that.elevatorsId,_that.balconiesId,_that.furnitureId,_that.amenitiesIds,_that.bathroomIds,_that.appliancesIds,_that.stoveId,_that.currencyId,_that.prepaymentId,_that.rentDurationId,_that.rentConditionsIds,_that.contactMethodId,_that.selectedCurrency,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.selectedStreetId,_that.apartmentNumber,_that.title,_that.description,_that.mainPhone,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdFormModel implements CreateAdFormModel {
  const _CreateAdFormModel({this.rentGoalId = 0, this.rentPeriodId = 0, final  Set<int> whoCanRentIds = const <int>{}, this.premisesTypeId = 0, this.propertyTypeId = 0, this.roomsCountId = 0, this.layoutId = 0, this.renovationId = 0, this.elevatorsId = 0, this.balconiesId = 0, this.furnitureId = 0, final  Set<int> amenitiesIds = const <int>{}, final  Set<int> bathroomIds = const <int>{}, final  Set<int> appliancesIds = const <int>{}, this.stoveId = 0, this.currencyId = 0, this.prepaymentId = 0, this.rentDurationId = 0, final  Set<int> rentConditionsIds = const <int>{}, this.contactMethodId = 0, this.selectedCurrency = Currency.rub, this.cost = 0, this.deposit = 0, this.apartmentArea = 0, this.floor = 0, this.totalFloors = 0, this.address = "", this.selectedStreetId = 0, this.apartmentNumber = 0, this.title = "", this.description = "", this.mainPhone = "", this.additionalNumber = ""}): _whoCanRentIds = whoCanRentIds,_amenitiesIds = amenitiesIds,_bathroomIds = bathroomIds,_appliancesIds = appliancesIds,_rentConditionsIds = rentConditionsIds;
  

// --- Основные параметры аренды ---
/// Цель аренды (например: снять, сдать)
@override@JsonKey() final  int rentGoalId;
/// Период аренды (посуточно, длительно)
@override@JsonKey() final  int rentPeriodId;
/// Кто может снимать (студенты, пары, с животными и т.д.)
 final  Set<int> _whoCanRentIds;
/// Кто может снимать (студенты, пары, с животными и т.д.)
@override@JsonKey() Set<int> get whoCanRentIds {
  if (_whoCanRentIds is EqualUnmodifiableSetView) return _whoCanRentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_whoCanRentIds);
}

// --- Тип недвижимости ---
/// Вид помещения (жилое, нежилое)
@override@JsonKey() final  int premisesTypeId;
/// Тип собственности (квартира, комната, дом)
@override@JsonKey() final  int propertyTypeId;
// --- Параметры жилья ---
/// Количество комнат
@override@JsonKey() final  int roomsCountId;
/// Планировка (смежная, изолированная)
@override@JsonKey() final  int layoutId;
// --- Здание и ремонт ---
/// Тип ремонта (косметический, евро, дизайнерский)
@override@JsonKey() final  int renovationId;
/// Наличие лифтов (пассажирский, грузовой)
@override@JsonKey() final  int elevatorsId;
/// Наличие балконов/лоджий
@override@JsonKey() final  int balconiesId;
// --- Удобства и наполнение ---
/// Мебель (есть, нет, частично)
@override@JsonKey() final  int furnitureId;
/// Общие удобства (интернет, парковка, кондиционер)
 final  Set<int> _amenitiesIds;
/// Общие удобства (интернет, парковка, кондиционер)
@override@JsonKey() Set<int> get amenitiesIds {
  if (_amenitiesIds is EqualUnmodifiableSetView) return _amenitiesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_amenitiesIds);
}

/// Тип санузла (совмещенный, раздельный)
 final  Set<int> _bathroomIds;
/// Тип санузла (совмещенный, раздельный)
@override@JsonKey() Set<int> get bathroomIds {
  if (_bathroomIds is EqualUnmodifiableSetView) return _bathroomIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_bathroomIds);
}

/// Бытовая техника (холодильник, стиралка, плита)
 final  Set<int> _appliancesIds;
/// Бытовая техника (холодильник, стиралка, плита)
@override@JsonKey() Set<int> get appliancesIds {
  if (_appliancesIds is EqualUnmodifiableSetView) return _appliancesIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_appliancesIds);
}

/// Тип плиты (газовая, электрическая)
@override@JsonKey() final  int stoveId;
// --- Финансы и условия ---
/// ID валюты из справочника
@override@JsonKey() final  int currencyId;
/// Условия предоплаты (за 1 месяц, за 2 месяца)
@override@JsonKey() final  int prepaymentId;
/// Срок аренды (минимальный срок)
@override@JsonKey() final  int rentDurationId;
/// Дополнительные условия аренды
 final  Set<int> _rentConditionsIds;
/// Дополнительные условия аренды
@override@JsonKey() Set<int> get rentConditionsIds {
  if (_rentConditionsIds is EqualUnmodifiableSetView) return _rentConditionsIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_rentConditionsIds);
}

// --- Связь ---
/// Предпочтительный способ связи (звонок, сообщение)
@override@JsonKey() final  int contactMethodId;
// --- Числовые данные и текст ---
/// Выбранная валюта (объект Enum для UI)
@override@JsonKey() final  Currency selectedCurrency;
/// Стоимость аренды
@override@JsonKey() final  double cost;
/// Размер залога
@override@JsonKey() final  double deposit;
/// Площадь квартиры (кв. м.)
@override@JsonKey() final  double apartmentArea;
/// Текущий этаж
@override@JsonKey() final  int floor;
/// Всего этажей в здании
@override@JsonKey() final  int totalFloors;
/// Полный адрес строкой
@override@JsonKey() final  String address;
/// Выбранная из справочника улица (0 — не выбрана)
@override@JsonKey() final  int selectedStreetId;
/// Номер квартиры
@override@JsonKey() final  int apartmentNumber;
/// Заголовок объявления
@override@JsonKey() final  String title;
/// Подробное описание
@override@JsonKey() final  String description;
/// Основной номер телефона
@override@JsonKey() final  String mainPhone;
/// Дополнительный номер телефона
@override@JsonKey() final  String additionalNumber;

/// Create a copy of CreateAdFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdFormModelCopyWith<_CreateAdFormModel> get copyWith => __$CreateAdFormModelCopyWithImpl<_CreateAdFormModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdFormModel&&(identical(other.rentGoalId, rentGoalId) || other.rentGoalId == rentGoalId)&&(identical(other.rentPeriodId, rentPeriodId) || other.rentPeriodId == rentPeriodId)&&const DeepCollectionEquality().equals(other._whoCanRentIds, _whoCanRentIds)&&(identical(other.premisesTypeId, premisesTypeId) || other.premisesTypeId == premisesTypeId)&&(identical(other.propertyTypeId, propertyTypeId) || other.propertyTypeId == propertyTypeId)&&(identical(other.roomsCountId, roomsCountId) || other.roomsCountId == roomsCountId)&&(identical(other.layoutId, layoutId) || other.layoutId == layoutId)&&(identical(other.renovationId, renovationId) || other.renovationId == renovationId)&&(identical(other.elevatorsId, elevatorsId) || other.elevatorsId == elevatorsId)&&(identical(other.balconiesId, balconiesId) || other.balconiesId == balconiesId)&&(identical(other.furnitureId, furnitureId) || other.furnitureId == furnitureId)&&const DeepCollectionEquality().equals(other._amenitiesIds, _amenitiesIds)&&const DeepCollectionEquality().equals(other._bathroomIds, _bathroomIds)&&const DeepCollectionEquality().equals(other._appliancesIds, _appliancesIds)&&(identical(other.stoveId, stoveId) || other.stoveId == stoveId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.prepaymentId, prepaymentId) || other.prepaymentId == prepaymentId)&&(identical(other.rentDurationId, rentDurationId) || other.rentDurationId == rentDurationId)&&const DeepCollectionEquality().equals(other._rentConditionsIds, _rentConditionsIds)&&(identical(other.contactMethodId, contactMethodId) || other.contactMethodId == contactMethodId)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.selectedStreetId, selectedStreetId) || other.selectedStreetId == selectedStreetId)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mainPhone, mainPhone) || other.mainPhone == mainPhone)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,rentGoalId,rentPeriodId,const DeepCollectionEquality().hash(_whoCanRentIds),premisesTypeId,propertyTypeId,roomsCountId,layoutId,renovationId,elevatorsId,balconiesId,furnitureId,const DeepCollectionEquality().hash(_amenitiesIds),const DeepCollectionEquality().hash(_bathroomIds),const DeepCollectionEquality().hash(_appliancesIds),stoveId,currencyId,prepaymentId,rentDurationId,const DeepCollectionEquality().hash(_rentConditionsIds),contactMethodId,selectedCurrency,cost,deposit,apartmentArea,floor,totalFloors,address,selectedStreetId,apartmentNumber,title,description,mainPhone,additionalNumber]);

@override
String toString() {
  return 'CreateAdFormModel(rentGoalId: $rentGoalId, rentPeriodId: $rentPeriodId, whoCanRentIds: $whoCanRentIds, premisesTypeId: $premisesTypeId, propertyTypeId: $propertyTypeId, roomsCountId: $roomsCountId, layoutId: $layoutId, renovationId: $renovationId, elevatorsId: $elevatorsId, balconiesId: $balconiesId, furnitureId: $furnitureId, amenitiesIds: $amenitiesIds, bathroomIds: $bathroomIds, appliancesIds: $appliancesIds, stoveId: $stoveId, currencyId: $currencyId, prepaymentId: $prepaymentId, rentDurationId: $rentDurationId, rentConditionsIds: $rentConditionsIds, contactMethodId: $contactMethodId, selectedCurrency: $selectedCurrency, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, selectedStreetId: $selectedStreetId, apartmentNumber: $apartmentNumber, title: $title, description: $description, mainPhone: $mainPhone, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateAdFormModelCopyWith<$Res> implements $CreateAdFormModelCopyWith<$Res> {
  factory _$CreateAdFormModelCopyWith(_CreateAdFormModel value, $Res Function(_CreateAdFormModel) _then) = __$CreateAdFormModelCopyWithImpl;
@override @useResult
$Res call({
 int rentGoalId, int rentPeriodId, Set<int> whoCanRentIds, int premisesTypeId, int propertyTypeId, int roomsCountId, int layoutId, int renovationId, int elevatorsId, int balconiesId, int furnitureId, Set<int> amenitiesIds, Set<int> bathroomIds, Set<int> appliancesIds, int stoveId, int currencyId, int prepaymentId, int rentDurationId, Set<int> rentConditionsIds, int contactMethodId, Currency selectedCurrency, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int selectedStreetId, int apartmentNumber, String title, String description, String mainPhone, String additionalNumber
});




}
/// @nodoc
class __$CreateAdFormModelCopyWithImpl<$Res>
    implements _$CreateAdFormModelCopyWith<$Res> {
  __$CreateAdFormModelCopyWithImpl(this._self, this._then);

  final _CreateAdFormModel _self;
  final $Res Function(_CreateAdFormModel) _then;

/// Create a copy of CreateAdFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoalId = null,Object? rentPeriodId = null,Object? whoCanRentIds = null,Object? premisesTypeId = null,Object? propertyTypeId = null,Object? roomsCountId = null,Object? layoutId = null,Object? renovationId = null,Object? elevatorsId = null,Object? balconiesId = null,Object? furnitureId = null,Object? amenitiesIds = null,Object? bathroomIds = null,Object? appliancesIds = null,Object? stoveId = null,Object? currencyId = null,Object? prepaymentId = null,Object? rentDurationId = null,Object? rentConditionsIds = null,Object? contactMethodId = null,Object? selectedCurrency = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? selectedStreetId = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? mainPhone = null,Object? additionalNumber = null,}) {
  return _then(_CreateAdFormModel(
rentGoalId: null == rentGoalId ? _self.rentGoalId : rentGoalId // ignore: cast_nullable_to_non_nullable
as int,rentPeriodId: null == rentPeriodId ? _self.rentPeriodId : rentPeriodId // ignore: cast_nullable_to_non_nullable
as int,whoCanRentIds: null == whoCanRentIds ? _self._whoCanRentIds : whoCanRentIds // ignore: cast_nullable_to_non_nullable
as Set<int>,premisesTypeId: null == premisesTypeId ? _self.premisesTypeId : premisesTypeId // ignore: cast_nullable_to_non_nullable
as int,propertyTypeId: null == propertyTypeId ? _self.propertyTypeId : propertyTypeId // ignore: cast_nullable_to_non_nullable
as int,roomsCountId: null == roomsCountId ? _self.roomsCountId : roomsCountId // ignore: cast_nullable_to_non_nullable
as int,layoutId: null == layoutId ? _self.layoutId : layoutId // ignore: cast_nullable_to_non_nullable
as int,renovationId: null == renovationId ? _self.renovationId : renovationId // ignore: cast_nullable_to_non_nullable
as int,elevatorsId: null == elevatorsId ? _self.elevatorsId : elevatorsId // ignore: cast_nullable_to_non_nullable
as int,balconiesId: null == balconiesId ? _self.balconiesId : balconiesId // ignore: cast_nullable_to_non_nullable
as int,furnitureId: null == furnitureId ? _self.furnitureId : furnitureId // ignore: cast_nullable_to_non_nullable
as int,amenitiesIds: null == amenitiesIds ? _self._amenitiesIds : amenitiesIds // ignore: cast_nullable_to_non_nullable
as Set<int>,bathroomIds: null == bathroomIds ? _self._bathroomIds : bathroomIds // ignore: cast_nullable_to_non_nullable
as Set<int>,appliancesIds: null == appliancesIds ? _self._appliancesIds : appliancesIds // ignore: cast_nullable_to_non_nullable
as Set<int>,stoveId: null == stoveId ? _self.stoveId : stoveId // ignore: cast_nullable_to_non_nullable
as int,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,prepaymentId: null == prepaymentId ? _self.prepaymentId : prepaymentId // ignore: cast_nullable_to_non_nullable
as int,rentDurationId: null == rentDurationId ? _self.rentDurationId : rentDurationId // ignore: cast_nullable_to_non_nullable
as int,rentConditionsIds: null == rentConditionsIds ? _self._rentConditionsIds : rentConditionsIds // ignore: cast_nullable_to_non_nullable
as Set<int>,contactMethodId: null == contactMethodId ? _self.contactMethodId : contactMethodId // ignore: cast_nullable_to_non_nullable
as int,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,selectedStreetId: null == selectedStreetId ? _self.selectedStreetId : selectedStreetId // ignore: cast_nullable_to_non_nullable
as int,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mainPhone: null == mainPhone ? _self.mainPhone : mainPhone // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
