import 'package:flutter/material.dart';

class WatchlistButton extends StatefulWidget {
  final int movieId;
  const WatchlistButton({super.key, required this.movieId});

  @override
  State<WatchlistButton> createState() => _WatchlistButtonState();
}

class _WatchlistButtonState extends State<WatchlistButton> {
  bool _isInWatchlist = false;

  void _toggleWatchlist() {
    setState(() => _isInWatchlist = !_isInWatchlist);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isInWatchlist ? 'Added to watchlist' : 'Removed from watchlist',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isInWatchlist ? Icons.bookmark : Icons.bookmark_border,
        color: _isInWatchlist ? Colors.red : Colors.white,
      ),
      onPressed: _toggleWatchlist,
    );
  }
}
