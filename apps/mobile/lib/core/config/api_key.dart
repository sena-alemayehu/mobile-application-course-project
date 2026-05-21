class ApiKey {
  static const String tmdbApiKey = 'YOUR_TMDB_API_KEY_HERE';
  static const String tmdbBaseUrl = 'https://api.themoviedb.org/3';
  static const String tmdbImageBaseUrl = 'https://image.tmdb.org/t/p/w500';

  static Map<String, String> get tmdbHeaders => {
    'Authorization': 'Bearer $tmdbApiKey',
    'Content-Type': 'application/json',
  };
}
