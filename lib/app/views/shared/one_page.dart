import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/controllers/one_controller.dart';

class OnePage extends StatelessWidget {
  // عند استخدامك طريقة الحقن لا يوجد داعي لعمل انيشيل للكونترولر
  // permanent to save data when close page
  // final OneController oneController = Get.put(OneController(), permanent: true);
  // يتم انشاؤه وقت الحاجة
  // final  oneController = Get.lazyPut(() => OneController(),fenix: true);
  final oneController = Get.find();
  OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      /**
       * GetBuilder: is faster than GetX and has more performance,
       * but not reactive with the application.
       * GetX: dependent on streams, not need update() to rebuild widget
       */
      body: Column(
        children: [
          GetBuilder<OneController>(
            // init: OneController(),
            builder: (OneController controller) {
              return Column(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Text("${controller.counter}"),
                  IconButton(
                    onPressed: () {
                      controller.dencrement();
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              );
            },
          ),
          GetX<OneController>(
            // init: OneController(),
            builder: (OneController controller) {
              return Column(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Text("${controller.counter}"),
                  IconButton(
                    onPressed: () {
                      controller.dencrement();
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              );
            },
          ),
          Obx(() {
            return Column(
              children: [
                IconButton(
                  onPressed: () {
                    oneController.increment();
                  },
                  icon: const Icon(Icons.add),
                ),
                Text("${oneController.counter}"),
                IconButton(
                  onPressed: () {
                    oneController.dencrement();
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            );
          }),
          IconButton(
            onPressed: () {
              if (Get.isDarkMode) {
                Get.changeTheme(ThemeData.light());
              } else {
                Get.changeTheme(ThemeData.dark());
              }
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
