import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';

dynamic exceptionHandler(Exception exception) {
  if (exception is SocketException) {
    Get.rawSnackbar(message: exception.message);
  } else if (exception is TimeoutException) {
    Get.rawSnackbar(message: exception.message);
  } else if (exception is GetHttpException) {
    Get.rawSnackbar(message: exception.message);
  }
}

Response? errorHandler(Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
      return response;
    case 404:
      Get.rawSnackbar(message: 'Resource not found');
    case 500:
      Get.rawSnackbar(message: 'Internal server error');
    default:
      Get.rawSnackbar(message: 'Unexpected error');
  }
  return null;
}
