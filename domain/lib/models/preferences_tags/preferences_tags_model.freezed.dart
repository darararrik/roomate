// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_tags_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PreferencesTagsModel {

 List<OptionModel> get communication; List<OptionModel> get sleep; List<OptionModel> get employment; List<OptionModel> get badHabits; List<OptionModel> get guests; List<OptionModel> get noiseLevel; List<OptionModel> get cleaning; List<OptionModel> get pets; List<OptionModel> get petsAttitude;
/// Create a copy of PreferencesTagsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreferencesTagsModelCopyWith<PreferencesTagsModel> get copyWith => _$PreferencesTagsModelCopyWithImpl<PreferencesTagsModel>(this as PreferencesTagsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreferencesTagsModel&&const DeepCollectionEquality().equals(other.communication, communication)&&const DeepCollectionEquality().equals(other.sleep, sleep)&&const DeepCollectionEquality().equals(other.employment, employment)&&const DeepCollectionEquality().equals(other.badHabits, badHabits)&&const DeepCollectionEquality().equals(other.guests, guests)&&const DeepCollectionEquality().equals(other.noiseLevel, noiseLevel)&&const DeepCollectionEquality().equals(other.cleaning, cleaning)&&const DeepCollectionEquality().equals(other.pets, pets)&&const DeepCollectionEquality().equals(other.petsAttitude, petsAttitude));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(communication),const DeepCollectionEquality().hash(sleep),const DeepCollectionEquality().hash(employment),const DeepCollectionEquality().hash(badHabits),const DeepCollectionEquality().hash(guests),const DeepCollectionEquality().hash(noiseLevel),const DeepCollectionEquality().hash(cleaning),const DeepCollectionEquality().hash(pets),const DeepCollectionEquality().hash(petsAttitude));

@override
String toString() {
  return 'PreferencesTagsModel(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class $PreferencesTagsModelCopyWith<$Res>  {
  factory $PreferencesTagsModelCopyWith(PreferencesTagsModel value, $Res Function(PreferencesTagsModel) _then) = _$PreferencesTagsModelCopyWithImpl;
@useResult
$Res call({
 List<OptionModel> communication, List<OptionModel> sleep, List<OptionModel> employment, List<OptionModel> badHabits, List<OptionModel> guests, List<OptionModel> noiseLevel, List<OptionModel> cleaning, List<OptionModel> pets, List<OptionModel> petsAttitude
});




}
/// @nodoc
class _$PreferencesTagsModelCopyWithImpl<$Res>
    implements $PreferencesTagsModelCopyWith<$Res> {
  _$PreferencesTagsModelCopyWithImpl(this._self, this._then);

  final PreferencesTagsModel _self;
  final $Res Function(PreferencesTagsModel) _then;

/// Create a copy of PreferencesTagsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communication = null,Object? sleep = null,Object? employment = null,Object? badHabits = null,Object? guests = null,Object? noiseLevel = null,Object? cleaning = null,Object? pets = null,Object? petsAttitude = null,}) {
  return _then(_self.copyWith(
communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,sleep: null == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,employment: null == employment ? _self.employment : employment // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,badHabits: null == badHabits ? _self.badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,guests: null == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,noiseLevel: null == noiseLevel ? _self.noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,pets: null == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,petsAttitude: null == petsAttitude ? _self.petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PreferencesTagsModel].
extension PreferencesTagsModelPatterns on PreferencesTagsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreferencesTagsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreferencesTagsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreferencesTagsModel value)  $default,){
final _that = this;
switch (_that) {
case _PreferencesTagsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreferencesTagsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PreferencesTagsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OptionModel> communication,  List<OptionModel> sleep,  List<OptionModel> employment,  List<OptionModel> badHabits,  List<OptionModel> guests,  List<OptionModel> noiseLevel,  List<OptionModel> cleaning,  List<OptionModel> pets,  List<OptionModel> petsAttitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreferencesTagsModel() when $default != null:
return $default(_that.communication,_that.sleep,_that.employment,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OptionModel> communication,  List<OptionModel> sleep,  List<OptionModel> employment,  List<OptionModel> badHabits,  List<OptionModel> guests,  List<OptionModel> noiseLevel,  List<OptionModel> cleaning,  List<OptionModel> pets,  List<OptionModel> petsAttitude)  $default,) {final _that = this;
switch (_that) {
case _PreferencesTagsModel():
return $default(_that.communication,_that.sleep,_that.employment,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OptionModel> communication,  List<OptionModel> sleep,  List<OptionModel> employment,  List<OptionModel> badHabits,  List<OptionModel> guests,  List<OptionModel> noiseLevel,  List<OptionModel> cleaning,  List<OptionModel> pets,  List<OptionModel> petsAttitude)?  $default,) {final _that = this;
switch (_that) {
case _PreferencesTagsModel() when $default != null:
return $default(_that.communication,_that.sleep,_that.employment,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  return null;

}
}

}

/// @nodoc


class _PreferencesTagsModel implements PreferencesTagsModel {
  const _PreferencesTagsModel({final  List<OptionModel> communication = const [], final  List<OptionModel> sleep = const [], final  List<OptionModel> employment = const [], final  List<OptionModel> badHabits = const [], final  List<OptionModel> guests = const [], final  List<OptionModel> noiseLevel = const [], final  List<OptionModel> cleaning = const [], final  List<OptionModel> pets = const [], final  List<OptionModel> petsAttitude = const []}): _communication = communication,_sleep = sleep,_employment = employment,_badHabits = badHabits,_guests = guests,_noiseLevel = noiseLevel,_cleaning = cleaning,_pets = pets,_petsAttitude = petsAttitude;
  

 final  List<OptionModel> _communication;
@override@JsonKey() List<OptionModel> get communication {
  if (_communication is EqualUnmodifiableListView) return _communication;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_communication);
}

 final  List<OptionModel> _sleep;
@override@JsonKey() List<OptionModel> get sleep {
  if (_sleep is EqualUnmodifiableListView) return _sleep;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sleep);
}

 final  List<OptionModel> _employment;
@override@JsonKey() List<OptionModel> get employment {
  if (_employment is EqualUnmodifiableListView) return _employment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employment);
}

 final  List<OptionModel> _badHabits;
@override@JsonKey() List<OptionModel> get badHabits {
  if (_badHabits is EqualUnmodifiableListView) return _badHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badHabits);
}

 final  List<OptionModel> _guests;
@override@JsonKey() List<OptionModel> get guests {
  if (_guests is EqualUnmodifiableListView) return _guests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guests);
}

 final  List<OptionModel> _noiseLevel;
@override@JsonKey() List<OptionModel> get noiseLevel {
  if (_noiseLevel is EqualUnmodifiableListView) return _noiseLevel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_noiseLevel);
}

 final  List<OptionModel> _cleaning;
@override@JsonKey() List<OptionModel> get cleaning {
  if (_cleaning is EqualUnmodifiableListView) return _cleaning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleaning);
}

 final  List<OptionModel> _pets;
@override@JsonKey() List<OptionModel> get pets {
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pets);
}

 final  List<OptionModel> _petsAttitude;
@override@JsonKey() List<OptionModel> get petsAttitude {
  if (_petsAttitude is EqualUnmodifiableListView) return _petsAttitude;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_petsAttitude);
}


/// Create a copy of PreferencesTagsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreferencesTagsModelCopyWith<_PreferencesTagsModel> get copyWith => __$PreferencesTagsModelCopyWithImpl<_PreferencesTagsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreferencesTagsModel&&const DeepCollectionEquality().equals(other._communication, _communication)&&const DeepCollectionEquality().equals(other._sleep, _sleep)&&const DeepCollectionEquality().equals(other._employment, _employment)&&const DeepCollectionEquality().equals(other._badHabits, _badHabits)&&const DeepCollectionEquality().equals(other._guests, _guests)&&const DeepCollectionEquality().equals(other._noiseLevel, _noiseLevel)&&const DeepCollectionEquality().equals(other._cleaning, _cleaning)&&const DeepCollectionEquality().equals(other._pets, _pets)&&const DeepCollectionEquality().equals(other._petsAttitude, _petsAttitude));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_communication),const DeepCollectionEquality().hash(_sleep),const DeepCollectionEquality().hash(_employment),const DeepCollectionEquality().hash(_badHabits),const DeepCollectionEquality().hash(_guests),const DeepCollectionEquality().hash(_noiseLevel),const DeepCollectionEquality().hash(_cleaning),const DeepCollectionEquality().hash(_pets),const DeepCollectionEquality().hash(_petsAttitude));

@override
String toString() {
  return 'PreferencesTagsModel(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class _$PreferencesTagsModelCopyWith<$Res> implements $PreferencesTagsModelCopyWith<$Res> {
  factory _$PreferencesTagsModelCopyWith(_PreferencesTagsModel value, $Res Function(_PreferencesTagsModel) _then) = __$PreferencesTagsModelCopyWithImpl;
@override @useResult
$Res call({
 List<OptionModel> communication, List<OptionModel> sleep, List<OptionModel> employment, List<OptionModel> badHabits, List<OptionModel> guests, List<OptionModel> noiseLevel, List<OptionModel> cleaning, List<OptionModel> pets, List<OptionModel> petsAttitude
});




}
/// @nodoc
class __$PreferencesTagsModelCopyWithImpl<$Res>
    implements _$PreferencesTagsModelCopyWith<$Res> {
  __$PreferencesTagsModelCopyWithImpl(this._self, this._then);

  final _PreferencesTagsModel _self;
  final $Res Function(_PreferencesTagsModel) _then;

/// Create a copy of PreferencesTagsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communication = null,Object? sleep = null,Object? employment = null,Object? badHabits = null,Object? guests = null,Object? noiseLevel = null,Object? cleaning = null,Object? pets = null,Object? petsAttitude = null,}) {
  return _then(_PreferencesTagsModel(
communication: null == communication ? _self._communication : communication // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,sleep: null == sleep ? _self._sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,employment: null == employment ? _self._employment : employment // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,badHabits: null == badHabits ? _self._badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,guests: null == guests ? _self._guests : guests // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,noiseLevel: null == noiseLevel ? _self._noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,cleaning: null == cleaning ? _self._cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,pets: null == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,petsAttitude: null == petsAttitude ? _self._petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<OptionModel>,
  ));
}


}

// dart format on
