// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_user_preferences_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectedUserPreferencesData {

@JsonKey(name: 'communication') List<int>? get communication;@JsonKey(name: 'sleep') List<int>? get sleep;@JsonKey(name: 'employment') List<int>? get employment;@JsonKey(name: 'bad_habits') List<int>? get badHabits;@JsonKey(name: 'guests') List<int>? get guests;@JsonKey(name: 'noise_level') List<int>? get noiseLevel;@JsonKey(name: 'cleaning') List<int>? get cleaning;@JsonKey(name: 'pets') List<int>? get pets;@JsonKey(name: 'pets_attitude') List<int>? get petsAttitude;
/// Create a copy of SelectedUserPreferencesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedUserPreferencesDataCopyWith<SelectedUserPreferencesData> get copyWith => _$SelectedUserPreferencesDataCopyWithImpl<SelectedUserPreferencesData>(this as SelectedUserPreferencesData, _$identity);

  /// Serializes this SelectedUserPreferencesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedUserPreferencesData&&const DeepCollectionEquality().equals(other.communication, communication)&&const DeepCollectionEquality().equals(other.sleep, sleep)&&const DeepCollectionEquality().equals(other.employment, employment)&&const DeepCollectionEquality().equals(other.badHabits, badHabits)&&const DeepCollectionEquality().equals(other.guests, guests)&&const DeepCollectionEquality().equals(other.noiseLevel, noiseLevel)&&const DeepCollectionEquality().equals(other.cleaning, cleaning)&&const DeepCollectionEquality().equals(other.pets, pets)&&const DeepCollectionEquality().equals(other.petsAttitude, petsAttitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(communication),const DeepCollectionEquality().hash(sleep),const DeepCollectionEquality().hash(employment),const DeepCollectionEquality().hash(badHabits),const DeepCollectionEquality().hash(guests),const DeepCollectionEquality().hash(noiseLevel),const DeepCollectionEquality().hash(cleaning),const DeepCollectionEquality().hash(pets),const DeepCollectionEquality().hash(petsAttitude));

@override
String toString() {
  return 'SelectedUserPreferencesData(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class $SelectedUserPreferencesDataCopyWith<$Res>  {
  factory $SelectedUserPreferencesDataCopyWith(SelectedUserPreferencesData value, $Res Function(SelectedUserPreferencesData) _then) = _$SelectedUserPreferencesDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'communication') List<int>? communication,@JsonKey(name: 'sleep') List<int>? sleep,@JsonKey(name: 'employment') List<int>? employment,@JsonKey(name: 'bad_habits') List<int>? badHabits,@JsonKey(name: 'guests') List<int>? guests,@JsonKey(name: 'noise_level') List<int>? noiseLevel,@JsonKey(name: 'cleaning') List<int>? cleaning,@JsonKey(name: 'pets') List<int>? pets,@JsonKey(name: 'pets_attitude') List<int>? petsAttitude
});




}
/// @nodoc
class _$SelectedUserPreferencesDataCopyWithImpl<$Res>
    implements $SelectedUserPreferencesDataCopyWith<$Res> {
  _$SelectedUserPreferencesDataCopyWithImpl(this._self, this._then);

  final SelectedUserPreferencesData _self;
  final $Res Function(SelectedUserPreferencesData) _then;

/// Create a copy of SelectedUserPreferencesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? communication = freezed,Object? sleep = freezed,Object? employment = freezed,Object? badHabits = freezed,Object? guests = freezed,Object? noiseLevel = freezed,Object? cleaning = freezed,Object? pets = freezed,Object? petsAttitude = freezed,}) {
  return _then(_self.copyWith(
communication: freezed == communication ? _self.communication : communication // ignore: cast_nullable_to_non_nullable
as List<int>?,sleep: freezed == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<int>?,employment: freezed == employment ? _self.employment : employment // ignore: cast_nullable_to_non_nullable
as List<int>?,badHabits: freezed == badHabits ? _self.badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<int>?,guests: freezed == guests ? _self.guests : guests // ignore: cast_nullable_to_non_nullable
as List<int>?,noiseLevel: freezed == noiseLevel ? _self.noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<int>?,cleaning: freezed == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<int>?,pets: freezed == pets ? _self.pets : pets // ignore: cast_nullable_to_non_nullable
as List<int>?,petsAttitude: freezed == petsAttitude ? _self.petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectedUserPreferencesData].
extension SelectedUserPreferencesDataPatterns on SelectedUserPreferencesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectedUserPreferencesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectedUserPreferencesData value)  $default,){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectedUserPreferencesData value)?  $default,){
final _that = this;
switch (_that) {
case _SelectedUserPreferencesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication')  List<int>? communication, @JsonKey(name: 'sleep')  List<int>? sleep, @JsonKey(name: 'employment')  List<int>? employment, @JsonKey(name: 'bad_habits')  List<int>? badHabits, @JsonKey(name: 'guests')  List<int>? guests, @JsonKey(name: 'noise_level')  List<int>? noiseLevel, @JsonKey(name: 'cleaning')  List<int>? cleaning, @JsonKey(name: 'pets')  List<int>? pets, @JsonKey(name: 'pets_attitude')  List<int>? petsAttitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'communication')  List<int>? communication, @JsonKey(name: 'sleep')  List<int>? sleep, @JsonKey(name: 'employment')  List<int>? employment, @JsonKey(name: 'bad_habits')  List<int>? badHabits, @JsonKey(name: 'guests')  List<int>? guests, @JsonKey(name: 'noise_level')  List<int>? noiseLevel, @JsonKey(name: 'cleaning')  List<int>? cleaning, @JsonKey(name: 'pets')  List<int>? pets, @JsonKey(name: 'pets_attitude')  List<int>? petsAttitude)  $default,) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'communication')  List<int>? communication, @JsonKey(name: 'sleep')  List<int>? sleep, @JsonKey(name: 'employment')  List<int>? employment, @JsonKey(name: 'bad_habits')  List<int>? badHabits, @JsonKey(name: 'guests')  List<int>? guests, @JsonKey(name: 'noise_level')  List<int>? noiseLevel, @JsonKey(name: 'cleaning')  List<int>? cleaning, @JsonKey(name: 'pets')  List<int>? pets, @JsonKey(name: 'pets_attitude')  List<int>? petsAttitude)?  $default,) {final _that = this;
switch (_that) {
case _SelectedUserPreferencesData() when $default != null:
return $default(_that.communication,_that.sleep,_that.employment,_that.badHabits,_that.guests,_that.noiseLevel,_that.cleaning,_that.pets,_that.petsAttitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SelectedUserPreferencesData implements SelectedUserPreferencesData {
  const _SelectedUserPreferencesData({@JsonKey(name: 'communication') final  List<int>? communication, @JsonKey(name: 'sleep') final  List<int>? sleep, @JsonKey(name: 'employment') final  List<int>? employment, @JsonKey(name: 'bad_habits') final  List<int>? badHabits, @JsonKey(name: 'guests') final  List<int>? guests, @JsonKey(name: 'noise_level') final  List<int>? noiseLevel, @JsonKey(name: 'cleaning') final  List<int>? cleaning, @JsonKey(name: 'pets') final  List<int>? pets, @JsonKey(name: 'pets_attitude') final  List<int>? petsAttitude}): _communication = communication,_sleep = sleep,_employment = employment,_badHabits = badHabits,_guests = guests,_noiseLevel = noiseLevel,_cleaning = cleaning,_pets = pets,_petsAttitude = petsAttitude;
  factory _SelectedUserPreferencesData.fromJson(Map<String, dynamic> json) => _$SelectedUserPreferencesDataFromJson(json);

 final  List<int>? _communication;
@override@JsonKey(name: 'communication') List<int>? get communication {
  final value = _communication;
  if (value == null) return null;
  if (_communication is EqualUnmodifiableListView) return _communication;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _sleep;
@override@JsonKey(name: 'sleep') List<int>? get sleep {
  final value = _sleep;
  if (value == null) return null;
  if (_sleep is EqualUnmodifiableListView) return _sleep;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _employment;
@override@JsonKey(name: 'employment') List<int>? get employment {
  final value = _employment;
  if (value == null) return null;
  if (_employment is EqualUnmodifiableListView) return _employment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _badHabits;
@override@JsonKey(name: 'bad_habits') List<int>? get badHabits {
  final value = _badHabits;
  if (value == null) return null;
  if (_badHabits is EqualUnmodifiableListView) return _badHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _guests;
@override@JsonKey(name: 'guests') List<int>? get guests {
  final value = _guests;
  if (value == null) return null;
  if (_guests is EqualUnmodifiableListView) return _guests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _noiseLevel;
@override@JsonKey(name: 'noise_level') List<int>? get noiseLevel {
  final value = _noiseLevel;
  if (value == null) return null;
  if (_noiseLevel is EqualUnmodifiableListView) return _noiseLevel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _cleaning;
@override@JsonKey(name: 'cleaning') List<int>? get cleaning {
  final value = _cleaning;
  if (value == null) return null;
  if (_cleaning is EqualUnmodifiableListView) return _cleaning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _pets;
@override@JsonKey(name: 'pets') List<int>? get pets {
  final value = _pets;
  if (value == null) return null;
  if (_pets is EqualUnmodifiableListView) return _pets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _petsAttitude;
@override@JsonKey(name: 'pets_attitude') List<int>? get petsAttitude {
  final value = _petsAttitude;
  if (value == null) return null;
  if (_petsAttitude is EqualUnmodifiableListView) return _petsAttitude;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SelectedUserPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedUserPreferencesDataCopyWith<_SelectedUserPreferencesData> get copyWith => __$SelectedUserPreferencesDataCopyWithImpl<_SelectedUserPreferencesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SelectedUserPreferencesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedUserPreferencesData&&const DeepCollectionEquality().equals(other._communication, _communication)&&const DeepCollectionEquality().equals(other._sleep, _sleep)&&const DeepCollectionEquality().equals(other._employment, _employment)&&const DeepCollectionEquality().equals(other._badHabits, _badHabits)&&const DeepCollectionEquality().equals(other._guests, _guests)&&const DeepCollectionEquality().equals(other._noiseLevel, _noiseLevel)&&const DeepCollectionEquality().equals(other._cleaning, _cleaning)&&const DeepCollectionEquality().equals(other._pets, _pets)&&const DeepCollectionEquality().equals(other._petsAttitude, _petsAttitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_communication),const DeepCollectionEquality().hash(_sleep),const DeepCollectionEquality().hash(_employment),const DeepCollectionEquality().hash(_badHabits),const DeepCollectionEquality().hash(_guests),const DeepCollectionEquality().hash(_noiseLevel),const DeepCollectionEquality().hash(_cleaning),const DeepCollectionEquality().hash(_pets),const DeepCollectionEquality().hash(_petsAttitude));

@override
String toString() {
  return 'SelectedUserPreferencesData(communication: $communication, sleep: $sleep, employment: $employment, badHabits: $badHabits, guests: $guests, noiseLevel: $noiseLevel, cleaning: $cleaning, pets: $pets, petsAttitude: $petsAttitude)';
}


}

/// @nodoc
abstract mixin class _$SelectedUserPreferencesDataCopyWith<$Res> implements $SelectedUserPreferencesDataCopyWith<$Res> {
  factory _$SelectedUserPreferencesDataCopyWith(_SelectedUserPreferencesData value, $Res Function(_SelectedUserPreferencesData) _then) = __$SelectedUserPreferencesDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'communication') List<int>? communication,@JsonKey(name: 'sleep') List<int>? sleep,@JsonKey(name: 'employment') List<int>? employment,@JsonKey(name: 'bad_habits') List<int>? badHabits,@JsonKey(name: 'guests') List<int>? guests,@JsonKey(name: 'noise_level') List<int>? noiseLevel,@JsonKey(name: 'cleaning') List<int>? cleaning,@JsonKey(name: 'pets') List<int>? pets,@JsonKey(name: 'pets_attitude') List<int>? petsAttitude
});




}
/// @nodoc
class __$SelectedUserPreferencesDataCopyWithImpl<$Res>
    implements _$SelectedUserPreferencesDataCopyWith<$Res> {
  __$SelectedUserPreferencesDataCopyWithImpl(this._self, this._then);

  final _SelectedUserPreferencesData _self;
  final $Res Function(_SelectedUserPreferencesData) _then;

/// Create a copy of SelectedUserPreferencesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? communication = freezed,Object? sleep = freezed,Object? employment = freezed,Object? badHabits = freezed,Object? guests = freezed,Object? noiseLevel = freezed,Object? cleaning = freezed,Object? pets = freezed,Object? petsAttitude = freezed,}) {
  return _then(_SelectedUserPreferencesData(
communication: freezed == communication ? _self._communication : communication // ignore: cast_nullable_to_non_nullable
as List<int>?,sleep: freezed == sleep ? _self._sleep : sleep // ignore: cast_nullable_to_non_nullable
as List<int>?,employment: freezed == employment ? _self._employment : employment // ignore: cast_nullable_to_non_nullable
as List<int>?,badHabits: freezed == badHabits ? _self._badHabits : badHabits // ignore: cast_nullable_to_non_nullable
as List<int>?,guests: freezed == guests ? _self._guests : guests // ignore: cast_nullable_to_non_nullable
as List<int>?,noiseLevel: freezed == noiseLevel ? _self._noiseLevel : noiseLevel // ignore: cast_nullable_to_non_nullable
as List<int>?,cleaning: freezed == cleaning ? _self._cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as List<int>?,pets: freezed == pets ? _self._pets : pets // ignore: cast_nullable_to_non_nullable
as List<int>?,petsAttitude: freezed == petsAttitude ? _self._petsAttitude : petsAttitude // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
