import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:roomate/presentation/routing/app_routing.dart';
import 'package:roomate/presentation/services/navigation_service.dart';

part 'navigation_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(Ref ref) {
  return AppRouter();
}

@riverpod
NavigationService navigationService(Ref ref) {
  return NavigationService(ref.watch(appRouterProvider));
}
