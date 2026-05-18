import 'package:flutter/material.dart';
import 'package:mobile/features/auth/presentation/screens/login_screen.dart';

class RootAuthWrapper extends StatelessWidget {
  final bool isLoggedIn;

  const RootAuthWrapper({super.key, this.isLoggedIn = false});

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Home Screen (Coming Soon)',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );
    }

    return const LoginScreen();
  }
}
