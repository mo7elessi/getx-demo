import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/controllers/one_controller.dart';
import 'package:getx/app/data/services/settings_services.dart';

class ThreePage extends GetView<SettingsServices> {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //التغيير فقط يكون على الويجت الي بتستخدم قيمة صار عليها تغيير
          GetX<OneController>(
            init: OneController(),
            builder: (controller) {
              return Container();
            },
          ),
          GetX<OneController>(
            builder: (controller) {
              return Container();
            },
          ),
          GetX<OneController>(
            builder: (controller) {
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
