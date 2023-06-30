import 'package:get/get.dart';
import 'package:getx/app/middleware/auth_middle_ware.dart';
import 'package:getx/app/middleware/super_middle_ware.dart';

import '../app/views/shared/one_page.dart';
import '../app/views/shared/three_page.dart';
import '../app/views/shared/two_page.dart';
import '../app/views/user/auth/login_page.dart';
import '../app/views/user/home/home_page.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: "/", page: () => const HomePage()),
  GetPage(
    name: "/login",
    page: () => LoginPage(),
    middlewares: [
      AuthMiddleWare(),
      SuperMiddleWare(),
    ],
  ),
  GetPage(name: "/one_page", page: () => OnePage()),
  GetPage(name: "/two_page", page: () => TwoPage()),
  GetPage(name: "/three_page", page: () => const ThreePage()),
];
