// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_group_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutGroupState {

 GroupDetailModel get group; int get page; bool get isFavorite; String get applicationStatus; bool get isApplying;
/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutGroupStateCopyWith<AboutGroupState> get copyWith => _$AboutGroupStateCopyWithImpl<AboutGroupState>(this as AboutGroupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutGroupState&&(identical(other.group, group) || other.group == group)&&(identical(other.page, page) || other.page == page)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.isApplying, isApplying) || other.isApplying == isApplying));
}


@override
int get hashCode => Object.hash(runtimeType,group,page,isFavorite,applicationStatus,isApplying);

@override
String toString() {
  return 'AboutGroupState(group: $group, page: $page, isFavorite: $isFavorite, applicationStatus: $applicationStatus, isApplying: $isApplying)';
}


}

/// @nodoc
abstract mixin class $AboutGroupStateCopyWith<$Res>  {
  factory $AboutGroupStateCopyWith(AboutGroupState value, $Res Function(AboutGroupState) _then) = _$AboutGroupStateCopyWithImpl;
@useResult
$Res call({
 GroupDetailModel group, int page, bool isFavorite, String applicationStatus, bool isApplying
});


$GroupDetailModelCopyWith<$Res> get group;

}
/// @nodoc
class _$AboutGroupStateCopyWithImpl<$Res>
    implements $AboutGroupStateCopyWith<$Res> {
  _$AboutGroupStateCopyWithImpl(this._self, this._then);

  final AboutGroupState _self;
  final $Res Function(AboutGroupState) _then;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? group = null,Object? page = null,Object? isFavorite = null,Object? applicationStatus = null,Object? isApplying = null,}) {
  return _then(_self.copyWith(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupDetailModel,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,isApplying: null == isApplying ? _self.isApplying : isApplying // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailModelCopyWith<$Res> get group {
  
  return $GroupDetailModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}


/// Adds pattern-matching-related methods to [AboutGroupState].
extension AboutGroupStatePatterns on AboutGroupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutGroupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutGroupState value)  $default,){
final _that = this;
switch (_that) {
case _AboutGroupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutGroupState value)?  $default,){
final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GroupDetailModel group,  int page,  bool isFavorite,  String applicationStatus,  bool isApplying)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
return $default(_that.group,_that.page,_that.isFavorite,_that.applicationStatus,_that.isApplying);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GroupDetailModel group,  int page,  bool isFavorite,  String applicationStatus,  bool isApplying)  $default,) {final _that = this;
switch (_that) {
case _AboutGroupState():
return $default(_that.group,_that.page,_that.isFavorite,_that.applicationStatus,_that.isApplying);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GroupDetailModel group,  int page,  bool isFavorite,  String applicationStatus,  bool isApplying)?  $default,) {final _that = this;
switch (_that) {
case _AboutGroupState() when $default != null:
return $default(_that.group,_that.page,_that.isFavorite,_that.applicationStatus,_that.isApplying);case _:
  return null;

}
}

}

/// @nodoc


class _AboutGroupState implements AboutGroupState {
  const _AboutGroupState({required this.group, this.page = 0, this.isFavorite = false, this.applicationStatus = '', this.isApplying = false});
  

@override final  GroupDetailModel group;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  String applicationStatus;
@override@JsonKey() final  bool isApplying;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutGroupStateCopyWith<_AboutGroupState> get copyWith => __$AboutGroupStateCopyWithImpl<_AboutGroupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutGroupState&&(identical(other.group, group) || other.group == group)&&(identical(other.page, page) || other.page == page)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.isApplying, isApplying) || other.isApplying == isApplying));
}


@override
int get hashCode => Object.hash(runtimeType,group,page,isFavorite,applicationStatus,isApplying);

@override
String toString() {
  return 'AboutGroupState(group: $group, page: $page, isFavorite: $isFavorite, applicationStatus: $applicationStatus, isApplying: $isApplying)';
}


}

/// @nodoc
abstract mixin class _$AboutGroupStateCopyWith<$Res> implements $AboutGroupStateCopyWith<$Res> {
  factory _$AboutGroupStateCopyWith(_AboutGroupState value, $Res Function(_AboutGroupState) _then) = __$AboutGroupStateCopyWithImpl;
@override @useResult
$Res call({
 GroupDetailModel group, int page, bool isFavorite, String applicationStatus, bool isApplying
});


@override $GroupDetailModelCopyWith<$Res> get group;

}
/// @nodoc
class __$AboutGroupStateCopyWithImpl<$Res>
    implements _$AboutGroupStateCopyWith<$Res> {
  __$AboutGroupStateCopyWithImpl(this._self, this._then);

  final _AboutGroupState _self;
  final $Res Function(_AboutGroupState) _then;

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? group = null,Object? page = null,Object? isFavorite = null,Object? applicationStatus = null,Object? isApplying = null,}) {
  return _then(_AboutGroupState(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as GroupDetailModel,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,applicationStatus: null == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String,isApplying: null == isApplying ? _self.isApplying : isApplying // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AboutGroupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupDetailModelCopyWith<$Res> get group {
  
  return $GroupDetailModelCopyWith<$Res>(_self.group, (value) {
    return _then(_self.copyWith(group: value));
  });
}
}

// dart format on
