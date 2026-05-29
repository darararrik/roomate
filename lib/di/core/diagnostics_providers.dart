import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'diagnostics_providers.g.dart';

// Diagnostics providers:
// Keep loggers, analytics, crash reporting, debug tools, and developer-only
// helpers here.

@Riverpod(keepAlive: true)
Talker talker(Ref ref) => TalkerFlutter.init(settings: TalkerSettings(useHistory: true, maxHistoryItems: 2000));
