// lib/main.dart
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Movie Watchlist',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
=======
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieScreen(), //
>>>>>>> f236539c51e034541c3606303ea481e2b45b04ba
    );
  }
}
