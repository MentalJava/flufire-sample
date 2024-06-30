import 'package:flufire_sample_001/src/controllers/login_controller.dart';
import 'package:flufire_sample_001/src/pages/home.dart';
import 'package:flufire_sample_001/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (LoginController.to.firebaseUser.value != null) {
        return Home();
      } else {
        return Login();
      }
    });
  }
}
