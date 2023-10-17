import 'package:dating/controller/auth_controller.dart';
import 'package:dating/screen/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: '사용자 이름'),
              onChanged: (value) {
                authController.user.update((user) {
                  user!.username = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: '비밀번호'),
              onChanged: (value) {
                authController.user.update((user) {
                  user!.password = value;
                });
              },
              obscureText: true,
            ),
            Obx(() {
              return ElevatedButton(
                onPressed: authController.isLoading.value
                    ? null
                    : () async {
                        await authController.login();
                      },
                child: authController.isLoading.value
                    ? const CircularProgressIndicator()
                    : const Text('로그인'),
              );
            }),
            TextButton(
              onPressed: () {
                // 회원가입 페이지로 이동
                Get.to(SignUpPage());
              },
              child: const Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}