// lib/l10n/app_localizations.dart

import 'package:flutter/material.dart';

abstract class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return _EnglishLocalizations();
  }

  String get appTitle;
  String get home;
  String get watchlist;
  String get watched;
}

class _EnglishLocalizations extends AppLocalizations {
  @override
  String get appTitle => 'Movie Watchlist';
  @override
  String get home => 'Home';
  @override
  String get watchlist => 'Watchlist';
  @override
  String get watched => 'Watched';
}
