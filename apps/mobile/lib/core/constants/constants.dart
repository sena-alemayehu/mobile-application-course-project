class Constants {
  static const String appName = 'Movie Watchlist';
  static const String appVersion = '1.0.0';

  // Pagination
  static const int defaultPageSize = 20;

  // Cache durations
  static const Duration cacheExpiration = Duration(hours: 24);

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
}
