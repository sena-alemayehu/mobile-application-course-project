

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/core/theme/app_theme.dart';
import 'package:mobile/app/router/app_router.dart';
import 'package:mobile/firebase_options.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Watchlist',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Watchlist')),
      body: const Center(
        child: Text(
          'Welcome to Movie Watchlist!',
          style: TextStyle(fontSize: 24),
        ),
      ),
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Movie Watchlist',
      theme: AppTheme.darkTheme,
      routerConfig: router,
main
    );
  }
}
