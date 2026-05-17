// lib/shared/models/tv_episode.dart

class TvEpisode {
  final int id;
  final String name;
  final int episodeNumber;
  final int seasonNumber;

  TvEpisode({
    required this.id,
    required this.name,
    required this.episodeNumber,
    required this.seasonNumber,
  });
}
