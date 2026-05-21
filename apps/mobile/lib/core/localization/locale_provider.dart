import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Locale provider for language switching.
final localeProvider = StateProvider<Locale>((ref) {
  return const Locale('en'); // Default to English
});

/// Available locales.
class AppLocales {
  static const Locale english = Locale('en');
  static const Locale amharic = Locale('am');

  static const List<Locale> supported = [english, amharic];
}
