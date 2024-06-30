import 'package:flufire_sample_001/src/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Stack(
        children: [
          Center(
            child: Obx(
              () {
                if (loginController.isLoading.value) {
                  return const CircularProgressIndicator();
                } else {
                  return ElevatedButton(
                    onPressed: () {
                      loginController.loginWithGoogle();
                    },
                    child: const Text('구글 로그인'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
