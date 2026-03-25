// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdState {

 List<TagGroupModel> get rentTypeGroups; TagGroupModel get premisesTypeGroup; TagGroupModel get propertyTypeGroup; List<TagGroupModel> get apartmentPropertiesGroups; List<TagGroupModel> get featuresGroups; List<TagGroupModel> get thingsGroups; List<TagGroupModel> get dealTermsGroups; TagGroupModel get contactInfoGroup;// Выбранные значения (Radio - String, Multi - List<String>)
 String get goal;// Цель (Съем/Обмен)
 String get term;// Срок (Долгосрочная/Посуточно)
 List<String> get whoReadyRent;// Кому сдавать (Multi)
 String get propertyType;// Вид недвижимости (Radio)
 String get premisesType;// Тип (Жилое/Коммерческое)
 String get roomCount;// Кол-во комнат (Radio)
 String get layout;// Планировка (Radio)
 String get renovation;// Ремонт (Radio)
 String get elevators;// Лифты (Radio)
 String get balconies;// Балконы (Radio)
 String get furniture;// Мебель (Radio)
 List<String> get amenities;// Удобства (Multi)
 List<String> get bathroom;// Ванная (Radio)
 List<String> get appliances;// Техника (Multi)
 String get stove;// Плита (Radio)
 Currency get selectedCurrency; String get prepayment;// Предоплата (Radio)
 String get rentalPeriod;// Срок аренды (Radio)
 List<String> get rentalConditions;// Условия (дети/животные) (Multi)
 String get contactMethod;// Способ связи (Radio)
// Остальные поля
 double get cost; double get deposit; double get apartmentArea; int get floor; int get totalFloors; String get address; int get apartmentNumber; String get title; String get description; String get additionalNumber;
/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdStateCopyWith<CreateAdState> get copyWith => _$CreateAdStateCopyWithImpl<CreateAdState>(this as CreateAdState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdState&&const DeepCollectionEquality().equals(other.rentTypeGroups, rentTypeGroups)&&(identical(other.premisesTypeGroup, premisesTypeGroup) || other.premisesTypeGroup == premisesTypeGroup)&&(identical(other.propertyTypeGroup, propertyTypeGroup) || other.propertyTypeGroup == propertyTypeGroup)&&const DeepCollectionEquality().equals(other.apartmentPropertiesGroups, apartmentPropertiesGroups)&&const DeepCollectionEquality().equals(other.featuresGroups, featuresGroups)&&const DeepCollectionEquality().equals(other.thingsGroups, thingsGroups)&&const DeepCollectionEquality().equals(other.dealTermsGroups, dealTermsGroups)&&(identical(other.contactInfoGroup, contactInfoGroup) || other.contactInfoGroup == contactInfoGroup)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.term, term) || other.term == term)&&const DeepCollectionEquality().equals(other.whoReadyRent, whoReadyRent)&&(identical(other.propertyType, propertyType) || other.propertyType == propertyType)&&(identical(other.premisesType, premisesType) || other.premisesType == premisesType)&&(identical(other.roomCount, roomCount) || other.roomCount == roomCount)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevators, elevators) || other.elevators == elevators)&&(identical(other.balconies, balconies) || other.balconies == balconies)&&(identical(other.furniture, furniture) || other.furniture == furniture)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.bathroom, bathroom)&&const DeepCollectionEquality().equals(other.appliances, appliances)&&(identical(other.stove, stove) || other.stove == stove)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.prepayment, prepayment) || other.prepayment == prepayment)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&const DeepCollectionEquality().equals(other.rentalConditions, rentalConditions)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(rentTypeGroups),premisesTypeGroup,propertyTypeGroup,const DeepCollectionEquality().hash(apartmentPropertiesGroups),const DeepCollectionEquality().hash(featuresGroups),const DeepCollectionEquality().hash(thingsGroups),const DeepCollectionEquality().hash(dealTermsGroups),contactInfoGroup,goal,term,const DeepCollectionEquality().hash(whoReadyRent),propertyType,premisesType,roomCount,layout,renovation,elevators,balconies,furniture,const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(bathroom),const DeepCollectionEquality().hash(appliances),stove,selectedCurrency,prepayment,rentalPeriod,const DeepCollectionEquality().hash(rentalConditions),contactMethod,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,additionalNumber]);

@override
String toString() {
  return 'CreateAdState(rentTypeGroups: $rentTypeGroups, premisesTypeGroup: $premisesTypeGroup, propertyTypeGroup: $propertyTypeGroup, apartmentPropertiesGroups: $apartmentPropertiesGroups, featuresGroups: $featuresGroups, thingsGroups: $thingsGroups, dealTermsGroups: $dealTermsGroups, contactInfoGroup: $contactInfoGroup, goal: $goal, term: $term, whoReadyRent: $whoReadyRent, propertyType: $propertyType, premisesType: $premisesType, roomCount: $roomCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, selectedCurrency: $selectedCurrency, prepayment: $prepayment, rentalPeriod: $rentalPeriod, rentalConditions: $rentalConditions, contactMethod: $contactMethod, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class $CreateAdStateCopyWith<$Res>  {
  factory $CreateAdStateCopyWith(CreateAdState value, $Res Function(CreateAdState) _then) = _$CreateAdStateCopyWithImpl;
@useResult
$Res call({
 List<TagGroupModel> rentTypeGroups, TagGroupModel premisesTypeGroup, TagGroupModel propertyTypeGroup, List<TagGroupModel> apartmentPropertiesGroups, List<TagGroupModel> featuresGroups, List<TagGroupModel> thingsGroups, List<TagGroupModel> dealTermsGroups, TagGroupModel contactInfoGroup, String goal, String term, List<String> whoReadyRent, String propertyType, String premisesType, String roomCount, String layout, String renovation, String elevators, String balconies, String furniture, List<String> amenities, List<String> bathroom, List<String> appliances, String stove, Currency selectedCurrency, String prepayment, String rentalPeriod, List<String> rentalConditions, String contactMethod, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String additionalNumber
});


$TagGroupModelCopyWith<$Res> get premisesTypeGroup;$TagGroupModelCopyWith<$Res> get propertyTypeGroup;$TagGroupModelCopyWith<$Res> get contactInfoGroup;

}
/// @nodoc
class _$CreateAdStateCopyWithImpl<$Res>
    implements $CreateAdStateCopyWith<$Res> {
  _$CreateAdStateCopyWithImpl(this._self, this._then);

  final CreateAdState _self;
  final $Res Function(CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentTypeGroups = null,Object? premisesTypeGroup = null,Object? propertyTypeGroup = null,Object? apartmentPropertiesGroups = null,Object? featuresGroups = null,Object? thingsGroups = null,Object? dealTermsGroups = null,Object? contactInfoGroup = null,Object? goal = null,Object? term = null,Object? whoReadyRent = null,Object? propertyType = null,Object? premisesType = null,Object? roomCount = null,Object? layout = null,Object? renovation = null,Object? elevators = null,Object? balconies = null,Object? furniture = null,Object? amenities = null,Object? bathroom = null,Object? appliances = null,Object? stove = null,Object? selectedCurrency = null,Object? prepayment = null,Object? rentalPeriod = null,Object? rentalConditions = null,Object? contactMethod = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? additionalNumber = null,}) {
  return _then(_self.copyWith(
rentTypeGroups: null == rentTypeGroups ? _self.rentTypeGroups : rentTypeGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,premisesTypeGroup: null == premisesTypeGroup ? _self.premisesTypeGroup : premisesTypeGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,propertyTypeGroup: null == propertyTypeGroup ? _self.propertyTypeGroup : propertyTypeGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,apartmentPropertiesGroups: null == apartmentPropertiesGroups ? _self.apartmentPropertiesGroups : apartmentPropertiesGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresGroups: null == featuresGroups ? _self.featuresGroups : featuresGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,thingsGroups: null == thingsGroups ? _self.thingsGroups : thingsGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,dealTermsGroups: null == dealTermsGroups ? _self.dealTermsGroups : dealTermsGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,contactInfoGroup: null == contactInfoGroup ? _self.contactInfoGroup : contactInfoGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,whoReadyRent: null == whoReadyRent ? _self.whoReadyRent : whoReadyRent // ignore: cast_nullable_to_non_nullable
as List<String>,propertyType: null == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as String,premisesType: null == premisesType ? _self.premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as String,roomCount: null == roomCount ? _self.roomCount : roomCount // ignore: cast_nullable_to_non_nullable
as String,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String,renovation: null == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as String,elevators: null == elevators ? _self.elevators : elevators // ignore: cast_nullable_to_non_nullable
as String,balconies: null == balconies ? _self.balconies : balconies // ignore: cast_nullable_to_non_nullable
as String,furniture: null == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as String,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,bathroom: null == bathroom ? _self.bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<String>,appliances: null == appliances ? _self.appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<String>,stove: null == stove ? _self.stove : stove // ignore: cast_nullable_to_non_nullable
as String,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,prepayment: null == prepayment ? _self.prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as String,rentalPeriod: null == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as String,rentalConditions: null == rentalConditions ? _self.rentalConditions : rentalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get premisesTypeGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.premisesTypeGroup, (value) {
    return _then(_self.copyWith(premisesTypeGroup: value));
  });
}/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get propertyTypeGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.propertyTypeGroup, (value) {
    return _then(_self.copyWith(propertyTypeGroup: value));
  });
}/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get contactInfoGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.contactInfoGroup, (value) {
    return _then(_self.copyWith(contactInfoGroup: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateAdState].
extension CreateAdStatePatterns on CreateAdState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TagGroupModel> rentTypeGroups,  TagGroupModel premisesTypeGroup,  TagGroupModel propertyTypeGroup,  List<TagGroupModel> apartmentPropertiesGroups,  List<TagGroupModel> featuresGroups,  List<TagGroupModel> thingsGroups,  List<TagGroupModel> dealTermsGroups,  TagGroupModel contactInfoGroup,  String goal,  String term,  List<String> whoReadyRent,  String propertyType,  String premisesType,  String roomCount,  String layout,  String renovation,  String elevators,  String balconies,  String furniture,  List<String> amenities,  List<String> bathroom,  List<String> appliances,  String stove,  Currency selectedCurrency,  String prepayment,  String rentalPeriod,  List<String> rentalConditions,  String contactMethod,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String additionalNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.rentTypeGroups,_that.premisesTypeGroup,_that.propertyTypeGroup,_that.apartmentPropertiesGroups,_that.featuresGroups,_that.thingsGroups,_that.dealTermsGroups,_that.contactInfoGroup,_that.goal,_that.term,_that.whoReadyRent,_that.propertyType,_that.premisesType,_that.roomCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.selectedCurrency,_that.prepayment,_that.rentalPeriod,_that.rentalConditions,_that.contactMethod,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.additionalNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TagGroupModel> rentTypeGroups,  TagGroupModel premisesTypeGroup,  TagGroupModel propertyTypeGroup,  List<TagGroupModel> apartmentPropertiesGroups,  List<TagGroupModel> featuresGroups,  List<TagGroupModel> thingsGroups,  List<TagGroupModel> dealTermsGroups,  TagGroupModel contactInfoGroup,  String goal,  String term,  List<String> whoReadyRent,  String propertyType,  String premisesType,  String roomCount,  String layout,  String renovation,  String elevators,  String balconies,  String furniture,  List<String> amenities,  List<String> bathroom,  List<String> appliances,  String stove,  Currency selectedCurrency,  String prepayment,  String rentalPeriod,  List<String> rentalConditions,  String contactMethod,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String additionalNumber)  $default,) {final _that = this;
switch (_that) {
case _CreateAdState():
return $default(_that.rentTypeGroups,_that.premisesTypeGroup,_that.propertyTypeGroup,_that.apartmentPropertiesGroups,_that.featuresGroups,_that.thingsGroups,_that.dealTermsGroups,_that.contactInfoGroup,_that.goal,_that.term,_that.whoReadyRent,_that.propertyType,_that.premisesType,_that.roomCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.selectedCurrency,_that.prepayment,_that.rentalPeriod,_that.rentalConditions,_that.contactMethod,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.additionalNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TagGroupModel> rentTypeGroups,  TagGroupModel premisesTypeGroup,  TagGroupModel propertyTypeGroup,  List<TagGroupModel> apartmentPropertiesGroups,  List<TagGroupModel> featuresGroups,  List<TagGroupModel> thingsGroups,  List<TagGroupModel> dealTermsGroups,  TagGroupModel contactInfoGroup,  String goal,  String term,  List<String> whoReadyRent,  String propertyType,  String premisesType,  String roomCount,  String layout,  String renovation,  String elevators,  String balconies,  String furniture,  List<String> amenities,  List<String> bathroom,  List<String> appliances,  String stove,  Currency selectedCurrency,  String prepayment,  String rentalPeriod,  List<String> rentalConditions,  String contactMethod,  double cost,  double deposit,  double apartmentArea,  int floor,  int totalFloors,  String address,  int apartmentNumber,  String title,  String description,  String additionalNumber)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdState() when $default != null:
return $default(_that.rentTypeGroups,_that.premisesTypeGroup,_that.propertyTypeGroup,_that.apartmentPropertiesGroups,_that.featuresGroups,_that.thingsGroups,_that.dealTermsGroups,_that.contactInfoGroup,_that.goal,_that.term,_that.whoReadyRent,_that.propertyType,_that.premisesType,_that.roomCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.selectedCurrency,_that.prepayment,_that.rentalPeriod,_that.rentalConditions,_that.contactMethod,_that.cost,_that.deposit,_that.apartmentArea,_that.floor,_that.totalFloors,_that.address,_that.apartmentNumber,_that.title,_that.description,_that.additionalNumber);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAdState implements CreateAdState {
  const _CreateAdState({required final  List<TagGroupModel> rentTypeGroups, required this.premisesTypeGroup, required this.propertyTypeGroup, required final  List<TagGroupModel> apartmentPropertiesGroups, required final  List<TagGroupModel> featuresGroups, required final  List<TagGroupModel> thingsGroups, required final  List<TagGroupModel> dealTermsGroups, required this.contactInfoGroup, this.goal = "", this.term = "", final  List<String> whoReadyRent = const [], this.propertyType = "", this.premisesType = "", this.roomCount = "", this.layout = "", this.renovation = "", this.elevators = "", this.balconies = "", this.furniture = "", final  List<String> amenities = const [], final  List<String> bathroom = const [], final  List<String> appliances = const [], this.stove = "", this.selectedCurrency = Currency.rub, this.prepayment = "", this.rentalPeriod = "", final  List<String> rentalConditions = const [], this.contactMethod = "", this.cost = 0, this.deposit = 0, this.apartmentArea = 0, this.floor = 0, this.totalFloors = 0, this.address = "", this.apartmentNumber = 0, this.title = "", this.description = "", this.additionalNumber = ""}): _rentTypeGroups = rentTypeGroups,_apartmentPropertiesGroups = apartmentPropertiesGroups,_featuresGroups = featuresGroups,_thingsGroups = thingsGroups,_dealTermsGroups = dealTermsGroups,_whoReadyRent = whoReadyRent,_amenities = amenities,_bathroom = bathroom,_appliances = appliances,_rentalConditions = rentalConditions;
  

 final  List<TagGroupModel> _rentTypeGroups;
@override List<TagGroupModel> get rentTypeGroups {
  if (_rentTypeGroups is EqualUnmodifiableListView) return _rentTypeGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentTypeGroups);
}

@override final  TagGroupModel premisesTypeGroup;
@override final  TagGroupModel propertyTypeGroup;
 final  List<TagGroupModel> _apartmentPropertiesGroups;
@override List<TagGroupModel> get apartmentPropertiesGroups {
  if (_apartmentPropertiesGroups is EqualUnmodifiableListView) return _apartmentPropertiesGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apartmentPropertiesGroups);
}

 final  List<TagGroupModel> _featuresGroups;
@override List<TagGroupModel> get featuresGroups {
  if (_featuresGroups is EqualUnmodifiableListView) return _featuresGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuresGroups);
}

 final  List<TagGroupModel> _thingsGroups;
@override List<TagGroupModel> get thingsGroups {
  if (_thingsGroups is EqualUnmodifiableListView) return _thingsGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_thingsGroups);
}

 final  List<TagGroupModel> _dealTermsGroups;
@override List<TagGroupModel> get dealTermsGroups {
  if (_dealTermsGroups is EqualUnmodifiableListView) return _dealTermsGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dealTermsGroups);
}

@override final  TagGroupModel contactInfoGroup;
// Выбранные значения (Radio - String, Multi - List<String>)
@override@JsonKey() final  String goal;
// Цель (Съем/Обмен)
@override@JsonKey() final  String term;
// Срок (Долгосрочная/Посуточно)
 final  List<String> _whoReadyRent;
// Срок (Долгосрочная/Посуточно)
@override@JsonKey() List<String> get whoReadyRent {
  if (_whoReadyRent is EqualUnmodifiableListView) return _whoReadyRent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whoReadyRent);
}

// Кому сдавать (Multi)
@override@JsonKey() final  String propertyType;
// Вид недвижимости (Radio)
@override@JsonKey() final  String premisesType;
// Тип (Жилое/Коммерческое)
@override@JsonKey() final  String roomCount;
// Кол-во комнат (Radio)
@override@JsonKey() final  String layout;
// Планировка (Radio)
@override@JsonKey() final  String renovation;
// Ремонт (Radio)
@override@JsonKey() final  String elevators;
// Лифты (Radio)
@override@JsonKey() final  String balconies;
// Балконы (Radio)
@override@JsonKey() final  String furniture;
// Мебель (Radio)
 final  List<String> _amenities;
// Мебель (Radio)
@override@JsonKey() List<String> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}

// Удобства (Multi)
 final  List<String> _bathroom;
// Удобства (Multi)
@override@JsonKey() List<String> get bathroom {
  if (_bathroom is EqualUnmodifiableListView) return _bathroom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bathroom);
}

// Ванная (Radio)
 final  List<String> _appliances;
// Ванная (Radio)
@override@JsonKey() List<String> get appliances {
  if (_appliances is EqualUnmodifiableListView) return _appliances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliances);
}

// Техника (Multi)
@override@JsonKey() final  String stove;
// Плита (Radio)
@override@JsonKey() final  Currency selectedCurrency;
@override@JsonKey() final  String prepayment;
// Предоплата (Radio)
@override@JsonKey() final  String rentalPeriod;
// Срок аренды (Radio)
 final  List<String> _rentalConditions;
// Срок аренды (Radio)
@override@JsonKey() List<String> get rentalConditions {
  if (_rentalConditions is EqualUnmodifiableListView) return _rentalConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentalConditions);
}

// Условия (дети/животные) (Multi)
@override@JsonKey() final  String contactMethod;
// Способ связи (Radio)
// Остальные поля
@override@JsonKey() final  double cost;
@override@JsonKey() final  double deposit;
@override@JsonKey() final  double apartmentArea;
@override@JsonKey() final  int floor;
@override@JsonKey() final  int totalFloors;
@override@JsonKey() final  String address;
@override@JsonKey() final  int apartmentNumber;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String additionalNumber;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdStateCopyWith<_CreateAdState> get copyWith => __$CreateAdStateCopyWithImpl<_CreateAdState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdState&&const DeepCollectionEquality().equals(other._rentTypeGroups, _rentTypeGroups)&&(identical(other.premisesTypeGroup, premisesTypeGroup) || other.premisesTypeGroup == premisesTypeGroup)&&(identical(other.propertyTypeGroup, propertyTypeGroup) || other.propertyTypeGroup == propertyTypeGroup)&&const DeepCollectionEquality().equals(other._apartmentPropertiesGroups, _apartmentPropertiesGroups)&&const DeepCollectionEquality().equals(other._featuresGroups, _featuresGroups)&&const DeepCollectionEquality().equals(other._thingsGroups, _thingsGroups)&&const DeepCollectionEquality().equals(other._dealTermsGroups, _dealTermsGroups)&&(identical(other.contactInfoGroup, contactInfoGroup) || other.contactInfoGroup == contactInfoGroup)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.term, term) || other.term == term)&&const DeepCollectionEquality().equals(other._whoReadyRent, _whoReadyRent)&&(identical(other.propertyType, propertyType) || other.propertyType == propertyType)&&(identical(other.premisesType, premisesType) || other.premisesType == premisesType)&&(identical(other.roomCount, roomCount) || other.roomCount == roomCount)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.renovation, renovation) || other.renovation == renovation)&&(identical(other.elevators, elevators) || other.elevators == elevators)&&(identical(other.balconies, balconies) || other.balconies == balconies)&&(identical(other.furniture, furniture) || other.furniture == furniture)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._bathroom, _bathroom)&&const DeepCollectionEquality().equals(other._appliances, _appliances)&&(identical(other.stove, stove) || other.stove == stove)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.prepayment, prepayment) || other.prepayment == prepayment)&&(identical(other.rentalPeriod, rentalPeriod) || other.rentalPeriod == rentalPeriod)&&const DeepCollectionEquality().equals(other._rentalConditions, _rentalConditions)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.apartmentArea, apartmentArea) || other.apartmentArea == apartmentArea)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.totalFloors, totalFloors) || other.totalFloors == totalFloors)&&(identical(other.address, address) || other.address == address)&&(identical(other.apartmentNumber, apartmentNumber) || other.apartmentNumber == apartmentNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.additionalNumber, additionalNumber) || other.additionalNumber == additionalNumber));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_rentTypeGroups),premisesTypeGroup,propertyTypeGroup,const DeepCollectionEquality().hash(_apartmentPropertiesGroups),const DeepCollectionEquality().hash(_featuresGroups),const DeepCollectionEquality().hash(_thingsGroups),const DeepCollectionEquality().hash(_dealTermsGroups),contactInfoGroup,goal,term,const DeepCollectionEquality().hash(_whoReadyRent),propertyType,premisesType,roomCount,layout,renovation,elevators,balconies,furniture,const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_bathroom),const DeepCollectionEquality().hash(_appliances),stove,selectedCurrency,prepayment,rentalPeriod,const DeepCollectionEquality().hash(_rentalConditions),contactMethod,cost,deposit,apartmentArea,floor,totalFloors,address,apartmentNumber,title,description,additionalNumber]);

@override
String toString() {
  return 'CreateAdState(rentTypeGroups: $rentTypeGroups, premisesTypeGroup: $premisesTypeGroup, propertyTypeGroup: $propertyTypeGroup, apartmentPropertiesGroups: $apartmentPropertiesGroups, featuresGroups: $featuresGroups, thingsGroups: $thingsGroups, dealTermsGroups: $dealTermsGroups, contactInfoGroup: $contactInfoGroup, goal: $goal, term: $term, whoReadyRent: $whoReadyRent, propertyType: $propertyType, premisesType: $premisesType, roomCount: $roomCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, selectedCurrency: $selectedCurrency, prepayment: $prepayment, rentalPeriod: $rentalPeriod, rentalConditions: $rentalConditions, contactMethod: $contactMethod, cost: $cost, deposit: $deposit, apartmentArea: $apartmentArea, floor: $floor, totalFloors: $totalFloors, address: $address, apartmentNumber: $apartmentNumber, title: $title, description: $description, additionalNumber: $additionalNumber)';
}


}

/// @nodoc
abstract mixin class _$CreateAdStateCopyWith<$Res> implements $CreateAdStateCopyWith<$Res> {
  factory _$CreateAdStateCopyWith(_CreateAdState value, $Res Function(_CreateAdState) _then) = __$CreateAdStateCopyWithImpl;
@override @useResult
$Res call({
 List<TagGroupModel> rentTypeGroups, TagGroupModel premisesTypeGroup, TagGroupModel propertyTypeGroup, List<TagGroupModel> apartmentPropertiesGroups, List<TagGroupModel> featuresGroups, List<TagGroupModel> thingsGroups, List<TagGroupModel> dealTermsGroups, TagGroupModel contactInfoGroup, String goal, String term, List<String> whoReadyRent, String propertyType, String premisesType, String roomCount, String layout, String renovation, String elevators, String balconies, String furniture, List<String> amenities, List<String> bathroom, List<String> appliances, String stove, Currency selectedCurrency, String prepayment, String rentalPeriod, List<String> rentalConditions, String contactMethod, double cost, double deposit, double apartmentArea, int floor, int totalFloors, String address, int apartmentNumber, String title, String description, String additionalNumber
});


@override $TagGroupModelCopyWith<$Res> get premisesTypeGroup;@override $TagGroupModelCopyWith<$Res> get propertyTypeGroup;@override $TagGroupModelCopyWith<$Res> get contactInfoGroup;

}
/// @nodoc
class __$CreateAdStateCopyWithImpl<$Res>
    implements _$CreateAdStateCopyWith<$Res> {
  __$CreateAdStateCopyWithImpl(this._self, this._then);

  final _CreateAdState _self;
  final $Res Function(_CreateAdState) _then;

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentTypeGroups = null,Object? premisesTypeGroup = null,Object? propertyTypeGroup = null,Object? apartmentPropertiesGroups = null,Object? featuresGroups = null,Object? thingsGroups = null,Object? dealTermsGroups = null,Object? contactInfoGroup = null,Object? goal = null,Object? term = null,Object? whoReadyRent = null,Object? propertyType = null,Object? premisesType = null,Object? roomCount = null,Object? layout = null,Object? renovation = null,Object? elevators = null,Object? balconies = null,Object? furniture = null,Object? amenities = null,Object? bathroom = null,Object? appliances = null,Object? stove = null,Object? selectedCurrency = null,Object? prepayment = null,Object? rentalPeriod = null,Object? rentalConditions = null,Object? contactMethod = null,Object? cost = null,Object? deposit = null,Object? apartmentArea = null,Object? floor = null,Object? totalFloors = null,Object? address = null,Object? apartmentNumber = null,Object? title = null,Object? description = null,Object? additionalNumber = null,}) {
  return _then(_CreateAdState(
rentTypeGroups: null == rentTypeGroups ? _self._rentTypeGroups : rentTypeGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,premisesTypeGroup: null == premisesTypeGroup ? _self.premisesTypeGroup : premisesTypeGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,propertyTypeGroup: null == propertyTypeGroup ? _self.propertyTypeGroup : propertyTypeGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,apartmentPropertiesGroups: null == apartmentPropertiesGroups ? _self._apartmentPropertiesGroups : apartmentPropertiesGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,featuresGroups: null == featuresGroups ? _self._featuresGroups : featuresGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,thingsGroups: null == thingsGroups ? _self._thingsGroups : thingsGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,dealTermsGroups: null == dealTermsGroups ? _self._dealTermsGroups : dealTermsGroups // ignore: cast_nullable_to_non_nullable
as List<TagGroupModel>,contactInfoGroup: null == contactInfoGroup ? _self.contactInfoGroup : contactInfoGroup // ignore: cast_nullable_to_non_nullable
as TagGroupModel,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as String,term: null == term ? _self.term : term // ignore: cast_nullable_to_non_nullable
as String,whoReadyRent: null == whoReadyRent ? _self._whoReadyRent : whoReadyRent // ignore: cast_nullable_to_non_nullable
as List<String>,propertyType: null == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as String,premisesType: null == premisesType ? _self.premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as String,roomCount: null == roomCount ? _self.roomCount : roomCount // ignore: cast_nullable_to_non_nullable
as String,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String,renovation: null == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as String,elevators: null == elevators ? _self.elevators : elevators // ignore: cast_nullable_to_non_nullable
as String,balconies: null == balconies ? _self.balconies : balconies // ignore: cast_nullable_to_non_nullable
as String,furniture: null == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as String,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,bathroom: null == bathroom ? _self._bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<String>,appliances: null == appliances ? _self._appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<String>,stove: null == stove ? _self.stove : stove // ignore: cast_nullable_to_non_nullable
as String,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,prepayment: null == prepayment ? _self.prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as String,rentalPeriod: null == rentalPeriod ? _self.rentalPeriod : rentalPeriod // ignore: cast_nullable_to_non_nullable
as String,rentalConditions: null == rentalConditions ? _self._rentalConditions : rentalConditions // ignore: cast_nullable_to_non_nullable
as List<String>,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,deposit: null == deposit ? _self.deposit : deposit // ignore: cast_nullable_to_non_nullable
as double,apartmentArea: null == apartmentArea ? _self.apartmentArea : apartmentArea // ignore: cast_nullable_to_non_nullable
as double,floor: null == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as int,totalFloors: null == totalFloors ? _self.totalFloors : totalFloors // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,apartmentNumber: null == apartmentNumber ? _self.apartmentNumber : apartmentNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,additionalNumber: null == additionalNumber ? _self.additionalNumber : additionalNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get premisesTypeGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.premisesTypeGroup, (value) {
    return _then(_self.copyWith(premisesTypeGroup: value));
  });
}/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get propertyTypeGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.propertyTypeGroup, (value) {
    return _then(_self.copyWith(propertyTypeGroup: value));
  });
}/// Create a copy of CreateAdState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TagGroupModelCopyWith<$Res> get contactInfoGroup {
  
  return $TagGroupModelCopyWith<$Res>(_self.contactInfoGroup, (value) {
    return _then(_self.copyWith(contactInfoGroup: value));
  });
}
}

// dart format on
