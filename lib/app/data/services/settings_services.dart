import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsServices extends GetxService {
  Future<SettingsServices> init() async {
    await GetStorage.init();
    return this;
  }
}
