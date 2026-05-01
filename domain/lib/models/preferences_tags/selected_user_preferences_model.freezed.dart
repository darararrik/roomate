// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_user_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectedUserPreferencesModel {

 List<int> get communication; List<int> get sleep; List<int> get employment; List<int> get badHabits; List<int> get guests; List<int> get noiseLevel; List<int> get cleaning; List<int> get pets; List<int> get petsAttitude;
/// Create a copy of SelectedUserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedUserPreferencesModelCopyWith<SelectedUserPreferencesModel> get copyWith => _$SelectedUserPreferencesModelCopyWithImpl<SelectedUserPreferencesModel>(this as SelectedUserPreferencesModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedUserPreferencesModel&&const DeepCollectionEquality().equals(other.communication, communication)&&const DeepCollectionEquality().equals(other.sleep, sleep)&&const DeepCollectionEquality().equals(other.employment, employment)&&const DeepCollectionEquality().equals(other.badHabits, badHabits)&&const DeepCollectionEquality().equals(other.guests, guests)&&const DeepCollectionEquality().equals(other.noiseLevel, noiseLevel)&&const DeepCollectionEquality().equals(other.cleaning, cleaning)&&const DeepCollectionEquality().equals(other.pets, pets)&&const DeepCollectionEquality().equals(other.petsAttitude, petsAttitude));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(communication),const DeepCollectionEquality().hash(sleep),const DeepCollectionEquality().hash(employment),const DeepCollectionEquality().hash(badHabits),const DeepCollectionEquality().hash(guests),const DeepCollectionEquality().hash(noiseLevel),const DeepCollectionEquality().hash(cleaning),const DeepCollectionEquality().hash(pets),const DeepCollectionEquality().hash(petsAttitude));

@override
String toString() {
  return 'SelectedUserPreferencesModel(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class $SelectedUserPreferencesModelCopyWith<$Res>  {
  factory $SelectedUserPreferencesModelCopyWith(SelectedUserPreferencesModel value, $Res Function(SelectedUserPreferencesModel) _then) = _$SelectedUserPreferencesModelCopyWithImpl;
@useResult
$Res call({
 List<int> communication, List<int> sleep, List<int> employment, List<int> badHabits, List<int> guests, List<int> noiseLevel, List<int> cleaning, List<int> pets, List<int> petsAttitude
});




}
/// @nodoc
class _$SelectedUserPreferencesModelCopyWithImpl<$Res>
    implements $SelectedUserPreferencesModelCopyWith<$Res> {
  _$SelectedUserPreferencesModelCopyWithImpl(this._self, this._then);

  final SelectedUserPreferencesModel _self;
  final $Res Function(SelectedUserPreferencesModel) _then;

/// Create a copy of SelectedUserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communication = null,Object? sleep = null,Object? employment = null,Object? badHabits = null,Object? guests = null,Object? noiseLevel = null,Object? cleaning = null,Object? pets = null,Object? petsAttitude = null,}) {
  return _then(_self.copyWith(
communication: null == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as List<int>,sleep: null == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<int>,employment: null == employment ? _self.employment : employment // ignore: cast_nullable_to_non_nullable
as List<int>,badHabits: null == badHabits ? _self.badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<int>,guests: null == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as List<int>,noiseLevel: null == noiseLevel ? _self.noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<int>,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<int>,pets: null == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<int>,petsAttitude: null == petsAttitude ? _self.petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectedUserPreferencesModel].
extension SelectedUserPreferencesModelPatterns on SelectedUserPreferencesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectedUserPreferencesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectedUserPreferencesModel value)  $default,){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectedUserPreferencesModel value)?  $default,){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> communication,  List<int> sleep,  List<int> employment,  List<int> badHabits,  List<int> guests,  List<int> noiseLevel,  List<int> cleaning,  List<int> pets,  List<int> petsAttitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> communication,  List<int> sleep,  List<int> employment,  List<int> badHabits,  List<int> guests,  List<int> noiseLevel,  List<int> cleaning,  List<int> pets,  List<int> petsAttitude)  $default,) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> communication,  List<int> sleep,  List<int> employment,  List<int> badHabits,  List<int> guests,  List<int> noiseLevel,  List<int> cleaning,  List<int> pets,  List<int> petsAttitude)?  $default,) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesModel() when $default != null:
return $default(_that.communication,_that.sleep,_that.employment,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  return null;

}
}

}

/// @nodoc


class _SelectedUserPreferencesModel implements SelectedUserPreferencesModel {
  const _SelectedUserPreferencesModel({final  List<int> communication = const [], final  List<int> sleep = const [], final  List<int> employment = const [], final  List<int> badHabits = const [], final  List<int> guests = const [], final  List<int> noiseLevel = const [], final  List<int> cleaning = const [], final  List<int> pets = const [], final  List<int> petsAttitude = const []}): _communication = communication,_sleep = sleep,_employment = employment,_badHabits = badHabits,_guests = guests,_noiseLevel = noiseLevel,_cleaning = cleaning,_pets = pets,_petsAttitude = petsAttitude;
  

 final  List<int> _communication;
@override@JsonKey() List<int> get communication {
  if (_communication is EqualUnmodifiableListView) return _communication;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_communication);
}

 final  List<int> _sleep;
@override@JsonKey() List<int> get sleep {
  if (_sleep is EqualUnmodifiableListView) return _sleep;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sleep);
}

 final  List<int> _employment;
@override@JsonKey() List<int> get employment {
  if (_employment is EqualUnmodifiableListView) return _employment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employment);
}

 final  List<int> _badHabits;
@override@JsonKey() List<int> get badHabits {
  if (_badHabits is EqualUnmodifiableListView) return _badHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badHabits);
}

 final  List<int> _guests;
@override@JsonKey() List<int> get guests {
  if (_guests is EqualUnmodifiableListView) return _guests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guests);
}

 final  List<int> _noiseLevel;
@override@JsonKey() List<int> get noiseLevel {
  if (_noiseLevel is EqualUnmodifiableListView) return _noiseLevel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_noiseLevel);
}

 final  List<int> _cleaning;
@override@JsonKey() List<int> get cleaning {
  if (_cleaning is EqualUnmodifiableListView) return _cleaning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleaning);
}

 final  List<int> _pets;
@override@JsonKey() List<int> get pets {
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pets);
}

 final  List<int> _petsAttitude;
@override@JsonKey() List<int> get petsAttitude {
  if (_petsAttitude is EqualUnmodifiableListView) return _petsAttitude;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_petsAttitude);
}


/// Create a copy of SelectedUserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedUserPreferencesModelCopyWith<_SelectedUserPreferencesModel> get copyWith => __$SelectedUserPreferencesModelCopyWithImpl<_SelectedUserPreferencesModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedUserPreferencesModel&&const DeepCollectionEquality().equals(other._communication, _communication)&&const DeepCollectionEquality().equals(other._sleep, _sleep)&&const DeepCollectionEquality().equals(other._employment, _employment)&&const DeepCollectionEquality().equals(other._badHabits, _badHabits)&&const DeepCollectionEquality().equals(other._guests, _guests)&&const DeepCollectionEquality().equals(other._noiseLevel, _noiseLevel)&&const DeepCollectionEquality().equals(other._cleaning, _cleaning)&&const DeepCollectionEquality().equals(other._pets, _pets)&&const DeepCollectionEquality().equals(other._petsAttitude, _petsAttitude));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_communication),const DeepCollectionEquality().hash(_sleep),const DeepCollectionEquality().hash(_employment),const DeepCollectionEquality().hash(_badHabits),const DeepCollectionEquality().hash(_guests),const DeepCollectionEquality().hash(_noiseLevel),const DeepCollectionEquality().hash(_cleaning),const DeepCollectionEquality().hash(_pets),const DeepCollectionEquality().hash(_petsAttitude));

@override
String toString() {
  return 'SelectedUserPreferencesModel(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class _$SelectedUserPreferencesModelCopyWith<$Res> implements $SelectedUserPreferencesModelCopyWith<$Res> {
  factory _$SelectedUserPreferencesModelCopyWith(_SelectedUserPreferencesModel value, $Res Function(_SelectedUserPreferencesModel) _then) = __$SelectedUserPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 List<int> communication, List<int> sleep, List<int> employment, List<int> badHabits, List<int> guests, List<int> noiseLevel, List<int> cleaning, List<int> pets, List<int> petsAttitude
});




}
/// @nodoc
class __$SelectedUserPreferencesModelCopyWithImpl<$Res>
    implements _$SelectedUserPreferencesModelCopyWith<$Res> {
  __$SelectedUserPreferencesModelCopyWithImpl(this._self, this._then);

  final _SelectedUserPreferencesModel _self;
  final $Res Function(_SelectedUserPreferencesModel) _then;

/// Create a copy of SelectedUserPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communication = null,Object? sleep = null,Object? employment = null,Object? badHabits = null,Object? guests = null,Object? noiseLevel = null,Object? cleaning = null,Object? pets = null,Object? petsAttitude = null,}) {
  return _then(_SelectedUserPreferencesModel(
communication: null == communication ? _self._communication : communication // ignore: cast_nullable_to_non_nullable
as List<int>,sleep: null == sleep ? _self._sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<int>,employment: null == employment ? _self._employment : employment // ignore: cast_nullable_to_non_nullable
as List<int>,badHabits: null == badHabits ? _self._badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<int>,guests: null == guests ? _self._guests : guests // ignore: cast_nullable_to_non_nullable
as List<int>,noiseLevel: null == noiseLevel ? _self._noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<int>,cleaning: null == cleaning ? _self._cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<int>,pets: null == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<int>,petsAttitude: null == petsAttitude ? _self._petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
