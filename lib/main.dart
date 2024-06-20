import 'package:firebase_core/firebase_core.dart';
import 'package:flufire_sample_001/firebase_options.dart';
import 'package:flufire_sample_001/src/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: const App(),
    ),
  );
}
