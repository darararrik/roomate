import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roomate/state/user/user_state.dart';

part 'user_notifier.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  UserState build() {
    return UserState();
  }
}
