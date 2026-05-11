import 'package:signals_flutter/signals_flutter.dart';

// Signal untuk status login
final statusLoginSignal = signal<bool>(true, autoDispose: true);

// Signal untuk mengecek apakah user baru (onboarding)
final isFirstTimeSignal = signal<bool>(true, autoDispose: true);

// Signal untuk maintenance mode
final isMaintenanceSignal = signal<bool>(false, autoDispose: true);
