import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/app/controllers/one_controller.dart';
import 'package:getx/app/data/services/api/api_service.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    print("put objects loading");
    Get.put(() => OneController());
    Get.put(() => ApiService());
    Get.put(() => GetStorage());
    print("put objects successfully");
  }
}
