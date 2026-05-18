class FirestoreService {
  final List<Map<String, dynamic>> _mockWatchlist = [
    {'movieId': '1', 'title': 'Inception', 'addedAt': '2024-01-01'},
    {'movieId': '2', 'title': 'The Dark Knight', 'addedAt': '2024-01-02'},
  ];

  List<Map<String, dynamic>> getWatchlist() {
    return _mockWatchlist;
  }

  Future<void> addToWatchlist(int movieId, Map<String, dynamic> data) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _mockWatchlist.add({'movieId': movieId.toString(), ...data});
  }

  Future<void> removeFromWatchlist(int movieId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _mockWatchlist.removeWhere((item) => item['movieId'] == movieId.toString());
  }
}
