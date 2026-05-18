import 'package:movie_watchlist/features/movies/domain/entities/movie_page.dart';
import 'package:movie_watchlist/features/movies/domain/repositories/movie_repository.dart';

class GetTrendingMoviesUseCase {
  const GetTrendingMoviesUseCase(this._repository);

  final MovieRepository _repository;

  Future<MoviePage> call(int page) {
    return _repository.getTrendingMovies(page);
  }
}
