import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:roomate/constants/constants.dart';
import 'package:roomate/theme/theme_x/app_palette.dart';
import 'package:roomate/theme/theme_x/app_typography.dart';

import 'package:roomate/routing/app_routing.dart';

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
  Future<void> replaceAll(List<PageRouteInfo> routes) =>
      router.replaceAll(routes);

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
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Wrap(children: [bottomSheet]),
      ),
    );
  }

  Future<T?> showAlertDialog<T>({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
  }) async {
    if (context == null) return null;
    return showDialog<T>(
      context: context!,
      barrierDismissible: barrierDismissible,
      builder: builder,
    );
  }

  void showSnackBar({required String message, int durationInSeconds = 3}) {
    if (context != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final currentContext = context!;
        final colors = Theme.of(currentContext).extension<AppPalette>()!;
        final typography = Theme.of(currentContext).extension<AppTypography>()!;
        final bottomInset = MediaQuery.of(currentContext).padding.bottom;
        final messenger = ScaffoldMessenger.of(currentContext);

        messenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.zero,
              dismissDirection: DismissDirection.up,
              margin: EdgeInsets.fromLTRB(S.p16, 0, S.p16, bottomInset + S.p16),
              duration: Duration(seconds: durationInSeconds),
              content: _SnackBarContent(
                message: message,
                colors: colors,
                typography: typography,
              ),
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

class _SnackBarContent extends StatelessWidget {
  const _SnackBarContent({
    required this.message,
    required this.colors,
    required this.typography,
  });

  final String message;
  final AppPalette colors;
  final AppTypography typography;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.graysWhite,
        borderRadius: BorderRadius.circular(S.p20),
        boxShadow: [colors.shadow],
        border: Border.all(color: colors.opacityOrange20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: S.p14, vertical: S.p14),
        child: Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: colors.opacityOrange20,
                shape: BoxShape.circle,
              ),
              child: SizedBox.square(
                dimension: S.p32,
                child: Icon(
                  Icons.info_outline_rounded,
                  color: colors.orange,
                  size: S.p18,
                ),
              ),
            ),
            const SizedBox(width: S.p12),
            Expanded(
              child: Text(
                message,
                style: typography.bodyDescription.copyWith(
                  color: colors.graysBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
