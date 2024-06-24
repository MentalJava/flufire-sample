import 'package:firebase_auth/firebase_auth.dart';
import 'package:flufire_sample_001/src/pages/home.dart';
import 'package:flufire_sample_001/src/pages/login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (_, AsyncSnapshot<User?> user) {
        if (user.hasData) {
          return const Home();
        } else {
          return Login();
        }
      },
    );
  }
}
