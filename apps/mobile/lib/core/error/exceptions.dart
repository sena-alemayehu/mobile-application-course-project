class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

/// Simple cache exception.
class CacheException implements Exception {
  final String message;
  CacheException(this.message);
}
