import 'package:get/get.dart';

class OneController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    /**
     * update() like changeNotifire in provider or setState in StatefulWidget
     * used with GetBuilderWidget
     */
    // update();
  }

  void dencrement() {
    counter--;
    // update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
