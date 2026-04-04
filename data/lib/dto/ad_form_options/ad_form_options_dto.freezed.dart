// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_form_options_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdFormOptionsDto {

// Цели и типы аренды
@JsonKey(name: 'rent_goal') List<OptionDto>? get rentGoal;@JsonKey(name: 'rent_period') List<OptionDto>? get rentPeriod;@JsonKey(name: 'who_can_rent') List<OptionDto>? get whoCanRent;// Типы недвижимости
@JsonKey(name: 'premises_type') List<OptionDto>? get premisesType;@JsonKey(name: 'property_type') List<OptionDto>? get propertyType;// Характеристики квартиры
@JsonKey(name: 'rooms_count') List<OptionDto>? get roomsCount;@JsonKey(name: 'layout') List<OptionDto>? get layout;// Особенности (ремонт, лифты, балконы)
@JsonKey(name: 'renovation') List<OptionDto>? get renovation;@JsonKey(name: 'elevators') List<OptionDto>? get elevators;@JsonKey(name: 'balconies') List<OptionDto>? get balconies;// Оснащение (мебель, удобства, техника)
@JsonKey(name: 'furniture') List<OptionDto>? get furniture;@JsonKey(name: 'amenities') List<OptionDto>? get amenities;@JsonKey(name: 'bathroom') List<OptionDto>? get bathroom;@JsonKey(name: 'appliances') List<OptionDto>? get appliances;@JsonKey(name: 'stove') List<OptionDto>? get stove;// Условия сделки
@JsonKey(name: 'currency') List<OptionDto>? get currency;@JsonKey(name: 'prepayment') List<OptionDto>? get prepayment;@JsonKey(name: 'rent_duration') List<OptionDto>? get rentDuration;@JsonKey(name: 'rent_conditions') List<OptionDto>? get rentConditions;// Контакты
@JsonKey(name: 'contact_method') List<OptionDto>? get contactMethod;
/// Create a copy of AdFormOptionsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdFormOptionsDtoCopyWith<AdFormOptionsDto> get copyWith => _$AdFormOptionsDtoCopyWithImpl<AdFormOptionsDto>(this as AdFormOptionsDto, _$identity);

  /// Serializes this AdFormOptionsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdFormOptionsDto&&const DeepCollectionEquality().equals(other.rentGoal, rentGoal)&&const DeepCollectionEquality().equals(other.rentPeriod, rentPeriod)&&const DeepCollectionEquality().equals(other.whoCanRent, whoCanRent)&&const DeepCollectionEquality().equals(other.premisesType, premisesType)&&const DeepCollectionEquality().equals(other.propertyType, propertyType)&&const DeepCollectionEquality().equals(other.roomsCount, roomsCount)&&const DeepCollectionEquality().equals(other.layout, layout)&&const DeepCollectionEquality().equals(other.renovation, renovation)&&const DeepCollectionEquality().equals(other.elevators, elevators)&&const DeepCollectionEquality().equals(other.balconies, balconies)&&const DeepCollectionEquality().equals(other.furniture, furniture)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.bathroom, bathroom)&&const DeepCollectionEquality().equals(other.appliances, appliances)&&const DeepCollectionEquality().equals(other.stove, stove)&&const DeepCollectionEquality().equals(other.currency, currency)&&const DeepCollectionEquality().equals(other.prepayment, prepayment)&&const DeepCollectionEquality().equals(other.rentDuration, rentDuration)&&const DeepCollectionEquality().equals(other.rentConditions, rentConditions)&&const DeepCollectionEquality().equals(other.contactMethod, contactMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(rentGoal),const DeepCollectionEquality().hash(rentPeriod),const DeepCollectionEquality().hash(whoCanRent),const DeepCollectionEquality().hash(premisesType),const DeepCollectionEquality().hash(propertyType),const DeepCollectionEquality().hash(roomsCount),const DeepCollectionEquality().hash(layout),const DeepCollectionEquality().hash(renovation),const DeepCollectionEquality().hash(elevators),const DeepCollectionEquality().hash(balconies),const DeepCollectionEquality().hash(furniture),const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(bathroom),const DeepCollectionEquality().hash(appliances),const DeepCollectionEquality().hash(stove),const DeepCollectionEquality().hash(currency),const DeepCollectionEquality().hash(prepayment),const DeepCollectionEquality().hash(rentDuration),const DeepCollectionEquality().hash(rentConditions),const DeepCollectionEquality().hash(contactMethod)]);

@override
String toString() {
  return 'AdFormOptionsDto(rentGoal: $rentGoal, rentPeriod: $rentPeriod, whoCanRent: $whoCanRent, premisesType: $premisesType, propertyType: $propertyType, roomsCount: $roomsCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, currency: $currency, prepayment: $prepayment, rentDuration: $rentDuration, rentConditions: $rentConditions, contactMethod: $contactMethod)';
}


}

/// @nodoc
abstract mixin class $AdFormOptionsDtoCopyWith<$Res>  {
  factory $AdFormOptionsDtoCopyWith(AdFormOptionsDto value, $Res Function(AdFormOptionsDto) _then) = _$AdFormOptionsDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,@JsonKey(name: 'rent_period') List<OptionDto>? rentPeriod,@JsonKey(name: 'who_can_rent') List<OptionDto>? whoCanRent,@JsonKey(name: 'premises_type') List<OptionDto>? premisesType,@JsonKey(name: 'property_type') List<OptionDto>? propertyType,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCount,@JsonKey(name: 'layout') List<OptionDto>? layout,@JsonKey(name: 'renovation') List<OptionDto>? renovation,@JsonKey(name: 'elevators') List<OptionDto>? elevators,@JsonKey(name: 'balconies') List<OptionDto>? balconies,@JsonKey(name: 'furniture') List<OptionDto>? furniture,@JsonKey(name: 'amenities') List<OptionDto>? amenities,@JsonKey(name: 'bathroom') List<OptionDto>? bathroom,@JsonKey(name: 'appliances') List<OptionDto>? appliances,@JsonKey(name: 'stove') List<OptionDto>? stove,@JsonKey(name: 'currency') List<OptionDto>? currency,@JsonKey(name: 'prepayment') List<OptionDto>? prepayment,@JsonKey(name: 'rent_duration') List<OptionDto>? rentDuration,@JsonKey(name: 'rent_conditions') List<OptionDto>? rentConditions,@JsonKey(name: 'contact_method') List<OptionDto>? contactMethod
});




}
/// @nodoc
class _$AdFormOptionsDtoCopyWithImpl<$Res>
    implements $AdFormOptionsDtoCopyWith<$Res> {
  _$AdFormOptionsDtoCopyWithImpl(this._self, this._then);

  final AdFormOptionsDto _self;
  final $Res Function(AdFormOptionsDto) _then;

/// Create a copy of AdFormOptionsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentGoal = freezed,Object? rentPeriod = freezed,Object? whoCanRent = freezed,Object? premisesType = freezed,Object? propertyType = freezed,Object? roomsCount = freezed,Object? layout = freezed,Object? renovation = freezed,Object? elevators = freezed,Object? balconies = freezed,Object? furniture = freezed,Object? amenities = freezed,Object? bathroom = freezed,Object? appliances = freezed,Object? stove = freezed,Object? currency = freezed,Object? prepayment = freezed,Object? rentDuration = freezed,Object? rentConditions = freezed,Object? contactMethod = freezed,}) {
  return _then(_self.copyWith(
rentGoal: freezed == rentGoal ? _self.rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentPeriod: freezed == rentPeriod ? _self.rentPeriod : rentPeriod // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,whoCanRent: freezed == whoCanRent ? _self.whoCanRent : whoCanRent // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,premisesType: freezed == premisesType ? _self.premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyType: freezed == propertyType ? _self.propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCount: freezed == roomsCount ? _self.roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,renovation: freezed == renovation ? _self.renovation : renovation // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,elevators: freezed == elevators ? _self.elevators : elevators // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,balconies: freezed == balconies ? _self.balconies : balconies // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,furniture: freezed == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,bathroom: freezed == bathroom ? _self.bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,appliances: freezed == appliances ? _self.appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,stove: freezed == stove ? _self.stove : stove // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,prepayment: freezed == prepayment ? _self.prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentDuration: freezed == rentDuration ? _self.rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentConditions: freezed == rentConditions ? _self.rentConditions : rentConditions // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,contactMethod: freezed == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdFormOptionsDto].
extension AdFormOptionsDtoPatterns on AdFormOptionsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdFormOptionsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdFormOptionsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdFormOptionsDto value)  $default,){
final _that = this;
switch (_that) {
case _AdFormOptionsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdFormOptionsDto value)?  $default,){
final _that = this;
switch (_that) {
case _AdFormOptionsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'rent_period')  List<OptionDto>? rentPeriod, @JsonKey(name: 'who_can_rent')  List<OptionDto>? whoCanRent, @JsonKey(name: 'premises_type')  List<OptionDto>? premisesType, @JsonKey(name: 'property_type')  List<OptionDto>? propertyType, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCount, @JsonKey(name: 'layout')  List<OptionDto>? layout, @JsonKey(name: 'renovation')  List<OptionDto>? renovation, @JsonKey(name: 'elevators')  List<OptionDto>? elevators, @JsonKey(name: 'balconies')  List<OptionDto>? balconies, @JsonKey(name: 'furniture')  List<OptionDto>? furniture, @JsonKey(name: 'amenities')  List<OptionDto>? amenities, @JsonKey(name: 'bathroom')  List<OptionDto>? bathroom, @JsonKey(name: 'appliances')  List<OptionDto>? appliances, @JsonKey(name: 'stove')  List<OptionDto>? stove, @JsonKey(name: 'currency')  List<OptionDto>? currency, @JsonKey(name: 'prepayment')  List<OptionDto>? prepayment, @JsonKey(name: 'rent_duration')  List<OptionDto>? rentDuration, @JsonKey(name: 'rent_conditions')  List<OptionDto>? rentConditions, @JsonKey(name: 'contact_method')  List<OptionDto>? contactMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdFormOptionsDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'rent_period')  List<OptionDto>? rentPeriod, @JsonKey(name: 'who_can_rent')  List<OptionDto>? whoCanRent, @JsonKey(name: 'premises_type')  List<OptionDto>? premisesType, @JsonKey(name: 'property_type')  List<OptionDto>? propertyType, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCount, @JsonKey(name: 'layout')  List<OptionDto>? layout, @JsonKey(name: 'renovation')  List<OptionDto>? renovation, @JsonKey(name: 'elevators')  List<OptionDto>? elevators, @JsonKey(name: 'balconies')  List<OptionDto>? balconies, @JsonKey(name: 'furniture')  List<OptionDto>? furniture, @JsonKey(name: 'amenities')  List<OptionDto>? amenities, @JsonKey(name: 'bathroom')  List<OptionDto>? bathroom, @JsonKey(name: 'appliances')  List<OptionDto>? appliances, @JsonKey(name: 'stove')  List<OptionDto>? stove, @JsonKey(name: 'currency')  List<OptionDto>? currency, @JsonKey(name: 'prepayment')  List<OptionDto>? prepayment, @JsonKey(name: 'rent_duration')  List<OptionDto>? rentDuration, @JsonKey(name: 'rent_conditions')  List<OptionDto>? rentConditions, @JsonKey(name: 'contact_method')  List<OptionDto>? contactMethod)  $default,) {final _that = this;
switch (_that) {
case _AdFormOptionsDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rent_goal')  List<OptionDto>? rentGoal, @JsonKey(name: 'rent_period')  List<OptionDto>? rentPeriod, @JsonKey(name: 'who_can_rent')  List<OptionDto>? whoCanRent, @JsonKey(name: 'premises_type')  List<OptionDto>? premisesType, @JsonKey(name: 'property_type')  List<OptionDto>? propertyType, @JsonKey(name: 'rooms_count')  List<OptionDto>? roomsCount, @JsonKey(name: 'layout')  List<OptionDto>? layout, @JsonKey(name: 'renovation')  List<OptionDto>? renovation, @JsonKey(name: 'elevators')  List<OptionDto>? elevators, @JsonKey(name: 'balconies')  List<OptionDto>? balconies, @JsonKey(name: 'furniture')  List<OptionDto>? furniture, @JsonKey(name: 'amenities')  List<OptionDto>? amenities, @JsonKey(name: 'bathroom')  List<OptionDto>? bathroom, @JsonKey(name: 'appliances')  List<OptionDto>? appliances, @JsonKey(name: 'stove')  List<OptionDto>? stove, @JsonKey(name: 'currency')  List<OptionDto>? currency, @JsonKey(name: 'prepayment')  List<OptionDto>? prepayment, @JsonKey(name: 'rent_duration')  List<OptionDto>? rentDuration, @JsonKey(name: 'rent_conditions')  List<OptionDto>? rentConditions, @JsonKey(name: 'contact_method')  List<OptionDto>? contactMethod)?  $default,) {final _that = this;
switch (_that) {
case _AdFormOptionsDto() when $default != null:
return $default(_that.rentGoal,_that.rentPeriod,_that.whoCanRent,_that.premisesType,_that.propertyType,_that.roomsCount,_that.layout,_that.renovation,_that.elevators,_that.balconies,_that.furniture,_that.amenities,_that.bathroom,_that.appliances,_that.stove,_that.currency,_that.prepayment,_that.rentDuration,_that.rentConditions,_that.contactMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdFormOptionsDto implements AdFormOptionsDto {
  const _AdFormOptionsDto({@JsonKey(name: 'rent_goal') final  List<OptionDto>? rentGoal, @JsonKey(name: 'rent_period') final  List<OptionDto>? rentPeriod, @JsonKey(name: 'who_can_rent') final  List<OptionDto>? whoCanRent, @JsonKey(name: 'premises_type') final  List<OptionDto>? premisesType, @JsonKey(name: 'property_type') final  List<OptionDto>? propertyType, @JsonKey(name: 'rooms_count') final  List<OptionDto>? roomsCount, @JsonKey(name: 'layout') final  List<OptionDto>? layout, @JsonKey(name: 'renovation') final  List<OptionDto>? renovation, @JsonKey(name: 'elevators') final  List<OptionDto>? elevators, @JsonKey(name: 'balconies') final  List<OptionDto>? balconies, @JsonKey(name: 'furniture') final  List<OptionDto>? furniture, @JsonKey(name: 'amenities') final  List<OptionDto>? amenities, @JsonKey(name: 'bathroom') final  List<OptionDto>? bathroom, @JsonKey(name: 'appliances') final  List<OptionDto>? appliances, @JsonKey(name: 'stove') final  List<OptionDto>? stove, @JsonKey(name: 'currency') final  List<OptionDto>? currency, @JsonKey(name: 'prepayment') final  List<OptionDto>? prepayment, @JsonKey(name: 'rent_duration') final  List<OptionDto>? rentDuration, @JsonKey(name: 'rent_conditions') final  List<OptionDto>? rentConditions, @JsonKey(name: 'contact_method') final  List<OptionDto>? contactMethod}): _rentGoal = rentGoal,_rentPeriod = rentPeriod,_whoCanRent = whoCanRent,_premisesType = premisesType,_propertyType = propertyType,_roomsCount = roomsCount,_layout = layout,_renovation = renovation,_elevators = elevators,_balconies = balconies,_furniture = furniture,_amenities = amenities,_bathroom = bathroom,_appliances = appliances,_stove = stove,_currency = currency,_prepayment = prepayment,_rentDuration = rentDuration,_rentConditions = rentConditions,_contactMethod = contactMethod;
  factory _AdFormOptionsDto.fromJson(Map<String, dynamic> json) => _$AdFormOptionsDtoFromJson(json);

// Цели и типы аренды
 final  List<OptionDto>? _rentGoal;
// Цели и типы аренды
@override@JsonKey(name: 'rent_goal') List<OptionDto>? get rentGoal {
  final value = _rentGoal;
  if (value == null) return null;
  if (_rentGoal is EqualUnmodifiableListView) return _rentGoal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _rentPeriod;
@override@JsonKey(name: 'rent_period') List<OptionDto>? get rentPeriod {
  final value = _rentPeriod;
  if (value == null) return null;
  if (_rentPeriod is EqualUnmodifiableListView) return _rentPeriod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _whoCanRent;
@override@JsonKey(name: 'who_can_rent') List<OptionDto>? get whoCanRent {
  final value = _whoCanRent;
  if (value == null) return null;
  if (_whoCanRent is EqualUnmodifiableListView) return _whoCanRent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Типы недвижимости
 final  List<OptionDto>? _premisesType;
// Типы недвижимости
@override@JsonKey(name: 'premises_type') List<OptionDto>? get premisesType {
  final value = _premisesType;
  if (value == null) return null;
  if (_premisesType is EqualUnmodifiableListView) return _premisesType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _propertyType;
@override@JsonKey(name: 'property_type') List<OptionDto>? get propertyType {
  final value = _propertyType;
  if (value == null) return null;
  if (_propertyType is EqualUnmodifiableListView) return _propertyType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Характеристики квартиры
 final  List<OptionDto>? _roomsCount;
// Характеристики квартиры
@override@JsonKey(name: 'rooms_count') List<OptionDto>? get roomsCount {
  final value = _roomsCount;
  if (value == null) return null;
  if (_roomsCount is EqualUnmodifiableListView) return _roomsCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _layout;
@override@JsonKey(name: 'layout') List<OptionDto>? get layout {
  final value = _layout;
  if (value == null) return null;
  if (_layout is EqualUnmodifiableListView) return _layout;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Особенности (ремонт, лифты, балконы)
 final  List<OptionDto>? _renovation;
// Особенности (ремонт, лифты, балконы)
@override@JsonKey(name: 'renovation') List<OptionDto>? get renovation {
  final value = _renovation;
  if (value == null) return null;
  if (_renovation is EqualUnmodifiableListView) return _renovation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _elevators;
@override@JsonKey(name: 'elevators') List<OptionDto>? get elevators {
  final value = _elevators;
  if (value == null) return null;
  if (_elevators is EqualUnmodifiableListView) return _elevators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _balconies;
@override@JsonKey(name: 'balconies') List<OptionDto>? get balconies {
  final value = _balconies;
  if (value == null) return null;
  if (_balconies is EqualUnmodifiableListView) return _balconies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Оснащение (мебель, удобства, техника)
 final  List<OptionDto>? _furniture;
// Оснащение (мебель, удобства, техника)
@override@JsonKey(name: 'furniture') List<OptionDto>? get furniture {
  final value = _furniture;
  if (value == null) return null;
  if (_furniture is EqualUnmodifiableListView) return _furniture;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _amenities;
@override@JsonKey(name: 'amenities') List<OptionDto>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _bathroom;
@override@JsonKey(name: 'bathroom') List<OptionDto>? get bathroom {
  final value = _bathroom;
  if (value == null) return null;
  if (_bathroom is EqualUnmodifiableListView) return _bathroom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _appliances;
@override@JsonKey(name: 'appliances') List<OptionDto>? get appliances {
  final value = _appliances;
  if (value == null) return null;
  if (_appliances is EqualUnmodifiableListView) return _appliances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _stove;
@override@JsonKey(name: 'stove') List<OptionDto>? get stove {
  final value = _stove;
  if (value == null) return null;
  if (_stove is EqualUnmodifiableListView) return _stove;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Условия сделки
 final  List<OptionDto>? _currency;
// Условия сделки
@override@JsonKey(name: 'currency') List<OptionDto>? get currency {
  final value = _currency;
  if (value == null) return null;
  if (_currency is EqualUnmodifiableListView) return _currency;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _prepayment;
@override@JsonKey(name: 'prepayment') List<OptionDto>? get prepayment {
  final value = _prepayment;
  if (value == null) return null;
  if (_prepayment is EqualUnmodifiableListView) return _prepayment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _rentDuration;
@override@JsonKey(name: 'rent_duration') List<OptionDto>? get rentDuration {
  final value = _rentDuration;
  if (value == null) return null;
  if (_rentDuration is EqualUnmodifiableListView) return _rentDuration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OptionDto>? _rentConditions;
@override@JsonKey(name: 'rent_conditions') List<OptionDto>? get rentConditions {
  final value = _rentConditions;
  if (value == null) return null;
  if (_rentConditions is EqualUnmodifiableListView) return _rentConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// Контакты
 final  List<OptionDto>? _contactMethod;
// Контакты
@override@JsonKey(name: 'contact_method') List<OptionDto>? get contactMethod {
  final value = _contactMethod;
  if (value == null) return null;
  if (_contactMethod is EqualUnmodifiableListView) return _contactMethod;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdFormOptionsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdFormOptionsDtoCopyWith<_AdFormOptionsDto> get copyWith => __$AdFormOptionsDtoCopyWithImpl<_AdFormOptionsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdFormOptionsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdFormOptionsDto&&const DeepCollectionEquality().equals(other._rentGoal, _rentGoal)&&const DeepCollectionEquality().equals(other._rentPeriod, _rentPeriod)&&const DeepCollectionEquality().equals(other._whoCanRent, _whoCanRent)&&const DeepCollectionEquality().equals(other._premisesType, _premisesType)&&const DeepCollectionEquality().equals(other._propertyType, _propertyType)&&const DeepCollectionEquality().equals(other._roomsCount, _roomsCount)&&const DeepCollectionEquality().equals(other._layout, _layout)&&const DeepCollectionEquality().equals(other._renovation, _renovation)&&const DeepCollectionEquality().equals(other._elevators, _elevators)&&const DeepCollectionEquality().equals(other._balconies, _balconies)&&const DeepCollectionEquality().equals(other._furniture, _furniture)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._bathroom, _bathroom)&&const DeepCollectionEquality().equals(other._appliances, _appliances)&&const DeepCollectionEquality().equals(other._stove, _stove)&&const DeepCollectionEquality().equals(other._currency, _currency)&&const DeepCollectionEquality().equals(other._prepayment, _prepayment)&&const DeepCollectionEquality().equals(other._rentDuration, _rentDuration)&&const DeepCollectionEquality().equals(other._rentConditions, _rentConditions)&&const DeepCollectionEquality().equals(other._contactMethod, _contactMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_rentGoal),const DeepCollectionEquality().hash(_rentPeriod),const DeepCollectionEquality().hash(_whoCanRent),const DeepCollectionEquality().hash(_premisesType),const DeepCollectionEquality().hash(_propertyType),const DeepCollectionEquality().hash(_roomsCount),const DeepCollectionEquality().hash(_layout),const DeepCollectionEquality().hash(_renovation),const DeepCollectionEquality().hash(_elevators),const DeepCollectionEquality().hash(_balconies),const DeepCollectionEquality().hash(_furniture),const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_bathroom),const DeepCollectionEquality().hash(_appliances),const DeepCollectionEquality().hash(_stove),const DeepCollectionEquality().hash(_currency),const DeepCollectionEquality().hash(_prepayment),const DeepCollectionEquality().hash(_rentDuration),const DeepCollectionEquality().hash(_rentConditions),const DeepCollectionEquality().hash(_contactMethod)]);

@override
String toString() {
  return 'AdFormOptionsDto(rentGoal: $rentGoal, rentPeriod: $rentPeriod, whoCanRent: $whoCanRent, premisesType: $premisesType, propertyType: $propertyType, roomsCount: $roomsCount, layout: $layout, renovation: $renovation, elevators: $elevators, balconies: $balconies, furniture: $furniture, amenities: $amenities, bathroom: $bathroom, appliances: $appliances, stove: $stove, currency: $currency, prepayment: $prepayment, rentDuration: $rentDuration, rentConditions: $rentConditions, contactMethod: $contactMethod)';
}


}

/// @nodoc
abstract mixin class _$AdFormOptionsDtoCopyWith<$Res> implements $AdFormOptionsDtoCopyWith<$Res> {
  factory _$AdFormOptionsDtoCopyWith(_AdFormOptionsDto value, $Res Function(_AdFormOptionsDto) _then) = __$AdFormOptionsDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rent_goal') List<OptionDto>? rentGoal,@JsonKey(name: 'rent_period') List<OptionDto>? rentPeriod,@JsonKey(name: 'who_can_rent') List<OptionDto>? whoCanRent,@JsonKey(name: 'premises_type') List<OptionDto>? premisesType,@JsonKey(name: 'property_type') List<OptionDto>? propertyType,@JsonKey(name: 'rooms_count') List<OptionDto>? roomsCount,@JsonKey(name: 'layout') List<OptionDto>? layout,@JsonKey(name: 'renovation') List<OptionDto>? renovation,@JsonKey(name: 'elevators') List<OptionDto>? elevators,@JsonKey(name: 'balconies') List<OptionDto>? balconies,@JsonKey(name: 'furniture') List<OptionDto>? furniture,@JsonKey(name: 'amenities') List<OptionDto>? amenities,@JsonKey(name: 'bathroom') List<OptionDto>? bathroom,@JsonKey(name: 'appliances') List<OptionDto>? appliances,@JsonKey(name: 'stove') List<OptionDto>? stove,@JsonKey(name: 'currency') List<OptionDto>? currency,@JsonKey(name: 'prepayment') List<OptionDto>? prepayment,@JsonKey(name: 'rent_duration') List<OptionDto>? rentDuration,@JsonKey(name: 'rent_conditions') List<OptionDto>? rentConditions,@JsonKey(name: 'contact_method') List<OptionDto>? contactMethod
});




}
/// @nodoc
class __$AdFormOptionsDtoCopyWithImpl<$Res>
    implements _$AdFormOptionsDtoCopyWith<$Res> {
  __$AdFormOptionsDtoCopyWithImpl(this._self, this._then);

  final _AdFormOptionsDto _self;
  final $Res Function(_AdFormOptionsDto) _then;

/// Create a copy of AdFormOptionsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentGoal = freezed,Object? rentPeriod = freezed,Object? whoCanRent = freezed,Object? premisesType = freezed,Object? propertyType = freezed,Object? roomsCount = freezed,Object? layout = freezed,Object? renovation = freezed,Object? elevators = freezed,Object? balconies = freezed,Object? furniture = freezed,Object? amenities = freezed,Object? bathroom = freezed,Object? appliances = freezed,Object? stove = freezed,Object? currency = freezed,Object? prepayment = freezed,Object? rentDuration = freezed,Object? rentConditions = freezed,Object? contactMethod = freezed,}) {
  return _then(_AdFormOptionsDto(
rentGoal: freezed == rentGoal ? _self._rentGoal : rentGoal // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentPeriod: freezed == rentPeriod ? _self._rentPeriod : rentPeriod // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,whoCanRent: freezed == whoCanRent ? _self._whoCanRent : whoCanRent // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,premisesType: freezed == premisesType ? _self._premisesType : premisesType // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,propertyType: freezed == propertyType ? _self._propertyType : propertyType // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,roomsCount: freezed == roomsCount ? _self._roomsCount : roomsCount // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,layout: freezed == layout ? _self._layout : layout // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,renovation: freezed == renovation ? _self._renovation : renovation // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,elevators: freezed == elevators ? _self._elevators : elevators // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,balconies: freezed == balconies ? _self._balconies : balconies // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,furniture: freezed == furniture ? _self._furniture : furniture // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,bathroom: freezed == bathroom ? _self._bathroom : bathroom // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,appliances: freezed == appliances ? _self._appliances : appliances // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,stove: freezed == stove ? _self._stove : stove // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,currency: freezed == currency ? _self._currency : currency // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,prepayment: freezed == prepayment ? _self._prepayment : prepayment // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentDuration: freezed == rentDuration ? _self._rentDuration : rentDuration // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,rentConditions: freezed == rentConditions ? _self._rentConditions : rentConditions // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,contactMethod: freezed == contactMethod ? _self._contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as List<OptionDto>?,
  ));
}


}

// dart format on
