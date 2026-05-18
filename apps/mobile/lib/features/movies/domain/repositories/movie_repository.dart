import 'package:movie_watchlist/features/movies/domain/entities/genre.dart';
import 'package:movie_watchlist/features/movies/domain/entities/movie_filters.dart';
import 'package:movie_watchlist/features/movies/domain/entities/movie_page.dart';

abstract class MovieRepository {
  Future<MoviePage> searchMovies(
    String query,
    MovieFilters filters,
    int page,
  );

  Future<MoviePage> getTrendingMovies(int page);

  Future<List<Genre>> getGenres();
}
