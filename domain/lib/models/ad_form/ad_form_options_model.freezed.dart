// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_form_options_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdFormOptionsModel {

// Цели и типы аренды
 List<OptionModel> get rentGoal; List<OptionModel> get rentPeriod; List<OptionModel> get whoCanRent;// Типы недвижимости
 List<OptionModel> get premisesType; List<OptionModel> get propertyType;// Характеристики квартиры
 List<OptionModel> get roomsCount; List<OptionModel> get layout;// Особенности (ремонт, лифты, балконы)
 List<OptionModel> get renovation; List<OptionModel> get elevators; List<OptionModel> get balconies;// Оснащение (мебель, удобства, техника)
 List<OptionModel> get furniture; List<OptionModel> get amenities; List<OptionModel> get bathroom; List<OptionModel> get appliances; List<OptionModel> get stove;// Условия сделки
 List<OptionModel> get currency; List<OptionModel> get prepayment; List<OptionModel> get rentDuration; List<OptionModel> get rentConditions;// Контакты
 List<OptionModel> get contactMethod;
/// Create a copy of AdFormOptionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdFormOptionsModelCopyWith<AdFormOptionsModel> get copyWith => _$AdFormOptionsModelCopyWithImpl<AdFormOptionsModel>(this as AdFormOptionsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdFormOptionsModel&&const DeepCollectionEquality().equals(other.rentGoal, rentGoal)&&const DeepCollectionEquality().equals(other.rentPeriod, rentPeriod)&&const DeepCollectionEquality().equals(other.whoCanRent, whoCanRent)&&const DeepCollectionEquality().equals(other.premisesType, premisesType)&&const DeepCollectionEquality().equals(other.propertyType, propertyType)&&const DeepCollectionEquality().equals(other.roomsCount, roomsCount)&&const DeepCollectionEquality().equals(other.layout, layout)&&const DeepCollectionEquality().equals(other.renovation, renovation)&&const DeepCollectionEquality().equals(other.elevators, elevators)&&const DeepCollectionEquality().equals(other.balconies, balconies)&&const DeepCollectionEquality().equals(other.furniture, furniture)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.bathroom, bathroom)&&const DeepCollectionEquality().equals(other.appliances, appliances)&&const DeepCollectionEquality().equals(other.stove, stove)&&const DeepCollectionEquality().equals(other.currency, currency)&&const DeepCollectionEquality().equals(other.prepayment, prepayment)&&const DeepCollectionEquality().equals(other.rentDuration, rentDuration)&&const DeepCollectionEquality().equals(other.rentConditions, rentConditions)&&const DeepCollectionEquality().equals(other.contactMethod, contactMethod));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(rentGoal),const DeepCollectionEquality().hash(rentPeriod),const DeepCollectionEquality().hash(whoCanRent),const DeepCollectionEquality().hash(premisesType),const DeepCollectionEquality().hash(propertyType),const DeepCollectionEquality().hash(roomsCount),const DeepCollectionEquality().hash(layout),const DeepCollectionEquality().hash(renovation),const DeepCollectionEquality().hash(elevators),const DeepCollectionEquality().hash(balconies),const DeepCollectionEquality().hash(furniture),const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(bathroom),const DeepCollectionEquality().hash(appliances),const DeepCollectionEquality().hash(stove),const DeepCollectionEquality().hash(currency),const DeepCollectionEquality().hash(prepayment),const DeepCollectionEquality().hash(rentDuration),const DeepCollectionEquality().hash(rentConditions),const DeepCollectionEquality().hash(contactMethod)]);

@override
String toString() {
  return 'AdFormOptionsModel(rentGoal: $rentGoal, rentPeriod: $rentPeriod, whoCanRent: $whoCanRent, premisesType: $premisesType, propertyType: $propertyType, roomsCount: $roomsCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, currency: $currency, prepayment: $prepayment, rentDuration: $rentDuration, rentConditions: $rentConditions, contactMethod: $contactMethod)';
}


}

/// @nodoc
abstract mixin class $AdFormOptionsModelCopyWith<$Res>  {
  factory $AdFormOptionsModelCopyWith(AdFormOptionsModel value, $Res Function(AdFormOptionsModel) _then) = _$AdFormOptionsModelCopyWithImpl;
@useResult
$Res call({
 List<OptionModel> rentGoal, List<OptionModel> rentPeriod, List<OptionModel> whoCanRent, List<OptionModel> premisesType, List<OptionModel> propertyType, List<OptionModel> roomsCount, List<OptionModel> layout, List<OptionModel> renovation, List<OptionModel> elevators, List<OptionModel> balconies, List<OptionModel> furniture, List<OptionModel> amenities, List<OptionModel> bathroom, List<OptionModel> appliances, List<OptionModel> stove, List<OptionModel> currency, List<OptionModel> prepayment, List<OptionModel> rentDuration, List<OptionModel> rentConditions, List<OptionModel> contactMethod
});




}
/// @nodoc
class _$AdFormOptionsModelCopyWithImpl<$Res>
    implements $AdFormOptionsModelCopyWith<$Res> {
  _$AdFormOptionsModelCopyWithImpl(this._self, this._then);

  final AdFormOptionsModel _self;
  final $Res Function(AdFormOptionsModel) _then;

/// Create a copy of AdFormOptionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoal = null,Object? rentPeriod = null,Object? whoCanRent = null,Object? premisesType = null,Object? propertyType = null,Object? roomsCount = null,Object? layout = null,Object? renovation = null,Object? elevators = null,Object? balconies = null,Object? furniture = null,Object? amenities = null,Object? bathroom = null,Object? appliances = null,Object? stove = null,Object? currency = null,Object? prepayment = null,Object? rentDuration = null,Object? rentConditions = null,Object? contactMethod = null,}) {
  return _then(_self.copyWith(
rentGoal: null == rentGoal ? _self.rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentPeriod: null == rentPeriod ? _self.rentPeriod : rentPeriod // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,whoCanRent: null == whoCanRent ? _self.whoCanRent : whoCanRent // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,premisesType: null == premisesType ? _self.premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyType: null == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCount: null == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,renovation: null == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,elevators: null == elevators ? _self.elevators : elevators // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,balconies: null == balconies ? _self.balconies : balconies // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,furniture: null == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,bathroom: null == bathroom ? _self.bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,appliances: null == appliances ? _self.appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,stove: null == stove ? _self.stove : stove // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,prepayment: null == prepayment ? _self.prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentDuration: null == rentDuration ? _self.rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentConditions: null == rentConditions ? _self.rentConditions : rentConditions // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdFormOptionsModel].
extension AdFormOptionsModelPatterns on AdFormOptionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdFormOptionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdFormOptionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdFormOptionsModel value)  $default,){
final _that = this;
switch (_that) {
case _AdFormOptionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdFormOptionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdFormOptionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OptionModel> rentGoal,  List<OptionModel> rentPeriod,  List<OptionModel> whoCanRent,  List<OptionModel> premisesType,  List<OptionModel> propertyType,  List<OptionModel> roomsCount,  List<OptionModel> layout,  List<OptionModel> renovation,  List<OptionModel> elevators,  List<OptionModel> balconies,  List<OptionModel> furniture,  List<OptionModel> amenities,  List<OptionModel> bathroom,  List<OptionModel> appliances,  List<OptionModel> stove,  List<OptionModel> currency,  List<OptionModel> prepayment,  List<OptionModel> rentDuration,  List<OptionModel> rentConditions,  List<OptionModel> contactMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdFormOptionsModel() when $default != null:
return $default(_that.rentGoal,_that.rentPeriod,_that.whoCanRent,_that.premisesType,_that.propertyType,_that.roomsCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.currency,_that.prepayment,_that.rentDuration,_that.rentConditions,_that.contactMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OptionModel> rentGoal,  List<OptionModel> rentPeriod,  List<OptionModel> whoCanRent,  List<OptionModel> premisesType,  List<OptionModel> propertyType,  List<OptionModel> roomsCount,  List<OptionModel> layout,  List<OptionModel> renovation,  List<OptionModel> elevators,  List<OptionModel> balconies,  List<OptionModel> furniture,  List<OptionModel> amenities,  List<OptionModel> bathroom,  List<OptionModel> appliances,  List<OptionModel> stove,  List<OptionModel> currency,  List<OptionModel> prepayment,  List<OptionModel> rentDuration,  List<OptionModel> rentConditions,  List<OptionModel> contactMethod)  $default,) {final _that = this;
switch (_that) {
case _AdFormOptionsModel():
return $default(_that.rentGoal,_that.rentPeriod,_that.whoCanRent,_that.premisesType,_that.propertyType,_that.roomsCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.currency,_that.prepayment,_that.rentDuration,_that.rentConditions,_that.contactMethod);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OptionModel> rentGoal,  List<OptionModel> rentPeriod,  List<OptionModel> whoCanRent,  List<OptionModel> premisesType,  List<OptionModel> propertyType,  List<OptionModel> roomsCount,  List<OptionModel> layout,  List<OptionModel> renovation,  List<OptionModel> elevators,  List<OptionModel> balconies,  List<OptionModel> furniture,  List<OptionModel> amenities,  List<OptionModel> bathroom,  List<OptionModel> appliances,  List<OptionModel> stove,  List<OptionModel> currency,  List<OptionModel> prepayment,  List<OptionModel> rentDuration,  List<OptionModel> rentConditions,  List<OptionModel> contactMethod)?  $default,) {final _that = this;
switch (_that) {
case _AdFormOptionsModel() when $default != null:
return $default(_that.rentGoal,_that.rentPeriod,_that.whoCanRent,_that.premisesType,_that.propertyType,_that.roomsCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.currency,_that.prepayment,_that.rentDuration,_that.rentConditions,_that.contactMethod);case _:
  return null;

}
}

}

/// @nodoc


class _AdFormOptionsModel implements AdFormOptionsModel {
  const _AdFormOptionsModel({final  List<OptionModel> rentGoal = const [], final  List<OptionModel> rentPeriod = const [], final  List<OptionModel> whoCanRent = const [], final  List<OptionModel> premisesType = const [], final  List<OptionModel> propertyType = const [], final  List<OptionModel> roomsCount = const [], final  List<OptionModel> layout = const [], final  List<OptionModel> renovation = const [], final  List<OptionModel> elevators = const [], final  List<OptionModel> balconies = const [], final  List<OptionModel> furniture = const [], final  List<OptionModel> amenities = const [], final  List<OptionModel> bathroom = const [], final  List<OptionModel> appliances = const [], final  List<OptionModel> stove = const [], final  List<OptionModel> currency = const [], final  List<OptionModel> prepayment = const [], final  List<OptionModel> rentDuration = const [], final  List<OptionModel> rentConditions = const [], final  List<OptionModel> contactMethod = const []}): _rentGoal = rentGoal,_rentPeriod = rentPeriod,_whoCanRent = whoCanRent,_premisesType = premisesType,_propertyType = propertyType,_roomsCount = roomsCount,_layout = layout,_renovation = renovation,_elevators = elevators,_balconies = balconies,_furniture = furniture,_amenities = amenities,_bathroom = bathroom,_appliances = appliances,_stove = stove,_currency = currency,_prepayment = prepayment,_rentDuration = rentDuration,_rentConditions = rentConditions,_contactMethod = contactMethod;
  

// Цели и типы аренды
 final  List<OptionModel> _rentGoal;
// Цели и типы аренды
@override@JsonKey() List<OptionModel> get rentGoal {
  if (_rentGoal is EqualUnmodifiableListView) return _rentGoal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentGoal);
}

 final  List<OptionModel> _rentPeriod;
@override@JsonKey() List<OptionModel> get rentPeriod {
  if (_rentPeriod is EqualUnmodifiableListView) return _rentPeriod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentPeriod);
}

 final  List<OptionModel> _whoCanRent;
@override@JsonKey() List<OptionModel> get whoCanRent {
  if (_whoCanRent is EqualUnmodifiableListView) return _whoCanRent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whoCanRent);
}

// Типы недвижимости
 final  List<OptionModel> _premisesType;
// Типы недвижимости
@override@JsonKey() List<OptionModel> get premisesType {
  if (_premisesType is EqualUnmodifiableListView) return _premisesType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_premisesType);
}

 final  List<OptionModel> _propertyType;
@override@JsonKey() List<OptionModel> get propertyType {
  if (_propertyType is EqualUnmodifiableListView) return _propertyType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_propertyType);
}

// Характеристики квартиры
 final  List<OptionModel> _roomsCount;
// Характеристики квартиры
@override@JsonKey() List<OptionModel> get roomsCount {
  if (_roomsCount is EqualUnmodifiableListView) return _roomsCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roomsCount);
}

 final  List<OptionModel> _layout;
@override@JsonKey() List<OptionModel> get layout {
  if (_layout is EqualUnmodifiableListView) return _layout;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_layout);
}

// Особенности (ремонт, лифты, балконы)
 final  List<OptionModel> _renovation;
// Особенности (ремонт, лифты, балконы)
@override@JsonKey() List<OptionModel> get renovation {
  if (_renovation is EqualUnmodifiableListView) return _renovation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_renovation);
}

 final  List<OptionModel> _elevators;
@override@JsonKey() List<OptionModel> get elevators {
  if (_elevators is EqualUnmodifiableListView) return _elevators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_elevators);
}

 final  List<OptionModel> _balconies;
@override@JsonKey() List<OptionModel> get balconies {
  if (_balconies is EqualUnmodifiableListView) return _balconies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_balconies);
}

// Оснащение (мебель, удобства, техника)
 final  List<OptionModel> _furniture;
// Оснащение (мебель, удобства, техника)
@override@JsonKey() List<OptionModel> get furniture {
  if (_furniture is EqualUnmodifiableListView) return _furniture;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_furniture);
}

 final  List<OptionModel> _amenities;
@override@JsonKey() List<OptionModel> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}

 final  List<OptionModel> _bathroom;
@override@JsonKey() List<OptionModel> get bathroom {
  if (_bathroom is EqualUnmodifiableListView) return _bathroom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bathroom);
}

 final  List<OptionModel> _appliances;
@override@JsonKey() List<OptionModel> get appliances {
  if (_appliances is EqualUnmodifiableListView) return _appliances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliances);
}

 final  List<OptionModel> _stove;
@override@JsonKey() List<OptionModel> get stove {
  if (_stove is EqualUnmodifiableListView) return _stove;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stove);
}

// Условия сделки
 final  List<OptionModel> _currency;
// Условия сделки
@override@JsonKey() List<OptionModel> get currency {
  if (_currency is EqualUnmodifiableListView) return _currency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currency);
}

 final  List<OptionModel> _prepayment;
@override@JsonKey() List<OptionModel> get prepayment {
  if (_prepayment is EqualUnmodifiableListView) return _prepayment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prepayment);
}

 final  List<OptionModel> _rentDuration;
@override@JsonKey() List<OptionModel> get rentDuration {
  if (_rentDuration is EqualUnmodifiableListView) return _rentDuration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentDuration);
}

 final  List<OptionModel> _rentConditions;
@override@JsonKey() List<OptionModel> get rentConditions {
  if (_rentConditions is EqualUnmodifiableListView) return _rentConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rentConditions);
}

// Контакты
 final  List<OptionModel> _contactMethod;
// Контакты
@override@JsonKey() List<OptionModel> get contactMethod {
  if (_contactMethod is EqualUnmodifiableListView) return _contactMethod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contactMethod);
}


/// Create a copy of AdFormOptionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdFormOptionsModelCopyWith<_AdFormOptionsModel> get copyWith => __$AdFormOptionsModelCopyWithImpl<_AdFormOptionsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdFormOptionsModel&&const DeepCollectionEquality().equals(other._rentGoal, _rentGoal)&&const DeepCollectionEquality().equals(other._rentPeriod, _rentPeriod)&&const DeepCollectionEquality().equals(other._whoCanRent, _whoCanRent)&&const DeepCollectionEquality().equals(other._premisesType, _premisesType)&&const DeepCollectionEquality().equals(other._propertyType, _propertyType)&&const DeepCollectionEquality().equals(other._roomsCount, _roomsCount)&&const DeepCollectionEquality().equals(other._layout, _layout)&&const DeepCollectionEquality().equals(other._renovation, _renovation)&&const DeepCollectionEquality().equals(other._elevators, _elevators)&&const DeepCollectionEquality().equals(other._balconies, _balconies)&&const DeepCollectionEquality().equals(other._furniture, _furniture)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._bathroom, _bathroom)&&const DeepCollectionEquality().equals(other._appliances, _appliances)&&const DeepCollectionEquality().equals(other._stove, _stove)&&const DeepCollectionEquality().equals(other._currency, _currency)&&const DeepCollectionEquality().equals(other._prepayment, _prepayment)&&const DeepCollectionEquality().equals(other._rentDuration, _rentDuration)&&const DeepCollectionEquality().equals(other._rentConditions, _rentConditions)&&const DeepCollectionEquality().equals(other._contactMethod, _contactMethod));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_rentGoal),const DeepCollectionEquality().hash(_rentPeriod),const DeepCollectionEquality().hash(_whoCanRent),const DeepCollectionEquality().hash(_premisesType),const DeepCollectionEquality().hash(_propertyType),const DeepCollectionEquality().hash(_roomsCount),const DeepCollectionEquality().hash(_layout),const DeepCollectionEquality().hash(_renovation),const DeepCollectionEquality().hash(_elevators),const DeepCollectionEquality().hash(_balconies),const DeepCollectionEquality().hash(_furniture),const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_bathroom),const DeepCollectionEquality().hash(_appliances),const DeepCollectionEquality().hash(_stove),const DeepCollectionEquality().hash(_currency),const DeepCollectionEquality().hash(_prepayment),const DeepCollectionEquality().hash(_rentDuration),const DeepCollectionEquality().hash(_rentConditions),const DeepCollectionEquality().hash(_contactMethod)]);

@override
String toString() {
  return 'AdFormOptionsModel(rentGoal: $rentGoal, rentPeriod: $rentPeriod, whoCanRent: $whoCanRent, premisesType: $premisesType, propertyType: $propertyType, roomsCount: $roomsCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, currency: $currency, prepayment: $prepayment, rentDuration: $rentDuration, rentConditions: $rentConditions, contactMethod: $contactMethod)';
}


}

/// @nodoc
abstract mixin class _$AdFormOptionsModelCopyWith<$Res> implements $AdFormOptionsModelCopyWith<$Res> {
  factory _$AdFormOptionsModelCopyWith(_AdFormOptionsModel value, $Res Function(_AdFormOptionsModel) _then) = __$AdFormOptionsModelCopyWithImpl;
@override @useResult
$Res call({
 List<OptionModel> rentGoal, List<OptionModel> rentPeriod, List<OptionModel> whoCanRent, List<OptionModel> premisesType, List<OptionModel> propertyType, List<OptionModel> roomsCount, List<OptionModel> layout, List<OptionModel> renovation, List<OptionModel> elevators, List<OptionModel> balconies, List<OptionModel> furniture, List<OptionModel> amenities, List<OptionModel> bathroom, List<OptionModel> appliances, List<OptionModel> stove, List<OptionModel> currency, List<OptionModel> prepayment, List<OptionModel> rentDuration, List<OptionModel> rentConditions, List<OptionModel> contactMethod
});




}
/// @nodoc
class __$AdFormOptionsModelCopyWithImpl<$Res>
    implements _$AdFormOptionsModelCopyWith<$Res> {
  __$AdFormOptionsModelCopyWithImpl(this._self, this._then);

  final _AdFormOptionsModel _self;
  final $Res Function(_AdFormOptionsModel) _then;

/// Create a copy of AdFormOptionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoal = null,Object? rentPeriod = null,Object? whoCanRent = null,Object? premisesType = null,Object? propertyType = null,Object? roomsCount = null,Object? layout = null,Object? renovation = null,Object? elevators = null,Object? balconies = null,Object? furniture = null,Object? amenities = null,Object? bathroom = null,Object? appliances = null,Object? stove = null,Object? currency = null,Object? prepayment = null,Object? rentDuration = null,Object? rentConditions = null,Object? contactMethod = null,}) {
  return _then(_AdFormOptionsModel(
rentGoal: null == rentGoal ? _self._rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentPeriod: null == rentPeriod ? _self._rentPeriod : rentPeriod // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,whoCanRent: null == whoCanRent ? _self._whoCanRent : whoCanRent // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,premisesType: null == premisesType ? _self._premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,propertyType: null == propertyType ? _self._propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,roomsCount: null == roomsCount ? _self._roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,layout: null == layout ? _self._layout : layout // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,renovation: null == renovation ? _self._renovation : renovation // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,elevators: null == elevators ? _self._elevators : elevators // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,balconies: null == balconies ? _self._balconies : balconies // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,furniture: null == furniture ? _self._furniture : furniture // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,bathroom: null == bathroom ? _self._bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,appliances: null == appliances ? _self._appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,stove: null == stove ? _self._stove : stove // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,currency: null == currency ? _self._currency : currency // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,prepayment: null == prepayment ? _self._prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentDuration: null == rentDuration ? _self._rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,rentConditions: null == rentConditions ? _self._rentConditions : rentConditions // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,contactMethod: null == contactMethod ? _self._contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
