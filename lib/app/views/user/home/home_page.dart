import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/one_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text("One"),
            onPressed: () {
              // Navigate to a new screen:
              Get.to(OnePage());
              // or Get.to(()=>const OnePage());
              //Get.toNamed("/one_page");
            },
          ),
          ElevatedButton(
            child: const Text("Two"),
            onPressed: () {
              /**
               * To go to the next screen
               * and no option to go back to the previous screen
               * (for use in SplashScreens, login screens, etc.)
               */
              // Get.off(TwoPage());
              // Get.offNamed("/two_page");
            },
          ),
          ElevatedButton(
            child: const Text("Three"),
            onPressed: () {
              /**
               * To go to the next screen and cancel all previous routes
               * (useful in shopping carts, polls, and tests)
               */
              // Get.offAll(const ThreePage());
            },
          ),
          ElevatedButton(
            child: const Text("Open Dialog"),
            onPressed: () {
              Get.defaultDialog(
                onCancel: () => Get.back(),
              );
            },
          ),
        ],
      ),
    );
  }
}
