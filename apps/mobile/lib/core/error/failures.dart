abstract class Failure {
  final String message;
  const Failure(this.message);
}

/// Server failure.
class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

/// Cache failure.
class CacheFailure extends Failure {
  const CacheFailure(super.message);
}
