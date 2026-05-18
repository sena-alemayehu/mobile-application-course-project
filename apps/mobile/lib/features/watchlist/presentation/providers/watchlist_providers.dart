// lib/features/watchlist/presentation/providers/watchlist_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:mobile/features/watchlist/data/services/watchlist_service.dart';

final watchlistServiceProvider = Provider<WatchlistService>((ref) {
  return WatchlistService();
});

final watchlistChangeNotifierProvider = StateProvider<int>((ref) => 0);

/// Returns the current watchlist items.
final watchlistProvider = Provider<List<dynamic>>((ref) {
  // Watch the change notifier to trigger rebuilds
  ref.watch(watchlistChangeNotifierProvider);
  final service = ref.watch(watchlistServiceProvider);
  return service.getWatchlist();
});
