import 'package:firebase_auth/firebase_auth.dart';
import 'package:flufire_sample_001/src/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈화면'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: Center(
        child: Text("${LoginController.to.firebaseUser.value!.email}님 환영합니다."),
      ),
    );
  }
}
