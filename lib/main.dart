import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/core/themes/dark_theme.dart';
import 'package:getx/core/themes/light_theme.dart';
import 'package:getx/core/utils/bindings/main_bindings.dart';

import 'routes/routes.dart';
import 'app/data/services/settings_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initServices();
  runApp(const MyApp());
}

Future initServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      initialRoute: "/login",
      initialBinding: MainBindings(),
      getPages: getPages,
    );
  }
}
