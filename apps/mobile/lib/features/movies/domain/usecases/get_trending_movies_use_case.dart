import 'package:mobile/features/movies/domain/entities/genre.dart';
import 'package:mobile/features/movies/domain/repositories/movie_repository.dart';

class GetMovieGenresUseCase {
  const GetMovieGenresUseCase(this._repository);

  final MovieRepository _repository;

  Future<List<Genre>> call() {
    return _repository.getGenres();
  }
}
