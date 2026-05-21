// lib/features/watched/presentation/providers/watched_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:mobile/features/watched/data/services/watched_service.dart';

final watchedServiceProvider = Provider<WatchedService>((ref) {
  return WatchedService();
});

final watchedChangeNotifierProvider = StateProvider<int>((ref) => 0);

/// Returns the current watched items.
final watchedProvider = Provider<List<dynamic>>((ref) {
  // Watch the change notifier to trigger rebuilds
  ref.watch(watchedChangeNotifierProvider);
  final service = ref.watch(watchedServiceProvider);
  return service.getWatched();
});
