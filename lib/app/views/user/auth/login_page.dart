import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final getStorage = Get.find<GetStorage>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            Future.wait([
              getStorage.write("role", "user"),
              getStorage.write("user-login", true),
            ]);

            await Get.offNamed("/");
          },
          child: const Text("login"),
        ),
      ),
    );
  }
}
