import 'package:firebase_core/firebase_core.dart';
import 'package:flufire_sample_001/firebase_options.dart';
import 'package:flufire_sample_001/src/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      theme: ThemeData.light(),
      home: const App(),
    ),
  );
}
