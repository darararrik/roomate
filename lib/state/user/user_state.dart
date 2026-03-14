import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roomate/domain/models/user_model.dart';
part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  factory UserState({@Default(User()) User user}) = _UserState;
}
