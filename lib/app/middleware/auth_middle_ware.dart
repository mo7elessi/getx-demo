import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthMiddleWare extends GetMiddleware {
  final getStorage = Get.find<GetStorage>();
  @override
  int? get priority => 2;
  @override
  RouteSettings? redirect(String? route) {
    if (getStorage.read("role") == "user") {
      return const RouteSettings(name: "/");
    } else if (getStorage.read("role") == "admin") {
      return const RouteSettings(name: "/admin");
    }
    return super.redirect(route);
  }
}
