import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx/app/data/services/api/api_call_status.dart';
import 'package:getx/app/data/services/api/api_service.dart';
import 'package:getx/core/constances/end_points.dart';
import 'package:getx/core/extentions/vars.dart';

import '../data/services/api/constance.dart';

class NewsController extends GetxController {
  final _apiService = Get.find<ApiService>();
  ApiCallStatus get getDataStatus => _getDataStatus;

  ApiCallStatus _getDataStatus = ApiCallStatus.holding;

  Future<void> getEverything() async {
    _getDataStatus = ApiCallStatus.loading;
    update();
    final response = await _apiService.getData(
      endPoint: "$EVERY_THING?apiKey=$API_KEY",
    );
    if (response.isNotNull()) {
      _getDataStatus = ApiCallStatus.success;
      update();
      debugPrint("news data: ${response!.body}");
    } else {
      _getDataStatus = ApiCallStatus.error;
      update();
    }
  }

  @override
  void onInit() async {
    await getEverything();
    super.onInit();
  }
}
