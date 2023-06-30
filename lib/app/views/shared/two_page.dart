import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/controllers/one_controller.dart';

class TwoPage extends StatelessWidget {
  final OneController oneController = Get.find();
  TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //التغيير  يكون على كل الويجت
        children: [
          GetBuilder<OneController>(
            // init: OneController(),
            builder: (controller) {
              return Container();
            },
          ),
          GetBuilder<OneController>(
            builder: (controller) {
              return Container();
            },
          ),
          GetBuilder<OneController>(
            builder: (controller) {
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
