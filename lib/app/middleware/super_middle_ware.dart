import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SuperMiddleWare extends GetMiddleware {
  final getStorage = Get.find<GetStorage>();

  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (getStorage.read("user-login") == false) {
      return const RouteSettings(name: "/login");
    } else {
      return const RouteSettings(name: "/");
    }
  }
}
