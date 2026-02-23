import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:group_button/group_button.dart';

/// Создает и управляет жизненным циклом [GroupButtonController].
/// Автоматически вызывает dispose() при удалении виджета.
GroupButtonController useGroupButtonController() {
  return use(const _GroupButtonControllerHook());
}

class _GroupButtonControllerHook extends Hook<GroupButtonController> {
  const _GroupButtonControllerHook();

  @override
  _GroupButtonControllerHookState createState() =>
      _GroupButtonControllerHookState();
}

class _GroupButtonControllerHookState
    extends HookState<GroupButtonController, _GroupButtonControllerHook> {
  late final GroupButtonController _controller;

  @override
  GroupButtonController build(BuildContext context) => _controller;

  @override
  void initHook() {
    super.initHook();
    _controller = GroupButtonController(selectedIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
