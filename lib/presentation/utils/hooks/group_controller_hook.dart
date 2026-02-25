import 'package:flutter/widgets.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';

GroupButtonController useGroupButtonController({
  List<int> initialIndexes = const [],
}) {
  return use(_GroupButtonControllerHook(initialIndexes));
}

class _GroupButtonControllerHook extends Hook<GroupButtonController> {
  const _GroupButtonControllerHook(this.initialIndexes);
  final List<int> initialIndexes;

  @override
  _GroupButtonControllerHookState createState() =>
      _GroupButtonControllerHookState();
}

class _GroupButtonControllerHookState
    extends HookState<GroupButtonController, _GroupButtonControllerHook> {
  late final GroupButtonController _controller;

  @override
  void initHook() {
    super.initHook();
    _controller = GroupButtonController(selectedIndexes: hook.initialIndexes);
  }

  @override
  GroupButtonController build(BuildContext context) => _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
