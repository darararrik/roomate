import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:roomate/presentation/routing/app_routing.dart';

class NavigationService {
  NavigationService(this.router);
  final AppRouter router;
  final FToast _fToast = FToast();

  BuildContext? get context => router.navigatorKey.currentContext;

  void _ensureToastInit() {
    if (context != null) {
      _fToast.init(context!);
    }
  }

  // --- Typed Navigation ---

  /// Универсальный push для любых сгенерированных роутов
  Future<void> push(PageRouteInfo route) => router.push(route);

  /// Универсальный replace
  Future<void> replace(PageRouteInfo route) => router.replace(route);

  /// Очистка стека и переход на новые роуты
  Future<void> replaceAll(List<PageRouteInfo> routes) => router.replaceAll(routes);

  /// Универсальный navigate (используется для TabBar или возврата в стек)
  Future<void> navigate(PageRouteInfo route) => router.navigate(route);

  bool canPop() => router.canPop();

  Future<bool> pop<T>([T? result]) => router.maybePop(result);

  void popMultiple({int indexPop = 1}) {
    int popped = 0;
    while (popped < indexPop && router.canPop()) {
      router.pop();
      popped++;
    }
  }

  // --- UI Helpers ---

  Future<void> showBottomSheet(
    Widget bottomSheet, {
    BuildContext? rootContext,
    bool isScrollControlled = true,
  }) async {
    final effectiveContext = rootContext ?? context;
    if (effectiveContext == null) return;

    await showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      context: effectiveContext,
      builder: (context) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Wrap(children: [bottomSheet]),
      ),
    );
  }

  Future<void> showAlertDialog({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
  }) async {
    if (context == null) return;
    await showDialog(context: context!, barrierDismissible: barrierDismissible, builder: builder);
  }

  void showSnackBar({required String message, int durationInSeconds = 3}) {
    if (context != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context!).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: Duration(seconds: durationInSeconds),
          ),
        );
      });
    }
  }

  void showCustomToast(Widget child) {
    _ensureToastInit();
    if (context == null) return;

    _fToast.removeCustomToast();
    _fToast.showToast(
      child: child,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 2),
    );
  }
}
